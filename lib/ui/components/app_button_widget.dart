// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/app_colors.dart';

class AppButtonWidget extends StatelessWidget {
  const AppButtonWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.onPressed,
    this.hasBorder= false,
    this.color,
  });

  final IconData icon;
  final String title;
  final Color? color;
  final bool hasBorder;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        // padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        backgroundColor: hasBorder ? Colors.transparent : color,
        shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: !hasBorder ? BorderSide.none : BorderSide(color: color!),
        ),
      ),
      onPressed: () => onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 24.0,color: AppColors.white,),
          SizedBox(width: 8.0),
          Text(title, style: TextStyle(fontSize: 16.0.sp, color:  Colors.white)),
        ],
      ),
    );
  }
}
