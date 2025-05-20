import 'package:flutter/material.dart';

class FormButton extends StatelessWidget {
  final Text label;
  final Icon icon;
  final VoidCallback onTap;

  const FormButton({
    super.key,
    required this.label,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).focusColor),
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Colors.black,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [label, icon],
        ),
      ),
    );
  }
}
