import 'dart:developer';

import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vsc_quill_delta_to_html/vsc_quill_delta_to_html.dart';

class CreateRequestScreen extends ConsumerStatefulWidget {
  const CreateRequestScreen({super.key});

  @override
  ConsumerState<CreateRequestScreen> createState() =>
      _CreateRequestScreenState();
}

class _CreateRequestScreenState extends ConsumerState<CreateRequestScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleCtrl = TextEditingController();
  final _summaryCtrl = TextEditingController();
  // final _detailDescCtrl = TextEditingController(); // Replaced by QuillController
  final _durationCtrl = TextEditingController();
  final _minBudgetCtrl = TextEditingController();
  final _maxBudgetCtrl = TextEditingController();
  late final QuillController _quillController;

  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _quillController = QuillController.basic();
  }

  @override
  void dispose() {
    _titleCtrl.dispose();
    _summaryCtrl.dispose();
    _quillController.dispose();
    _durationCtrl.dispose();
    _minBudgetCtrl.dispose();
    _maxBudgetCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create Request')),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSectionTitle('Basic Information'),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _titleCtrl,
                      decoration: const InputDecoration(
                        labelText: 'Title',
                        hintText: 'Enter request title',
                        border: OutlineInputBorder(),
                      ),
                      validator: (v) => (v == null || v.trim().isEmpty)
                          ? 'Title is required'
                          : null,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _summaryCtrl,
                      decoration: const InputDecoration(
                        labelText: 'Summary',
                        hintText: 'Short summary of the request',
                        border: OutlineInputBorder(),
                      ),
                      validator: (v) => (v == null || v.trim().isEmpty)
                          ? 'Summary is required'
                          : null,
                    ),
                    const SizedBox(height: 24),
                    _buildSectionTitle('Detail Description'),
                    Text('Detail Description'),
                    const SizedBox(height: 8),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade700),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          QuillSimpleToolbar(
                            controller: _quillController,
                            config: const QuillSimpleToolbarConfig(
                              showFontFamily: false,
                              showFontSize: false,
                              showSearchButton: false,
                              showSubscript: false,
                              showSuperscript: false,
                              showBoldButton: true,
                              showItalicButton: true,
                              showUnderLineButton: true,
                              showListNumbers: true,
                              showListBullets: true,
                              showQuote: true,
                              showLink: true,
                              showUndo: true,
                              showRedo: true,
                            ),
                          ),
                          const Divider(height: 1),
                          SizedBox(
                            height: 200,
                            child: QuillEditor.basic(
                              controller: _quillController,
                              config: const QuillEditorConfig(
                                padding: EdgeInsets.all(16),

                                // sharedConfigurations: QuillSharedConfig(
                                //   locale: Locale('en'),
                                // ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    _buildSectionTitle('Logistics'),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _durationCtrl,
                      decoration: const InputDecoration(
                        labelText: 'Duration (days)',
                        hintText: 'e.g. 7',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.timer_outlined),
                      ),
                      keyboardType: TextInputType.number,
                      validator: (v) {
                        if (v == null || v.trim().isEmpty) {
                          return 'Duration is required';
                        }
                        final n = int.tryParse(v);
                        if (n == null) return 'Enter a valid integer';
                        if (n <= 0) return 'Duration must be positive';
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: _minBudgetCtrl,
                            decoration: const InputDecoration(
                              labelText: 'Min Budget',
                              prefixText: '₫ ',
                              border: OutlineInputBorder(),
                            ),
                            keyboardType: const TextInputType.numberWithOptions(
                              decimal: true,
                            ),
                            validator: (v) {
                              if (v == null || v.trim().isEmpty) {
                                return 'Required';
                              }
                              final n = double.tryParse(v);
                              if (n == null) return 'Invalid number';
                              if (n < 0) return 'Cannot be negative';
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: TextFormField(
                            controller: _maxBudgetCtrl,
                            decoration: const InputDecoration(
                              labelText: 'Max Budget',
                              prefixText: '₫ ',
                              border: OutlineInputBorder(),
                            ),
                            keyboardType: const TextInputType.numberWithOptions(
                              decimal: true,
                            ),
                            validator: (v) {
                              if (v == null || v.trim().isEmpty) {
                                return 'Required';
                              }
                              final n = double.tryParse(v);
                              if (n == null) return 'Invalid number';
                              if (n < 0) return 'Cannot be negative';
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: _isLoading
                                ? null
                                : () => Navigator.pop(context),
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                            ),
                            child: const Text('Cancel'),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Semantics(
                            button: true,
                            label: 'Submit Request',
                            child: ElevatedButton(
                              onPressed: _isLoading ? null : _submit,
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 16,
                                ),
                                backgroundColor: Theme.of(context).primaryColor,
                                foregroundColor: Colors.white,
                              ),
                              child: _isLoading
                                  ? const SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                        color: Colors.white,
                                      ),
                                    )
                                  : const Text('Submit'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.bold,
        color: Theme.of(context).primaryColor,
      ),
    );
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;

    if (_quillController.document.isEmpty()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Detail Description is required'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    setState(() => _isLoading = true);

    try {
      final delta = _quillController.document.toDelta();
      final json = delta.toJson();
      final List<Map<String, dynamic>> ops = json
          .map((e) => e as Map<String, dynamic>)
          .toList();

      final converter = QuillDeltaToHtmlConverter(
        ops,
        ConverterOptions.forEmail(),
      );
      final htmlDescription = converter.convert();

      final result = await ref
          .read(requestProvider.notifier)
          .createPublicRequest(
            title: _titleCtrl.text,
            summary: _summaryCtrl.text,
            detailDescription: htmlDescription,
            duration: int.parse(_durationCtrl.text),
            min: double.parse(_minBudgetCtrl.text),
            max: double.parse(_maxBudgetCtrl.text),
          );

      if (mounted) {
        setState(() => _isLoading = false);

        if (result.hasException) {
          log('Create request error: ${result.exception}');
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Error: ${result.exception?.graphqlErrors.firstOrNull?.message ?? result.exception.toString()}',
              ),
              backgroundColor: Colors.red,
            ),
          );
        } else {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Request created successfully')),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        setState(() => _isLoading = false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: $e'), backgroundColor: Colors.red),
        );
      }
    }
  }
}
