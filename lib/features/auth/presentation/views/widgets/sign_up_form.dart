import 'package:ecommerce/core/extensions/app_extentions.dart';
import 'package:ecommerce/core/extensions/app_regex.dart';
import 'package:flutter/material.dart';

import '../../../../../core/components/widgets/app_text_field.dart';
import '../../../../../core/components/widgets/main_button.dart';
import '../../../../../core/routes/routes.dart';
import 'navigate_text_widget.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FocusNode nameFocusNode = FocusNode();
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
            hintText: "Name",
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            validator: (value) {
              return Vildators.validateName(value);
            },
            controller: nameController,
            focusNode: nameFocusNode,
            editingComplete: () =>
                FocusScope.of(context).requestFocus(emailFocusNode),
          ),
          8.verticalSizedBox,
          AppTextField(
            hintText: "Email",
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            validator: (value) {
              return Vildators.validateEmail(value);
            },
            controller: emailController,
            focusNode: emailFocusNode,
            editingComplete: () =>
                FocusScope.of(context).requestFocus(passwordFocusNode),
          ),
          8.verticalSizedBox,
          AppTextField(
            hintText: "Password",
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            validator: (value) {
              return Vildators.validatePassword(value);
            },
            controller: passwordController,
            focusNode: passwordFocusNode, 
          ),
          16.verticalSizedBox,
          NavigateTextWidget(
            title: "Already have an account?",
            onTap: () {
              context.pushNamed(Routes.login);
            },
          ),
          32.verticalSizedBox,
          MainButton(
            title: "SIGN UP",
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
