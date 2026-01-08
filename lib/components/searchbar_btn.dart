import 'package:appilon/theme/colors.dart';
import 'package:flutter/material.dart';

class SearchbarBtn extends StatefulWidget {
  final IconData icon;
  final String text;
  const SearchbarBtn({super.key, required this.icon, required this.text});

  @override
  State<SearchbarBtn> createState() => _SearchbarBtnState();
}

class _SearchbarBtnState extends State<SearchbarBtn> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHovered = false;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: isHovered ? AppColors.proButton : Colors.transparent,
        ),
        child: Row(
          children: [
            Icon(widget.icon, color: AppColors.iconGrey, size: 20),
            SizedBox(width: 8),
            Text(widget.text, style: TextStyle(color: AppColors.textGrey)),
          ],
        ),
      ),
    );
  }
}
