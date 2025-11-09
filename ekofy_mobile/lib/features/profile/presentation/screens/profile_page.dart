import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../data/models/profile_model.dart';
import '../widgets/profile_header_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late ProfileModel _profile;
  bool _editing = false;

  // Controllers for edit mode
  final _nameCtrl = TextEditingController();
  DateTime? _birthDateEdit;
  Gender? _genderEdit;

  @override
  void initState() {
    super.initState();
    //INFO: Initialize with mock profile data. Replace with repository/provider fetch when backend available.
    _profile = ProfileModel.mock();
    _nameCtrl.text = _profile.displayName;
    _birthDateEdit = _profile.birthDate;
    _genderEdit = _profile.gender;
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
              title:
                  const Text('Cancel', style: TextStyle(color: Colors.white)),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }

  String _formatDate(DateTime? d) {
    if (d == null) return '-';
    return '${d.year}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0B0E),
      body: CustomScrollView(
        slivers: [
          //INFO: Using mock avatar/banner assets (may be null) from _profile.
          ProfileHeaderWidget(
            bannerImage: _profile.bannerImage,
            avatarImage: _profile.avatarImage,
            displayName: _profile.displayName,
            userId: _profile.userId,
            onEditBanner: () => _showImageSourceSheet('Select image (mock)'),
            onEditAvatar: () => _showImageSourceSheet('Select image (mock)'),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _personalDetailsCard(context),
                  const SizedBox(height: 12),
                  _accountDetailsCard(context),
                  const SizedBox(height: 12),
                  _settingsPrivacyCard(context),
                  const SizedBox(height: 12),
                  _supportHelpCard(context),
                  const SizedBox(height: 12),
                  _paymentsCard(context),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _personalDetailsCard(BuildContext context) {
    return Card(
      color: const Color(0xFF15151B),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text('Personal Details',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
                const Spacer(),
                if (!_editing)
                  TextButton.icon(
                    onPressed: () {
                      setState(() {
                        _editing = true;
                        _nameCtrl.text = _profile.displayName;
                        _birthDateEdit = _profile.birthDate;
                        _genderEdit = _profile.gender;
                      });
                    },
                    icon: const Icon(Icons.edit, size: 16),
                    label: const Text('Edit'),
                  ),
              ],
            ),
            const SizedBox(height: 8),
            if (!_editing) ...[
              _kvRow('Display name', _profile.displayName),
              const SizedBox(height: 8),
              _kvRow('Email', _profile.email),
              const SizedBox(height: 8),
              _kvRow('Date of Birth', _formatDate(_profile.birthDate)),
              const SizedBox(height: 8),
              _kvRow('Gender', genderLabel(_profile.gender)),
            ] else ...[
              _textField('Display name', _nameCtrl,
                  semanticsLabel: 'Display name field'),
              const SizedBox(height: 12),
              _readOnlyField('Email', _profile.email),
              const SizedBox(height: 12),
              _dateField(context),
              const SizedBox(height: 12),
              _genderField(),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          _editing = false;
                        });
                      },
                      child: const Text('Cancel'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        final name = _nameCtrl.text.trim();
                        if (name.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Display name cannot be empty')),
                          );
                          return;
                        }
                        if (_birthDateEdit != null &&
                            _birthDateEdit!.isAfter(DateTime.now())) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content:
                                    Text('Birth date cannot be in the future')),
                          );
                          return;
                        }
                        setState(() {
                          _profile = _profile.copyWith(
                            displayName: name,
                            birthDate: _birthDateEdit,
                            gender: _genderEdit,
                          );
                          _editing = false;
                        });
                      },
                      child: const Text('Save'),
                    ),
                  ),
                ],
              )
            ]
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
            const Text('Account Details',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 8),
            _kvRow('Created', _formatDate(_profile.createdAt)),
            const SizedBox(height: 8),
            _kvRow('Membership', _profile.membershipStatus?.isNotEmpty == true ? _profile.membershipStatus! : '-'),
          ],
        ),
      ),
    );
  }

  Widget _settingsPrivacyCard(BuildContext context) {
    return Card(
      color: const Color(0xFF15151B),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          _actionRow(
            icon: Icons.lock,
            title: 'Change Password',
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Change Password (stub)')),
              );
            },
          ),
          const Divider(height: 1, color: Color(0xFF2C2C2C)),
          _actionRow(
            icon: Icons.warning_amber_rounded,
            title: 'Deactivate Account',
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Deactivate (stub)')),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _supportHelpCard(BuildContext context) {
    return Card(
      color: const Color(0xFF15151B),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            const Icon(Icons.help_outline, color: Colors.white70),
            const SizedBox(width: 12),
            const Expanded(
              child: Text(
                'Something is wrong?\nWe\'re here to help.',
                style: TextStyle(color: Colors.white),
              ),
            ),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Contact support (stub)')),
                );
              },
              child: const Text('Contact'),
            )
          ],
        ),
      ),
    );
  }

  Widget _paymentsCard(BuildContext context) {
    return Card(
      color: const Color(0xFF15151B),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Row(
          children: [
            const Icon(Icons.receipt_long, color: Colors.white70),
            const SizedBox(width: 12),
            const Expanded(
              child: Text(
                'Payment History',
                style: TextStyle(color: Colors.white),
              ),
            ),
            TextButton(
              onPressed: () {
                //INFO: Navigate to mock Payment History list (UI-only)
                context.push('/transactions');
              },
              child: const Text('View'),
            )
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
          child: Text(v,
              style: const TextStyle(color: Colors.white),
              softWrap: true,
              maxLines: 3,
              overflow: TextOverflow.ellipsis),
        ),
      ],
    );
  }

  Widget _textField(String label, TextEditingController ctrl,
      {String? semanticsLabel}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(color: Colors.white70)),
        const SizedBox(height: 6),
        Semantics(
          label: semanticsLabel,
          textField: true,
          child: TextField(
            controller: ctrl,
            decoration: InputDecoration(
              hintText: label,
              hintStyle: const TextStyle(color: Colors.white54),
              filled: true,
              fillColor: const Color(0xFF0B0B0E),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Color(0xFF2C2C2C)),
              ),
            ),
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }

  Widget _readOnlyField(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(color: Colors.white70)),
        const SizedBox(height: 6),
        Container(
          height: 48,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: const Color(0xFF0B0B0E),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xFF2C2C2C)),
          ),
          child: Text(value, style: const TextStyle(color: Colors.white)),
        )
      ],
    );
  }

  Widget _dateField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Date of Birth', style: TextStyle(color: Colors.white70)),
        const SizedBox(height: 6),
        Semantics(
          label: 'Date of Birth field',
          button: true,
          child: InkWell(
            onTap: () async {
              final now = DateTime.now();
              final initial = _birthDateEdit ?? DateTime(now.year - 18, now.month, now.day);
              final picked = await showDatePicker(
                context: context,
                firstDate: DateTime(1900),
                lastDate: DateTime.now(),
                initialDate: initial,
                helpText: 'Select birth date',
                builder: (context, child) {
                  return Theme(
                    data: Theme.of(context).copyWith(
                      colorScheme: const ColorScheme.dark(
                        primary: Color(0xFF9333EA),
                        surface: Color(0xFF15151B),
                        onSurface: Colors.white,
                      ),
                    ),
                    child: child!,
                  );
                },
              );
              if (picked != null) {
                setState(() => _birthDateEdit = picked);
              }
            },
            child: Container(
              height: 48,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: const Color(0xFF0B0B0E),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFF2C2C2C)),
              ),
              child: Text(
                _birthDateEdit == null ? '-' : _formatDate(_birthDateEdit),
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _genderField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Gender', style: TextStyle(color: Colors.white70)),
        const SizedBox(height: 6),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: const Color(0xFF0B0B0E),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xFF2C2C2C)),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<Gender?>(
              isExpanded: true,
              value: _genderEdit,
              dropdownColor: const Color(0xFF15151B),
              items: const [
                DropdownMenuItem(value: null, child: Text('-', style: TextStyle(color: Colors.white))),
                DropdownMenuItem(value: Gender.male, child: Text('Male', style: TextStyle(color: Colors.white))),
                DropdownMenuItem(value: Gender.female, child: Text('Female', style: TextStyle(color: Colors.white))),
                DropdownMenuItem(value: Gender.other, child: Text('Other', style: TextStyle(color: Colors.white))),
              ],
              onChanged: (v) => setState(() => _genderEdit = v),
            ),
          ),
        ),
      ],
    );
  }

  Widget _actionRow({required IconData icon, required String title, required VoidCallback onTap}) {
    return Semantics(
      label: title,
      button: true,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
              children: [
                Icon(icon, color: Colors.white70),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(title, style: const TextStyle(color: Colors.white)),
                ),
                const Icon(Icons.chevron_right, color: Colors.white24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
