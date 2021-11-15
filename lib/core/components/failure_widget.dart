import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_book/global/constants/app_colors.dart';
import '../extensions/context_extension.dart';

class FailureWidget extends StatelessWidget {
  FailureWidget(
      {Key? key,
      required this.onTryAgain,
      this.title,
      this.subtitle,
      this.buttonText,
      this.icon})
      : super(key: key);

  final VoidCallback onTryAgain;
  String? title;
  String? subtitle;
  String? buttonText;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: context.getWidth(0.9),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: context.getHeight(0.01),
          ),
          Icon(icon ?? Icons.sentiment_dissatisfied,
              size: context.getWidth(0.1)),
          SizedBox(
            height: context.getHeight(0.02),
          ),
          Flexible(child: buildTitleText(context)),
          SizedBox(
            height: subtitle != null
                ? context.getHeight(0.025)
                : context.getHeight(0.005),
          ),
          Flexible(child: buildSubtitleText(context)),
          SizedBox(
              height: (buttonText != null && title != null)
                  ? context.getHeight(0.03)
                  : 0),
          Flexible(flex: 30, child: buildTryAgainButton(context)),
          SizedBox(height: context.getHeight(0.015)),
        ],
      ),
    );
  }

  SizedBox buildSubtitleText(BuildContext context) {
    if (subtitle != null) {
      return SizedBox(
        width: context.getWidth(0.9),
        child: AutoSizeText(
          subtitle!,
          style: TextStyle(
              color: Colors.grey,
              fontSize: context.getWidth(0.04),
              fontWeight: FontWeight.w300),
          textAlign: TextAlign.center,
          minFontSize: 6,
        ),
      );
    } else {
      return SizedBox();
    }
  }

  SizedBox buildTitleText(BuildContext context) {
    return SizedBox(
      width: context.getWidth(0.9),
      child: AutoSizeText(
        title ?? "Something went wrong. Please try again",
        style: TextStyle(
            color: Colors.black,
            fontSize: context.getWidth(0.04),
            fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
        minFontSize: 6,
      ),
    );
  }

  Widget buildTryAgainButton(BuildContext context) {
    if (buttonText == null && title != null) {
      return SizedBox();
    }
    return Container(
      width: context.getWidth(0.6),
      child: ElevatedButton(
        onPressed: onTryAgain,
        child: AutoSizeText(
          buttonText ?? "Try Again",
          style:
              TextStyle(color: Colors.white, fontSize: context.getWidth(0.045)),
          textAlign: TextAlign.center,
          maxLines: 1,
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
      ),
    );
  }
}
