import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_mvvm/presentation/components/form_button.dart';
import 'package:riverpod_mvvm/presentation/components/input_form_field.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                child: Form(
                  child: Column(
                    spacing: 12,
                    children: [
                      InputFormField(
                        label: Text(
                          'Email',
                          style: TextTheme.of(context).labelMedium,
                        ),
                      ),
                      InputFormField(
                        label: Text(
                          'Password',
                          style: TextTheme.of(context).labelMedium,
                        ),
                        isObscure: true,
                      ),
                      FormButton(
                        label: Text(
                          '로그인',
                          style: TextStyle(color: Colors.white),
                        ),
                        icon: Icon(
                          Icons.arrow_circle_right_sharp,
                          color: Colors.white,
                        ),
                        onTap: () {},
                      ),
                      Row(
                        spacing: 8,
                        children: [
                          Expanded(
                            child: BaseButton(
                              onTap: () {},
                              text: Text(
                                '아이디 찾기',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Expanded(
                            child: BaseButton(
                              onTap: () {},
                              text: Text(
                                '패스워드 찾기',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BaseButton extends StatelessWidget {
  final Text text;
  final Color backgroundColor;
  final VoidCallback onTap;

  const BaseButton({
    super.key,
    required this.text,
    required this.onTap,
    this.backgroundColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(child: text),
      ),
    );
  }
}
