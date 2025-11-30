import 'package:ekofy_mobile/features/profile/presentation/providers/profile_notifier.dart';
import 'package:ekofy_mobile/features/profile/presentation/providers/profile_state.dart';
import 'package:ekofy_mobile/features/profile/presentation/widgets/profile_header_widget.dart';
import 'package:ekofy_mobile/gql/generated/schema.graphql.dart' show Enum$UserGender;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  late TextEditingController _displayNameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;
  late TextEditingController _birthDateController;

  @override
  void initState() {
    super.initState();
    _displayNameController = TextEditingController();
    _emailController = TextEditingController();
    _phoneController = TextEditingController();
    _birthDateController = TextEditingController();
  }

  @override
  void dispose() {
    _displayNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _birthDateController.dispose();
    super.dispose();
  }

  // Sync controllers với state khi có thay đổi
  void _syncControllers(ProfileState state) {
    final profile = state.edited ?? state.original;
    if (profile != null) {
      if (_displayNameController.text != (profile.displayName ?? '')) {
        _displayNameController.text = profile.displayName ?? '';
      }
      if (_emailController.text != (profile.email ?? '')) {
        _emailController.text = profile.email ?? '';
      }
      if (_phoneController.text != (profile.phoneNumber ?? '')) {
        _phoneController.text = profile.phoneNumber ?? '';
      }
      final formattedDate = _formatDate(profile.birthDate);
      if (_birthDateController.text != formattedDate) {
        _birthDateController.text = formattedDate;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final asyncState = ref.watch(profileProvider);

    return asyncState.when(
      // Loading state
      loading: () => const Scaffold(
        backgroundColor: Color(0xFF0B0B0E),
        body: Center(child: CircularProgressIndicator()),
      ),

      // Error state
      error: (error, stack) => Scaffold(
        backgroundColor: const Color(0xFF0B0B0E),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 48, color: Colors.red),
              const SizedBox(height: 16),
              Text(
                'Failed to load profile\n$error',
                style: const TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => ref.invalidate(profileProvider),
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      ),

      // Data state
      data: (state) {
        // Sync controllers mỗi khi state thay đổi
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _syncControllers(state);
        });

        final profile = state.original;
        if (profile == null) {
          return const Scaffold(
            backgroundColor: Color(0xFF0B0B0E),
            body: Center(
              child: Text(
                'No profile data',
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
                isVerified: profile.isVerified ?? false,
                bannerImage: profile.bannerImage,
                avatarImage: profile.avatarImage,
                displayName: state.edited?.displayName ?? profile.displayName ?? '',
                userId: profile.userId ?? '-',
                onEditBanner: () {
                  // TODO: Implement banner edit
                },
                onEditAvatar: () {
                  // TODO: Implement avatar edit
                },
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildInformationCard(context, state),
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
      },
    );
  }

  Widget _buildInformationCard(BuildContext context, ProfileState state) {
    final notifier = ref.read(profileProvider.notifier);
    final isEditing = state.isEditing;

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
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    if (isEditing) ...[
                      TextButton(
                        onPressed: () {
                          notifier.cancelEditing();
                        },
                        child: const Text('Cancel'),
                      ),
                      const SizedBox(width: 8),
                    ],
                    IconButton(
                      icon: Icon(
                        isEditing ? Icons.check : Icons.edit,
                        color: Colors.white,
                      ),
                      onPressed: state.isLoading
                          ? null
                          : () async {
                              if (isEditing) {
                                await _handleSave(context, notifier);
                              } else {
                                notifier.toggleEditing();
                              }
                            },
                    ),
                  ],
                ),
              ],
            ),
            if (state.isLoading) ...[
              const SizedBox(height: 8),
              const LinearProgressIndicator(),
            ],
            const SizedBox(height: 16),
            
            // Display Name
            isEditing
                ? _buildEditableField(
                    'Display name',
                    _displayNameController,
                    onChanged: (value) {
                      notifier.updateField(name: value);
                    },
                  )
                : _kvRow('Display name', state.edited?.displayName ?? '-'),
            const SizedBox(height: 12),
            
            // Email (read-only)
            isEditing
                ? _buildReadOnlyField('Email', _emailController)
                : _kvRow('Email', state.edited?.email ?? '-'),
            const SizedBox(height: 12),
            
            // Phone Number
            isEditing
                ? _buildEditableField(
                    'Phone number',
                    _phoneController,
                    onChanged: (value) {
                      notifier.updateField(phone: value);
                    },
                  )
                : _kvRow('Phone number', state.edited?.phoneNumber ?? '-'),
            const SizedBox(height: 12),
            
            // Date of Birth
            isEditing
                ? _buildDatePickerField(
                    context,
                    'Date of Birth',
                    _birthDateController,
                    currentDate: state.edited?.birthDate,
                    onDateSelected: (date) {
                      notifier.updateField(birthDate: date);
                    },
                  )
                : _kvRow('Date of Birth', _formatDate(state.edited?.birthDate)),
            const SizedBox(height: 12),
            
            // Gender
            isEditing
                ? _buildGenderDropdown(state, notifier)
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
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            _kvRow('Followers', profile.followerCount?.toString() ?? '0'),
            const SizedBox(height: 12),
            _kvRow('Following', profile.followingCount?.toString() ?? '0'),
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
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            _kvRow('Join Date', _formatDate(user?.createdAt)),
            const SizedBox(height: 12),
            _kvRow('Last login at', _formatDateTime(user?.lastLoginAt)),
          ],
        ),
      ),
    );
  }

  Future<void> _handleSave(BuildContext context, Profile notifier) async {
    try {
      await notifier.submitUpdate();
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Profile updated successfully'),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to update profile: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  Widget _buildEditableField(
    String label,
    TextEditingController controller, {
    void Function(String)? onChanged,
  }) {
    return TextField(
      controller: controller,
      style: const TextStyle(color: Colors.white),
      onChanged: onChanged,
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

  Widget _buildDatePickerField(
    BuildContext context,
    String label,
    TextEditingController controller, {
    DateTime? currentDate,
    required void Function(DateTime) onDateSelected,
  }) {
    return TextField(
      controller: controller,
      readOnly: true,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white70),
        suffixIcon: const Icon(Icons.calendar_today, color: Colors.white70),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white24),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
      onTap: () async {
        final pickedDate = await showDatePicker(
          context: context,
          initialDate: currentDate ?? DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
          builder: (context, child) {
            return Theme(
              data: ThemeData.dark().copyWith(
                colorScheme: const ColorScheme.dark(
                  primary: Colors.blue,
                  surface: Color(0xFF15151B),
                ),
              ),
              child: child!,
            );
          },
        );

        if (pickedDate != null) {
          onDateSelected(pickedDate);
        }
      },
    );
  }

  Widget _buildGenderDropdown(ProfileState state, Profile notifier) {
    return Row(
      children: [
        const SizedBox(
          width: 120,
          child: Text(
            'Gender',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: DropdownButtonFormField<Enum$UserGender>(
            dropdownColor: const Color(0xFF15151B),
            value: state.edited?.gender,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white24),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white24),
              ),
            ),
            items: const [
              DropdownMenuItem(
                value: Enum$UserGender.MALE,
                child: Text('Male', style: TextStyle(color: Colors.white)),
              ),
              DropdownMenuItem(
                value: Enum$UserGender.FEMALE,
                child: Text('Female', style: TextStyle(color: Colors.white)),
              ),
              DropdownMenuItem(
                value: Enum$UserGender.OTHER,
                child: Text('Other', style: TextStyle(color: Colors.white)),
              ),
            ],
            onChanged: (value) {
              if (value != null) {
                notifier.updateField(gender: value);
              }
            },
          ),
        ),
      ],
    );
  }

  Widget _buildReadOnlyField(String label, TextEditingController controller) {
    return TextField(
      controller: controller,
      readOnly: true,
      style: const TextStyle(color: Colors.white54),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white38),
        suffixIcon: const Icon(Icons.lock, size: 16, color: Colors.white38),
        disabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white24),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white24),
        ),
      ),
    );
  }

  Widget _kvRow(String key, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 120,
          child: Text(
            key,
            style: const TextStyle(color: Colors.white70),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            value.isEmpty ? '-' : value,
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

  String _formatDateTime(DateTime? date) {
    if (date == null) return '-';
    return '${_formatDate(date)} ${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}';
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
}