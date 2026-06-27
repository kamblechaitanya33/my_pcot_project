import 'package:flutter/material.dart';

class ToggleOption<T> {
  final T value;
  final String label;

  ToggleOption({required this.value, required this.label});
}

class AppSegmentedToggle<T> extends StatelessWidget {
  final List<ToggleOption<T>> options;
  final T selectedValue;
  final ValueChanged<T> onSelected;
  final Color activeColor;
  final Color inactiveColor;
  final Color activeTextColor;
  final Color inactiveTextColor;
  final double height;

  const AppSegmentedToggle({
    super.key,
    required this.options,
    required this.selectedValue,
    required this.onSelected,
    required this.activeColor,
    required this.inactiveColor,
    this.activeTextColor = Colors.white,
    this.inactiveTextColor = Colors.black,
    this.height = 45,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(7.0),
        child: Row(
          children: options.map((option) {
            final isSelected = option.value == selectedValue;
            
            return Expanded(
              child: GestureDetector(
                onTap: () => onSelected(option.value),
                child: Container(
                  height: double.infinity,
                  color: isSelected ? activeColor : inactiveColor,
                  alignment: Alignment.center,
                  child: Text(
                    option.label,
                    style: TextStyle(
                      color: isSelected ? activeTextColor : inactiveTextColor,
                      fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
