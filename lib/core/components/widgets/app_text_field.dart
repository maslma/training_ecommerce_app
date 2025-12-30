import 'package:ecommerce/core/extensions/app_extentions.dart';
import 'package:ecommerce/core/theme/app_colors.dart';
import 'package:ecommerce/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    required this.hintText,
    this.keyboardType,
    this.controller,
    this.textInputAction,
    this.onChanged,
    this.validator,
    this.focusNode,
    this.editingComplete,
  });
  final String hintText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final FocusNode ? focusNode;
  final void Function(String)? onChanged;
  final VoidCallback? editingComplete;
  final String? Function(String?)? validator;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  String? _errorText;
  bool _isValid = false;

  void _validate(String value) {
    if (widget.validator != null) {
      final error = widget.validator!(value);

      setState(() {
        _errorText = error;
        _isValid = error == null;
      });
    }
    if (widget.onChanged != null) {
      widget.onChanged!(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      cursorColor: AppColors.blackColor,
      style: AppTextStyles.font14DarkGrayWeight500,
      keyboardType: widget.keyboardType,
      onChanged: _validate,
      focusNode: widget.focusNode,
      onEditingComplete: widget.editingComplete,
      validator: (value) {
        final error = widget.validator?.call(value);
        WidgetsBinding.instance.addPostFrameCallback((_) {
          setState(() {
            _errorText = error;
            _isValid = error == null;
          });
        });
        return error;
      },
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: AppTextStyles.font14GrayWeight500,
        fillColor: AppColors.whiteColor, 
        filled: true,
        border: OutlineInputBorder(
          borderRadius: 4.allBorderRadius,
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: 4.allBorderRadius,
          borderSide: BorderSide(
            color: _isValid ? AppColors.successColor : AppColors.whiteColor,
            width: 1.5,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: 4.allBorderRadius,
          borderSide: BorderSide(color: AppColors.errorColor, width: 1.5),
        ),
        suffixIcon: _errorText != null && _errorText!.isNotEmpty
            ? Icon(Icons.close, color: AppColors.errorColor)
            : _isValid
            ? Icon(Icons.check, color: AppColors.successColor)
            : null,
        errorStyle: AppTextStyles.font11ErrorWeight400,
      ),
    );
  }
}
