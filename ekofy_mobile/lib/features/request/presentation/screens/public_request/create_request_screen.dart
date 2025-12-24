import 'dart:developer';

import 'package:ekofy_mobile/core/configs/assets/app_images.dart';
import 'package:ekofy_mobile/core/configs/theme/app_colors.dart';
import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:ekofy_mobile/core/widgets/button/custom_button.dart';
import 'package:ekofy_mobile/features/request/data/models/own_request.dart';
import 'package:ekofy_mobile/features/request/data/models/public_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vsc_quill_delta_to_html/vsc_quill_delta_to_html.dart';

class CreateRequestScreen extends ConsumerStatefulWidget {
  final OwnRequestItem? editItem;
  final PublicRequestItem? editPublicItem;

  const CreateRequestScreen({super.key, this.editItem, this.editPublicItem});

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
  String? _descriptionError;

  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _quillController = QuillController.basic();
    if (widget.editItem != null) {
      final item = widget.editItem!;
      _titleCtrl.text = item.title;
      _summaryCtrl.text = item.summary;
      _durationCtrl.text = item.duration.toString();
      _minBudgetCtrl.text = item.budget.min.toString();
      _maxBudgetCtrl.text = item.budget.max.toString();

      // Simple HTML strip for now as we don't have a converter
      final plainText = item.detailDescription.replaceAll(
        RegExp(r'<[^>]*>'),
        '',
      );
      _quillController.document.insert(0, plainText);
    } else if (widget.editPublicItem != null) {
      final item = widget.editPublicItem!;
      _titleCtrl.text = item.title;
      _summaryCtrl.text = item.summary;
      _durationCtrl.text = item.duration.toString();
      _minBudgetCtrl.text = item.budget.min.toString();
      _maxBudgetCtrl.text = item.budget.max.toString();

      // Simple HTML strip for now as we don't have a converter
      final plainText = item.detailDescription.replaceAll(
        RegExp(r'<[^>]*>'),
        '',
      );
      _quillController.document.insert(0, plainText);
    }
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
    final isEdit = widget.editItem != null || widget.editPublicItem != null;
    return Scaffold(
      appBar: AppBar(title: Text(isEdit ? 'Edit Request' : 'Create Request')),
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
                        hintStyle: TextStyle(color: Colors.grey),
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
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(),
                      ),
                      validator: (v) {
                        if (v == null || v.trim().isEmpty) {
                          return 'Summary is required';
                        }
                        if (v.length > 1000) {
                          return 'Summary must be less than 500 characters';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 24),
                    _buildSectionTitle('Detail Description'),
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
                              showFontSize: false,
                              showFontFamily: false,
                              showBoldButton: true,
                              showItalicButton: true,
                              showUnderLineButton: true,
                              showListNumbers: true,
                              showListBullets: true,
                              showQuote: false,
                              showLink: false,
                              showDividers: false,
                              showStrikeThrough: false,
                              showInlineCode: false,
                              showColorButton: false,
                              showBackgroundColorButton: false,
                              showClearFormat: false,
                              showAlignmentButtons: false,
                              showLeftAlignment: false,
                              showCenterAlignment: false,
                              showRightAlignment: false,
                              showJustifyAlignment: false,
                              showHeaderStyle: false,
                              showListCheck: false,
                              showCodeBlock: false,
                              showIndent: false,
                              showUndo: false,
                              showRedo: false,
                              showDirection: false,
                              showSearchButton: false,
                              showSubscript: false,
                              showSuperscript: false,
                            ),
                          ),
                          const Divider(height: 1),
                          SizedBox(
                            height: 200,
                            child: QuillEditor.basic(
                              controller: _quillController,
                              config: QuillEditorConfig(
                                padding: const EdgeInsets.all(16),
                                onTapOutside: (event, focusNode) {
                                  setState(() {
                                    _descriptionError = _validateDescription();
                                  });
                                },

                                // sharedConfigurations: QuillSharedConfig(
                                //   locale: Locale('en'),
                                // ),
                              ),
                            ),
                          ),
                          if (_descriptionError != null)
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.error_outline,
                                    size: 16,
                                    color: Colors.red.shade700,
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      _descriptionError!,
                                      style: TextStyle(
                                        color: Colors.red.shade700,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    _buildSectionTitle('Estimated deadline'),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _durationCtrl,
                      decoration: const InputDecoration(
                        labelText: 'Duration (days)',
                        hintText: 'e.g. 7',
                        hintStyle: TextStyle(color: Colors.grey),
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
                        if (n <= 0 || n >= 365)
                          return 'Duration must be greater or equal 1 and less than 365';
                        return null;
                      },
                    ),
                    const SizedBox(height: 24),
                    _buildSectionTitle('Budget'),
                    const SizedBox(height: 16),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: _minBudgetCtrl,
                            decoration: const InputDecoration(
                              labelText: 'Min',
                              prefixText: '₫ ',
                              border: OutlineInputBorder(),
                              helperText: 'Min 1.000 ₫',
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
                              if (n < 1000) return 'Min 1.000 ₫';
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: TextFormField(
                            controller: _maxBudgetCtrl,
                            decoration: const InputDecoration(
                              labelText: 'Max',
                              prefixText: '₫ ',
                              border: OutlineInputBorder(),
                              helperText: 'Max 100 million ₫',
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
                              if (n > 100000000) return 'Max 100 million ₫';

                              final minVal = double.tryParse(
                                _minBudgetCtrl.text,
                              );
                              if (minVal != null && n < minVal) {
                                return 'Must be >= Min';
                              }
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
                              padding: const EdgeInsets.symmetric(vertical: 12),
                            ),
                            child: const Text(
                              'Cancel',
                              style: TextStyle(color: AppColors.purpleIshWhite),
                            ),
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
                                backgroundColor: Colors.deepPurple,
                                foregroundColor: Colors.deepPurple,
                              ),
                              child: _isLoading
                                  ? SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: CircularProgressIndicator(),
                                    )
                                  : const Text(
                                      'Submit',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.purpleIshWhite,
                                      ),
                                    ),
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
      final List<Map<String, dynamic>> ops = json.map((e) => e).toList();

      final converter = QuillDeltaToHtmlConverter(
        ops,
        ConverterOptions.forEmail(),
      );
      final htmlDescription = converter.convert();

      if (widget.editItem != null || widget.editPublicItem != null) {
        final id = widget.editItem?.id ?? widget.editPublicItem!.id;
        await ref
            .read(requestProvider.notifier)
            .updatePublicRequest(
              id: id,
              title: _titleCtrl.text,
              summary: _summaryCtrl.text,
              detailDescription: htmlDescription,
              duration: int.parse(_durationCtrl.text),
              min: double.parse(_minBudgetCtrl.text),
              max: double.parse(_maxBudgetCtrl.text),
            );
        if (mounted) {
          setState(() => _isLoading = false);
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Request updated successfully')),
          );
        }
        return;
      }

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

  String? _validateDescription() {
    // Lấy plain text
    final plainText = _quillController.document.toPlainText().trim();

    // Convert Delta to HTML
    final delta = _quillController.document.toDelta();
    final converter = QuillDeltaToHtmlConverter(
      delta.toJson(),
      ConverterOptions.forEmail(), // Hoặc ConverterOptions()
    );
    final htmlContent = converter.convert();

    // Validate
    if (plainText.isEmpty) {
      return 'Description is required';
    }

    if (htmlContent.length >= 500) {
      return 'Description must be less than 500 characters (including formatting)';
    }

    return null;
  }
}
