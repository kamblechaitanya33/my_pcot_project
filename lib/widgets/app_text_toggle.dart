import 'package:flutter/material.dart';

class AppTextToggle extends StatelessWidget {
  final String option1;
  final String option2;
  final bool isOption1Selection;
  final ValueChanged<bool> onToggle;

  const AppTextToggle({
    super.key,
    required this.option1,
    required this.option2,
    required this.isOption1Selection,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<bool>(
      segments: [
        ButtonSegment(value: true, label: Text(option1)),
        ButtonSegment(value: false, label: Text(option2)),
      ],
      selected: {isOption1Selection},
      onSelectionChanged: (Set<bool> newSelection) {
        onToggle(newSelection.first);
      },
    );
  }
}
