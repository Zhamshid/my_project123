import 'package:flutter/material.dart';
import 'package:my_project/src/core/extensions/context.dart';
import 'package:my_project/src/core/resources/app_colors.dart';

class ValidatorErrorWidget extends StatefulWidget {
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final Function(String value)? onChanged;

  const ValidatorErrorWidget(
      {super.key, this.validator, this.controller, this.onChanged});

  @override
  State<ValidatorErrorWidget> createState() => _ValidatorErrorWidgetState();
}

class _ValidatorErrorWidgetState extends State<ValidatorErrorWidget> {
  bool hasError = false;

  @override
  void initState() {
    super.initState();
    widget.controller?.addListener(validate);
  }

  @override
  void dispose() {
    widget.controller?.removeListener(validate);
    super.dispose();
  }

  void validate() {
    final error = widget.validator?.call(widget.controller?.text);
    setState(() {
      hasError = error != null && error.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      height: hasError ? 30.0 : 0.0,
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        readOnly: true,
        enabled: true,
        onChanged: widget.onChanged,
        style: const TextStyle(
          color: Colors.transparent,
        ),
        validator: widget.validator,
        controller: widget.controller,
        cursorHeight: 0,
        textAlignVertical: TextAlignVertical.top,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.zero,
          errorStyle: context.theme.textTheme.labelLarge?.copyWith(
            color: AppColors.red,
          ),
        ),
      ),
    );
  }
}
