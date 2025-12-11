import 'package:ekofy_mobile/core/configs/theme/app_colors.dart';
import 'package:ekofy_mobile/core/utils/helper.dart';
import 'package:ekofy_mobile/core/widgets/button/custom_button.dart';
import 'package:ekofy_mobile/gql/mutation/generated/artist_package_mutation.graphql.dart';
import 'package:ekofy_mobile/gql/queries/generated/artist_query.graphql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class ArtistPackageDetail extends ConsumerStatefulWidget {
  final String packageId;

  const ArtistPackageDetail({super.key, required this.packageId});

  @override
  ConsumerState<ArtistPackageDetail> createState() =>
      _ArtistPackageDetailState();
}

class _ArtistPackageDetailState extends ConsumerState<ArtistPackageDetail> {
  final TextEditingController _requirementsController = TextEditingController();

  @override
  void dispose() {
    _requirementsController.dispose();
    super.dispose();
  }

  void _showRequestForm(
    BuildContext context,
    String artistId,
    RunMutation$Mutation$SendRequest runMutation,
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppColors.secondaryBackground,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          left: 16,
          right: 16,
          top: 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Requirements',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _requirementsController,
              maxLines: 4,
              style: const TextStyle(color: Colors.white, fontSize: 12),
              decoration: InputDecoration(
                hintText:
                    'Enter your requirements for artist before sending request...',
                hintStyle: TextStyle(color: Colors.grey[600]),
                filled: true,
                fillColor: AppColors.primaryBackground,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 24),
            CustomButton(
              title: 'Send',
              height: 40,
              onPressed: () {
                if (_requirementsController.text.trim().isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Please enter requirements')),
                  );
                  return;
                }

                runMutation(
                  Variables$Mutation$SendRequest(
                    artistId: artistId,
                    packageId: widget.packageId,
                    requirements: _requirementsController.text.trim(),
                    isDirectRequest: true,
                  ),
                );
                Navigator.pop(context);
              },
              gradientColors: [AppColors.deepBlue, AppColors.violet],
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      appBar: AppBar(
        backgroundColor: AppColors.primaryBackground,
        title: const Text(
          'Package Details',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Query$ArtistPackageDetails$Widget(
        options: Options$Query$ArtistPackageDetails(
          variables: Variables$Query$ArtistPackageDetails(id: widget.packageId),
        ),
        builder: (result, {fetchMore, refetch}) {
          if (result.isLoading) {
            return const Center(
              child: CircularProgressIndicator(color: AppColors.violet),
            );
          }

          if (result.hasException) {
            return Center(
              child: Text(
                'Error: ${result.exception.toString()}',
                style: const TextStyle(color: Colors.white),
              ),
            );
          }

          final packages = result.parsedData?.artistPackages?.items;
          if (packages == null || packages.isEmpty) {
            return const Center(
              child: Text(
                'Package not found',
                style: TextStyle(color: Colors.white),
              ),
            );
          }

          final package = packages.first;

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  package.packageName,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    // ignore: deprecated_member_use
                    color: AppColors.violet.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    '${Helper.convertCurrencyCodeToSymbol(package.currency)} ${Helper.formatCurrency(package.amount)}',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: AppColors.violet,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  'Description',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  package.description ?? 'No description available',
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(color: Colors.grey[400]),
                ),
                const SizedBox(height: 24),
                if (package.serviceDetails.isNotEmpty) ...[
                  Text(
                    'Details',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  ...package.serviceDetails.map(
                    (detail) => Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.check_circle_outline,
                            color: AppColors.violet,
                            size: 20,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '${detail.key}: ${detail.value}',
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(color: Colors.grey[300]),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
                Row(
                  children: [
                    _buildInfoChip(
                      context,
                      Icons.timer,
                      '${package.estimateDeliveryDays} Days Delivery',
                    ),
                    const SizedBox(width: 12),
                    _buildInfoChip(
                      context,
                      Icons.refresh,
                      '${package.maxRevision} Revisions',
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Mutation$SendRequest$Widget(
                  options: WidgetOptions$Mutation$SendRequest(
                    onCompleted: (data, data2) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Request sent successfully!'),
                          backgroundColor: Colors.green,
                        ),
                      );
                    },
                    onError: (error) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Failed to send request: ${error?.graphqlErrors.firstOrNull?.message ?? error.toString()}',
                          ),
                          backgroundColor: AppColors.error,
                        ),
                      );
                    },
                  ),
                  builder: (runMutation, result) {
                    return CustomButton(
                      title: result?.isLoading == true
                          ? 'Sending...'
                          : 'Send Request',
                      height: 40,
                      onPressed: () {
                        if (result?.isLoading == true) return;
                        _showRequestForm(
                          context,
                          package.artistId,
                          runMutation,
                        );
                      },

                      gradientColors: [AppColors.deepBlue, AppColors.violet],
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildInfoChip(BuildContext context, IconData icon, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.secondaryBackground,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey[800]!),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: Colors.grey[400]),
          const SizedBox(width: 6),
          Text(
            label,
            style: Theme.of(
              context,
            ).textTheme.bodySmall?.copyWith(color: Colors.grey[300]),
          ),
        ],
      ),
    );
  }
}
