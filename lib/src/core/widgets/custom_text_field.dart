import 'package:flutter/material.dart';
import 'package:my_project/src/core/resources/app_colors.dart';
import 'package:my_project/src/core/resources/text_styles.dart';
import 'package:my_project/src/feature/auth/widget/enum/text_field_state.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.decoration,
    this.focusNode,
    this.obscureText,
    this.readOnly,
    this.keyboardType,
  });

  final TextEditingController? controller;
  final InputDecoration? decoration;
  final FocusNode? focusNode;
  final bool? obscureText;
  final bool? readOnly;
  final TextInputType? keyboardType;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  TextFieldState state = TextFieldState.enabled;

  late final _focusNode = widget.focusNode ?? FocusNode();

  void _onFocusChanged() {
    if (_focusNode.hasFocus) {
      state = TextFieldState.focused;
    } else {
      state = TextFieldState.enabled;
    }
    setState(() {});
  }

  @override
  void initState() {
    _focusNode.addListener(_onFocusChanged);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: state.maybeWhen(
        orElse: () => const EdgeInsets.fromLTRB(12, 4, 12, 4),
        focused: () => const EdgeInsets.fromLTRB(12, 6, 12, 6),
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: state.color),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextFormField(
        keyboardType: widget.keyboardType,
        focusNode: _focusNode,
        readOnly: widget.readOnly ?? false,
        obscureText: widget.obscureText ?? false,
        style: TextStyles.body16,
        controller: widget.controller,
        decoration: widget.decoration?.copyWith(
          contentPadding: EdgeInsets.zero,
        ),
      ),
    );
  }
}
