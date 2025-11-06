import 'package:flutter/material.dart';

import '../../data/models/request_status.dart';

class FilterChipsRow extends StatelessWidget {
  final RequestStatus? selected;
  final ValueChanged<RequestStatus?> onSelected;

  const FilterChipsRow({super.key, required this.selected, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    final items = <(String, RequestStatus?)>[
      ('All', null),
      ('Pending', RequestStatus.pending),
      ('In-progress', RequestStatus.inProgress),
      ('Completed', RequestStatus.completed),
      ('Rejected', RequestStatus.rejected),
    ];

    return SizedBox(
      height: 40,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, i) {
          final label = items[i].$1;
          final status = items[i].$2;
          final isSelected = status == selected;
          return Semantics(
            button: true,
            label: 'Filter $label',
            selected: isSelected,
            child: ChoiceChip(
              label: Text(label, style: TextStyle(fontWeight: FontWeight.w600, color: isSelected ? Colors.white : Colors.white70)),
              selected: isSelected,
              onSelected: (_) => onSelected(status),
              selectedColor: const Color(0xFF2C2C2C),
              backgroundColor: const Color(0xFF111111),
              shape: StadiumBorder(side: BorderSide(color: isSelected ? const Color(0xFF6366F1) : const Color(0xFF2C2C2C))),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: VisualDensity.compact,
              showCheckmark: false,
            ),
          );
        },
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemCount: items.length,
      ),
    );
  }
}
