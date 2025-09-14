import 'package:flutter/material.dart';
import 'package:my_project_mobile_app/app/app_color.dart';
import 'package:my_project_mobile_app/app/app_style.dart';

class WidgetButton extends StatelessWidget {
  final String? title;
  final String? icon;
  final double? width;
  final double? height;
  final Color backgroundColor;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;

  final VoidCallback? onPressed;

  const WidgetButton({
    Key? key,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.title,
    this.icon,
    this.borderRadius,
    this.backgroundColor = AppColors.primary,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          elevation: 0,
          padding: padding ?? const EdgeInsets.symmetric(vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(4),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon == null
                ? Container()
                : Container(
                    margin: const EdgeInsets.only(right: 5),
                    child: Text('data'),
                  ),
            Text(
              title ?? '',
              maxLines: 2,
              style: AppStyle.bold(fontSize: 14, color: AppColors.textDark),
            ),
          ],
        ),
      ),
    );
  }
}
