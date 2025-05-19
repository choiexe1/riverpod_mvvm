import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
                    ElevatedButton(
                      child: Text('Hello, Flutter!'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
