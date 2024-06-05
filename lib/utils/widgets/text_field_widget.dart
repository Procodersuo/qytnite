import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../colors.dart';
import '../validator.dart';
class AppTextField extends StatelessWidget {
  final TextEditingController? controller;
  final Widget? icon;
  final Widget? action;
  final String? hint;
  final String? errorMessage;
  final Function(String)? onTextChanged;
  final TextInputType? inputType;
  final bool? isEnable;
  final int? maxLength;
  final String? guideTitle;
  final bool? obscureText;
  final bool? shouldRedirectToNextField;
  final String? regex;
  final int? maxLines;
  final FocusNode? focusNode;
  final Function(String)? onSubmit;
  final Function? onTap;
  final double? fontSize;
  final List<TextInputFormatter>? inputFormatter;
  final Color? fillColor;
  final Color? textColor;
  final String? label;

  const AppTextField({
    super.key,
    this.controller,
    this.icon,
    this.action,
    this.hint = "",
    this.guideTitle,
    this.errorMessage,
    this.maxLength = 50,
    this.maxLines = 1,
    this.onTextChanged,
    this.inputType,
    this.regex,
    this.focusNode,
    this.onSubmit,
    this.isEnable = true,
    this.obscureText = false,
    this.shouldRedirectToNextField = true,
    this.onTap,
    this.fontSize,
    this.inputFormatter,
    this.fillColor = MyAppColors.lightGray,
    this.textColor = MyAppColors.white,
    this.label = "",
  });

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    final TextEditingController effectiveController =
        controller ?? TextEditingController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        label!.isNotEmpty
            ? Padding(
          padding: EdgeInsets.only(bottom: screenHeight * 0.005),
          child: Text(
            label!,
            style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 10
          )
                .copyWith(color: MyAppColors.white),
          ),
        )
            : const SizedBox.shrink(),
        TextField(
          enableInteractiveSelection: false,
          onTap: () {
            if (onTap != null) onTap!();
          },
          onSubmitted: (value) {
            if (onSubmit != null) onSubmit!(value);
          },
          textAlign: isEnable! ? TextAlign.start : TextAlign.center,
          textAlignVertical: TextAlignVertical.center,
          showCursor: true,
          focusNode: focusNode,
          autofocus: false,
          enableSuggestions: false,
          autocorrect: false,
          controller: effectiveController,
          obscureText: obscureText!,
          obscuringCharacter: '*',
          textInputAction: shouldRedirectToNextField!
              ? TextInputAction.next
              : TextInputAction.done,
          enabled: isEnable,
          maxLines: maxLines,
          textCapitalization: TextCapitalization.sentences,
          maxLength: maxLength,
          inputFormatters: [
            if (inputFormatter != null) ...inputFormatter!,
            FilteringTextInputFormatter.deny(
              RegExp(Validator().emojiRegexp),
            ),
          ],
          style: TextStyle(
            fontSize: screenWidth * 0.03,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.0,
          ),
          keyboardType: inputType ?? TextInputType.text,
          decoration: InputDecoration(
              labelText: hint!.isNotEmpty ? hint : null,
              labelStyle:  const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 12
    )
                  .copyWith(color: textColor),
              floatingLabelStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 10,
              ),
              isDense: true,
              errorText: errorMessage,
              counterText: "",
              suffixIcon: action,
              filled: true,
              contentPadding: EdgeInsets.all(screenHeight * 0.02),
              fillColor: fillColor,
              border: OutlineInputBorder(
                borderSide: const BorderSide(width: 0, style: BorderStyle.none),
                borderRadius: BorderRadius.circular(100),
              )),
        ),
      ],
    );
  }
}

