import 'package:appilon/theme/colors.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final String text;
  const Footer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Text(
        text,
        style: TextStyle(fontSize: 14, color: AppColors.footerGrey),
      ),
    );
  }
}
