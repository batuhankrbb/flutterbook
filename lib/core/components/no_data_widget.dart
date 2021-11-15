import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_book/core/extensions/context_extension.dart';
import 'package:flutter_book/global/constants/app_colors.dart';

class NoDataWidget extends StatelessWidget {
  const NoDataWidget(
      {Key? key, required this.onTryAgain, this.explanation, this.buttonText})
      : super(key: key);

  final VoidCallback onTryAgain;
  final String? explanation;
  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: context.getWidth(0.9),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 10,
            child: SizedBox(
              height: context.getWidth(0.015),
            ),
          ),
          Flexible(
            flex: 60,
            child: buildExplanationText(context),
          ),
          /*
          Flexible(
            flex: 10,
            child: SizedBox(
              height: context.getWidth(0.04),
            ),
          ),
          Flexible(flex: 50, child: buildTryAgainButton(context))
         */
          Flexible(
            flex: 10,
            child: SizedBox(
              height: context.getWidth(0.010),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTryAgainButton(BuildContext context) {
    return GestureDetector(
      onTap: onTryAgain,
      child: SizedBox(
        width: context.getWidth(0.4),
        child: AutoSizeText(
          buttonText ?? "Add Data",
          style: TextStyle(color: Colors.blue, fontSize: context.getWidth(0.5)),
          textAlign: TextAlign.center,
          maxLines: 1,
        ),
      ),
    );
  }

  SizedBox buildExplanationText(BuildContext context) {
    return SizedBox(
      width: context.getWidth(0.9),
      child: AutoSizeText(
        explanation ?? "Oh! You have no data. Would you like to add some?",
        style: TextStyle(color: Colors.black, fontSize: context.getWidth(0.04)),
        textAlign: TextAlign.center,
        minFontSize: 6,
      ),
    );
  }
}
