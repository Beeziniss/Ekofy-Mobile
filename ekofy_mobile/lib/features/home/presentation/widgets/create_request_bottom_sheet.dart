import 'package:ekofy_mobile/core/configs/assets/app_images.dart';
import 'package:flutter/material.dart';

class CreateRequestBottomSheet extends StatefulWidget {
  const CreateRequestBottomSheet({super.key});

  @override
  State<CreateRequestBottomSheet> createState() => _CreateRequestBottomSheetState();
}

class _CreateRequestBottomSheetState extends State<CreateRequestBottomSheet> {
  final _formKey = GlobalKey<FormState>();
  final _titleCtrl = TextEditingController();
  final _descCtrl = TextEditingController();
  final _amountCtrl = TextEditingController();
  String? _type;
  String? _attachment; // For mock we store asset path

  final _types = const [
    'Audio Production',
    'Performance',
    'Design',
    'Recording',
    'Composition',
    'Production',
    'Writing',
    'Mentoring',
    'Review',
  ];

  @override
  void dispose() {
    _titleCtrl.dispose();
    _descCtrl.dispose();
    _amountCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewInsets = MediaQuery.of(context).viewInsets.bottom;
    final maxHeight = MediaQuery.of(context).size.height * 0.9;
    return SafeArea(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: maxHeight),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: viewInsets + 16),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Create Request', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _titleCtrl,
                  decoration: const InputDecoration(labelText: 'Title', hintText: 'Enter request title'),
                  validator: (v) => (v == null || v.trim().isEmpty) ? 'Title is required' : null,
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _descCtrl,
                  decoration: const InputDecoration(labelText: 'Description', hintText: 'Describe your request'),
                  maxLines: 4,
                  validator: (v) => (v == null || v.trim().isEmpty) ? 'Description is required' : null,
                ),
                const SizedBox(height: 8),
                DropdownButtonFormField<String>(
                  value: _type,
                  items: _types.map((t) => DropdownMenuItem(value: t, child: Text(t))).toList(),
                  onChanged: (v) => setState(() => _type = v),
                  decoration: const InputDecoration(labelText: 'Request type'),
                  validator: (v) => v == null ? 'Select a type' : null,
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _amountCtrl,
                  decoration: const InputDecoration(labelText: 'Amount (optional)', prefixText: '\u000024 '),
                  keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  validator: (v) {
                    if (v == null || v.trim().isEmpty) return null; // optional
                    final n = double.tryParse(v);
                    if (n == null) return 'Enter a valid number';
                    if (n < 0) return 'Amount cannot be negative';
                    return null;
                  },
                ),
                const SizedBox(height: 12),
                Text('Attachments', style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600)),
                const SizedBox(height: 8),
                Row(
                  children: [
                    _attachmentPreview(),
                    const SizedBox(width: 12),
                    OutlinedButton.icon(
                      onPressed: _pickMockAttachment,
                      icon: const Icon(Icons.image),
                      label: const Text('Pick sample'),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Cancel'),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Semantics(
                        button: true,
                        label: 'Submit Request',
                        child: ElevatedButton(
                          onPressed: _submit,
                          child: const Text('Submit'),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _attachmentPreview() {
    final placeholder = Container(
      width: 64,
      height: 64,
      decoration: BoxDecoration(
        color: const Color(0xFF111111),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFF2C2C2C)),
      ),
      child: const Icon(Icons.image, color: Colors.white38),
    );

    if (_attachment == null) return placeholder;

    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(_attachment!, width: 64, height: 64, fit: BoxFit.cover),
    );
  }

  void _pickMockAttachment() {
    setState(() {
      // Use one existing asset as a mock selection
      _attachment = AppImages.backgroundLogin;
    });
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;
    Navigator.pop(context);
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Request submitted (mock)')));
  }
}
