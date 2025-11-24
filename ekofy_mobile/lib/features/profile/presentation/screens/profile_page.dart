import 'dart:developer';
import 'package:ekofy_mobile/core/utils/helper.dart';
import 'package:ekofy_mobile/gql/generated/schema.graphql.dart'
    show Enum$UserGender;
import 'package:ekofy_mobile/gql/queries/generated/profile_query.graphql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../widgets/profile_header_widget.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  Query$listenersProfileQuery$listeners$items? _profile;
  bool _loading = true;
  bool _hasFetched = false;

  final _nameCtrl = TextEditingController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_hasFetched) {
      _fetchProfile();
      _hasFetched = true;
    }
  }

  Future<void> _fetchProfile() async {
    final client = GraphQLProvider.of(context).value;
    Map<String, dynamic>? payload = await Helper.decodeJwtUnverified(ref);

    final options = Options$Query$listenersProfileQuery(
      variables: Variables$Query$listenersProfileQuery(
        userId: payload!['userId'],
      ),
    );

    final result = await client.query(options);

    if (result.hasException) {
      log(result.exception.toString());
      setState(() => _loading = false);
      return;
    }

    final data = result.parsedData?.listeners?.items?.first;
    if (data != null) {
      setState(() {
        _profile = data;
        _nameCtrl.text = _profile?.displayName ?? '';
        _loading = false;
      });
    } else {
      setState(() => _loading = false);
    }
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    super.dispose();
  }

  Future<void> _showImageSourceSheet(String title) async {
    if (!mounted) return;
    await showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF15151B),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (_) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.image, color: Colors.white70),
              title: Text(title, style: const TextStyle(color: Colors.white)),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.close, color: Colors.white70),
              title: const Text(
                'Cancel',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }

  String _formatDate(DateTime? date) {
    if (date == null) return '-';
    return '${date.day.toString().padLeft(2, '0')}-${date.month.toString().padLeft(2, '0')}-${date.year}';
  }

  String _formatGender(Enum$UserGender? gender) {
    if (gender == null) return '-';
    switch (gender) {
      case Enum$UserGender.MALE:
        return 'Male';
      case Enum$UserGender.FEMALE:
        return 'Female';
      case Enum$UserGender.OTHER:
        return 'Other';
      default:
        return '-';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0B0E),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : _profile == null
          ? const Center(
              child: Text(
                'Failed to load profile',
                style: TextStyle(color: Colors.white),
              ),
            )
          : CustomScrollView(
              slivers: [
                ProfileHeaderWidget(
                  isVerified: _profile?.isVerified ?? false,
                  bannerImage: _profile?.bannerImage,
                  avatarImage: _profile?.avatarImage,
                  displayName: _profile?.displayName ?? '-',
                  userId: _profile?.userId ?? '-',
                  onEditBanner: () =>
                      _showImageSourceSheet('Select banner image'),
                  onEditAvatar: () =>
                      _showImageSourceSheet('Select avatar image'),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _personalDetailsCard(context),
                        const SizedBox(height: 16),
                        _accountDetailsCard(context),
                        const SizedBox(height: 16),
                        _accountActivitiesCard(context),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }

  Widget _personalDetailsCard(BuildContext context) {
    final user = _profile?.user.firstOrNull;
    return Card(
      color: const Color(0xFF15151B),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Information',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            _kvRow('Display name', _profile?.displayName ?? '-'),
            const SizedBox(height: 8),
            _kvRow('Email', user?.email ?? '-'),
            const SizedBox(height: 8),
            _kvRow('Phone number', user?.phoneNumber ?? '-'),
            const SizedBox(height: 8),
            _kvRow('Date of Birth', _formatDate(user?.birthDate)),
            const SizedBox(height: 8),
            _kvRow('Gender', _formatGender(user?.gender)),
          ],
        ),
      ),
    );
  }

  Widget _accountDetailsCard(BuildContext context) {
    return Card(
      color: const Color(0xFF15151B),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Account Details',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            _kvRow('Followers', _profile?.followerCount.toString() ?? '0'),
            const SizedBox(height: 8),
            _kvRow('Following', _profile?.followingCount.toString() ?? '0'),
          ],
        ),
      ),
    );
  }

  Widget _accountActivitiesCard(BuildContext context) {
    final user = _profile?.user.firstOrNull;
    return Card(
      color: const Color(0xFF15151B),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Activities',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            _kvRow('Join Date', _formatDate(user?.createdAt)),
            const SizedBox(height: 8),
            _kvRow('Last login at', _formatDate(user?.lastLoginAt)),
          ],
        ),
      ),
    );
  }

  Widget _kvRow(String k, String v) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 120,
          child: Text(k, style: const TextStyle(color: Colors.white70)),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            v,
            style: const TextStyle(color: Colors.white),
            softWrap: true,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}

extension FirstOrNull<T> on List<T> {
  T? get firstOrNull => isEmpty ? null : first;
}
