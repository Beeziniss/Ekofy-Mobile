import 'package:flutter/material.dart';

class KeyValueRow {
  final String label;
  final Widget value;
  const KeyValueRow({required this.label, required this.value});
}

class KeyValueTable extends StatelessWidget {
  final List<KeyValueRow> rows;
  final EdgeInsetsGeometry padding;

  /// When true, draws an outlined container and alternating row backgrounds.
  /// When false, renders a simple list suitable for embedding inside another block.
  final bool outlined;
  const KeyValueTable({
    super.key,
    required this.rows,
    this.padding = const EdgeInsets.all(0),
    this.outlined = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Widget content = Column(
      children: [
        for (int i = 0; i < rows.length; i++)
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 12,
            ).add(padding),
            decoration: outlined
                ? BoxDecoration(
                    color: i % 2 == 0
                        ? const Color(0xFF111111)
                        : const Color(0xFF0F0F0F),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(i == 0 ? 12 : 0),
                      bottom: Radius.circular(i == rows.length - 1 ? 12 : 0),
                    ),
                  )
                : null,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 80,
                  child: Text(
                    rows[i].label,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: Colors.white70,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(child: rows[i].value),
              ],
            ),
          ),
      ],
    );

    if (!outlined) return content;

    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF0F0F0F),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFF2C2C2C)),
      ),
      child: content,
    );
  }
}
