import 'package:flutter/material.dart';

class AppDropdown<T> extends StatelessWidget {
  final String label;
  final T? value;
  final List<T> items;
  final String Function(T) itemLabelBuilder;
  final ValueChanged<T?> onChanged;
  final bool isLabelVisible;

  const AppDropdown({
    super.key,
    required this.label,
    this.value,
    required this.items,
    required this.itemLabelBuilder,
    required this.onChanged,
    this.isLabelVisible = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isLabelVisible)
          DropdownButtonFormField<T>(
            // initialValue: value,
            decoration: InputDecoration(
              labelText: isLabelVisible ? null : label,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            items: items.map((item) {
              return DropdownMenuItem<T>(
                value: item,

                child: Text(itemLabelBuilder(item)),
              );
            }).toList(),
            onChanged: onChanged,
          ),
      ],
    );
  }
}
