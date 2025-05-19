import 'package:flutter/material.dart';

class InputFormField extends StatelessWidget {
  final Text label;
  final int maxLines;
  final bool isObscure;
  final bool isDense;

  const InputFormField({
    super.key,
    required this.label,
    this.maxLines = 1,
    this.isObscure = false,
    this.isDense = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        label,
        TextFormField(
          obscureText: isObscure,
          maxLines: 1,
          cursorColor: Theme.of(context).shadowColor,
          style: Theme.of(context).textTheme.bodyMedium,
          decoration: InputDecoration(
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.withValues(alpha: 0.5)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.withValues(alpha: 0.5)),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.withValues(alpha: 0.5)),
            ),
            contentPadding: EdgeInsets.all(8),
            isDense: true,
          ),
        ),
      ],
    );
  }
}
