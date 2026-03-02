import 'package:aunilah_paspor/utils/constants/color_constant.dart';
import 'package:aunilah_paspor/utils/constants/text_constant.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart'; // Import LoadingIndicator

class ButtonGlobalWidget extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  final Color? buttonColor;
  final Color? textColor;
  final double? buttonHeight;
  final double? buttonWidth;
  final EdgeInsetsGeometry? buttonPadding;
  final Widget? icon;
  final double? spacing;
  final bool isLoading; // Change this to bool

  const ButtonGlobalWidget({
    super.key,
    required this.text,
    required this.onTap,
    this.buttonColor,
    this.textColor,
    this.buttonHeight = 40,
    this.buttonWidth = 150,
    this.buttonPadding,
    this.icon,
    this.spacing,
    this.isLoading = false, // Set a default value for isLoading
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isLoading ? null : onTap, // Disable tap when loading
      customBorder: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Ink(
        // width: buttonWidth,
        height: buttonHeight,
        padding: buttonPadding,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: isLoading // Check isLoading state
              ? SizedBox(
                  width: 30, // Adjust width for loading indicator
                  height: 30, // Adjust height for loading indicator
                  child: LoadingIndicator(
                    indicatorType: Indicator.ballBeat,
                    strokeWidth: 4.0,
                    colors: [Theme.of(context).secondaryHeaderColor],
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (icon != null) ...[
                      icon!,
                      const SizedBox(
                          width: 8), // Add spacing between icon and text
                    ],
                    SizedBox(
                      width: spacing,
                    ),
                    Text(
                      text,
                      style:
                          TextConstant.poppinBold1.copyWith(color: textColor),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
