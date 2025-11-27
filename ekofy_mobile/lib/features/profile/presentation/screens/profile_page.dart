import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:ekofy_mobile/features/profile/presentation/providers/profile_notifier.dart';
import 'package:ekofy_mobile/features/profile/presentation/providers/profile_state.dart';
import 'package:ekofy_mobile/features/profile/presentation/widgets/profile_header_widget.dart';
import 'package:ekofy_mobile/gql/generated/schema.graphql.dart'
    show Enum$UserGender;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  late TextEditingController _displayNameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;
  late TextEditingController _birthDateController;
  bool _isEditing = false;

  @override
  void initState() {
    super.initState();
    _displayNameController = TextEditingController();
    _emailController = TextEditingController();
    _phoneController = TextEditingController();
    _birthDateController = TextEditingController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final state = ref.read(profileProvider);
    _displayNameController.text = state.edited?.displayName ?? '';
    _emailController.text = state.edited?.email ?? '';
    _phoneController.text = state.edited?.phoneNumber ?? '';
    _birthDateController.text = _formatDate(state.edited?.birthDate);
  }

  @override
  void dispose() {
    _displayNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _birthDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(profileProvider);
    final controller = ref.read(profileProvider.notifier);

    if (state.isLoading) {
      return const Scaffold(
        backgroundColor: Color(0xFF0B0B0E),
        body: Center(child: CircularProgressIndicator()),
      );
    }

    if (state.original == null) {
      return const Scaffold(
        backgroundColor: Color(0xFF0B0B0E),
        body: Center(
          child: Text(
            'Failed to load profile',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xFF0B0B0E),
      body: CustomScrollView(
        slivers: [
          ProfileHeaderWidget(
            isVerified: state.original?.isVerified ?? false,
            bannerImage: state.original?.bannerImage,
            avatarImage: state.original?.avatarImage,
            displayName: state.edited?.displayName ?? '',
            userId: state.original?.userId ?? '-',
            onEditBanner: () {},
            onEditAvatar: () {},
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildInformationCard(context, state, controller),
                  const SizedBox(height: 16),
                  _buildAccountDetailsCard(state),
                  const SizedBox(height: 16),
                  _buildActivitiesCard(state),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInformationCard(
    BuildContext context,
    ProfileState state,
    ProfileNotifier controller,
  ) {
    return Card(
      color: const Color(0xFF15151B),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Information',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 16,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    _isEditing ? Icons.check : Icons.edit,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    if (_isEditing) {
                      controller.updateField(
                        name: _displayNameController.text,
                        phone: _phoneController.text,
                        birthDate: _parseDate(_birthDateController.text),
                        // Email không cần vì read-only
                      );
                      controller.submitUpdate();
                    }
                    setState(() {
                      _isEditing = !_isEditing;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 8),
            _isEditing
                ? _buildEditableField('Display name', _displayNameController)
                : _kvRow('Display name', state.edited?.displayName ?? '-'),
            const SizedBox(height: 8),
            _isEditing
                ? _buildReadOnlyField('Email', _emailController)
                : _kvRow('Email', state.edited?.email ?? '-'),
            const SizedBox(height: 8),
            _isEditing
                ? _buildEditableField('Phone number', _phoneController)
                : _kvRow('Phone number', state.edited?.phoneNumber ?? '-'),
            const SizedBox(height: 8),
            _isEditing
                ? _buildEditableField('Date of Birth', _birthDateController)
                : _kvRow('Date of Birth', _formatDate(state.edited?.birthDate)),
            const SizedBox(height: 8),
            _isEditing
                ? _buildGenderDropdown(state, controller)
                : _kvRow('Gender', _formatGender(state.edited?.gender)),
          ],
        ),
      ),
    );
  }

  Widget _buildAccountDetailsCard(ProfileState state) {
    final profile = state.original!;
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
            _kvRow('Followers', profile.followerCount.toString()),
            const SizedBox(height: 8),
            _kvRow('Following', profile.followingCount.toString()),
          ],
        ),
      ),
    );
  }

  Widget _buildActivitiesCard(ProfileState state) {
    final user = state.original;
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

  Widget _buildEditableField(String label, TextEditingController controller) {
    return TextField(
      controller: controller,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white70),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white24),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildGenderDropdown(ProfileState state, ProfileNotifier controller) {
    return DropdownButton<Enum$UserGender>(
      dropdownColor: const Color(0xFF15151B),
      value: state.edited?.gender,
      items: [
        DropdownMenuItem(
          value: Enum$UserGender.MALE,
          child: const Text('Male', style: TextStyle(color: Colors.white)),
        ),
        DropdownMenuItem(
          value: Enum$UserGender.FEMALE,
          child: const Text('Female', style: TextStyle(color: Colors.white)),
        ),
        DropdownMenuItem(
          value: Enum$UserGender.OTHER,
          child: const Text('Other', style: TextStyle(color: Colors.white)),
        ),
      ],
      onChanged: (value) {
        if (value != null) {
          controller.updateField(gender: value);
        }
      },
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
            v.isEmpty ? '-' : v,
            style: const TextStyle(color: Colors.white),
            softWrap: true,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  String _formatDate(DateTime? date) {
    if (date == null) return '-';
    return '${date.day.toString().padLeft(2, '0')}-${date.month.toString().padLeft(2, '0')}-${date.year}';
  }

  DateTime? _parseDate(String input) {
    try {
      return DateTime.parse(input);
    } catch (_) {
      return null;
    }
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

  Widget _buildReadOnlyField(String label, TextEditingController controller) {
    return TextField(
      controller: controller,
      readOnly: true,
      style: const TextStyle(color: Colors.white54),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white38),
        disabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white24),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white24),
        ),
      ),
    );
  }
}

extension FirstOrNull<T> on List<T> {
  T? get firstOrNull => isEmpty ? null : first;
}
