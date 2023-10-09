import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final TextStyle textStyle;
  final double? topLeftRadius;
  final double? topRightRadius;
  final double? bottomLeftRadius;
  final double? bottomRightRadius;
  final double? textVerticalPadding;
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.text,
    required this.textStyle,
    this.topLeftRadius,
    this.topRightRadius,
    this.bottomLeftRadius,
    this.bottomRightRadius,
    this.textVerticalPadding,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(backgroundColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(topLeftRadius ?? Radius.zero.x),
              bottomLeft: Radius.circular(bottomLeftRadius ?? Radius.zero.x),
              topRight: Radius.circular(topRightRadius ?? Radius.zero.x),
              bottomRight: Radius.circular(bottomRightRadius ?? Radius.zero.x),
            ),
          ),
        ),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
