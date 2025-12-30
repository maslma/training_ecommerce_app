import 'package:ecommerce/core/components/widgets/main_button.dart';
import 'package:ecommerce/core/extensions/app_extentions.dart';
import 'package:ecommerce/core/extensions/app_regex.dart';
import 'package:flutter/material.dart';
import '../../../../../core/components/widgets/app_text_field.dart';
import '../../../../../core/routes/routes.dart';
import 'navigate_text_widget.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextField(
            controller: emailController,
            hintText: "Email",
            focusNode: emailFocusNode,
            editingComplete: () =>
                FocusScope.of(context).requestFocus(passwordFocusNode),
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            validator: (value) {
              return Vildators.validateEmail(value);
            },
          ),
          8.verticalSizedBox,
          AppTextField(
            controller: passwordController,
            hintText: "Password",
            focusNode: passwordFocusNode,
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            validator: (value) {
              return Vildators.validatePassword(value);
            },
          ),
          16.verticalSizedBox,
          NavigateTextWidget(
            title: "Forgot your password?",
            onTap: () {
              context.pushNamed(Routes.forgotPassword);
            },
          ),
          32.verticalSizedBox,
          MainButton(
            title: "LOGIN",
            onTap: () {
              _formKey.currentState!.reset();
              if (_formKey.currentState!.validate()) {
                context.pushNamed(Routes.home);
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
