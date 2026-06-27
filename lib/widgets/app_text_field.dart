import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final String? hintText;
  final ValueChanged<String>? onChanged;
  final bool isLabelVisible;

  const AppTextField({
    super.key,
    this.label = "",
    this.controller,
    this.hintText,
    this.onChanged,
    this.isLabelVisible = false, String? initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isLabelVisible)
              Padding(
                padding: const EdgeInsets.only(left: 5, bottom: 6),
                child: Text(
                  label,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

            /// TextField
            TextFormField(
              controller: controller,
              onChanged: onChanged,
              decoration: InputDecoration(
                labelText: isLabelVisible ? null : label,
                hintText: hintText,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                filled: true,
                fillColor: Colors.grey.shade50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
