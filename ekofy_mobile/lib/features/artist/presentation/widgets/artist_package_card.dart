import 'package:ekofy_mobile/core/utils/helper.dart';
import 'package:ekofy_mobile/core/widgets/button/custom_button.dart';
import 'package:ekofy_mobile/features/artist/presentation/widgets/artist_package_detail.dart';
import 'package:flutter/material.dart';
import 'package:ekofy_mobile/gql/queries/generated/artist_query.graphql.dart';
import 'package:ekofy_mobile/core/configs/theme/app_colors.dart';

class ArtistPackageCard extends StatelessWidget {
  final Query$ArtistPackages$artistPackages$items package;

  const ArtistPackageCard({super.key, required this.package});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.secondaryBackground,
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    package.packageName ?? 'Unnamed Package',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    // ignore: deprecated_member_use
                    color: AppColors.violet.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    '${Helper.convertCurrencyCodeToSymbol(package.currency)} ${Helper.formatCurrency(package.amount)} ',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: AppColors.violet,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            if (package.description != null &&
                package.description!.isNotEmpty) ...[
              const SizedBox(height: 8),
              Text(
                Helper.getLimitedDescription(package.description!, 30),
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: AppColors.grey),
              ),
            ],
            const SizedBox(height: 12),
            CustomButton(
              title: 'View Detail',
              height: 40,
              onPressed: () {
                if (package.id != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ArtistPackageDetail(packageId: package.id!),
                    ),
                  );
                }
              },
              gradientColors: [AppColors.deepBlue, AppColors.violet],
            ),
          ],
        ),
      ),
    );
  }
}
