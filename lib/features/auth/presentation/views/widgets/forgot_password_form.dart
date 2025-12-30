import 'package:ecommerce/core/extensions/app_extentions.dart';
import 'package:ecommerce/core/extensions/app_regex.dart';
import 'package:ecommerce/core/routes/routes.dart';
import 'package:flutter/material.dart';
import '../../../../../core/components/widgets/app_text_field.dart';
import '../../../../../core/components/widgets/main_button.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final TextEditingController emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final FocusNode emailFocusNode = FocusNode();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          AppTextField(
            hintText: "Email",
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.done,
            controller: emailController,
            focusNode: emailFocusNode,
            validator: (value) {
              return Vildators.validateEmail(value);
            },
          ),
          70.verticalSizedBox,
          MainButton(
            title: "SEND",
            onTap: () {
              _formKey.currentState!.reset();
              if (_formKey.currentState!.validate()) {
                context.pushNamed(Routes.login);
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
