import 'package:blog_app/core/theme/app_theme.dart';
import 'package:blog_app/features/auth/presentation/pages/signup_page.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static route() => MaterialPageRoute(
        builder: (context) => const SignupPage(),
      );

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign In.',
                // textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              AuthField(
                hintText: "Email",
                controller: emailController,
              ),
              const SizedBox(
                height: 15,
              ),
              AuthField(
                hintText: "Password",
                controller: passwordController,
                isObscureText: true,
              ),
              const SizedBox(
                height: 20,
              ),
              const AuthGradientButton(
                buttonText: "Sign in",
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,LoginPage.route()
                  );
                },
                child: RichText(
                  text: TextSpan(
                    text: 'Don\'t have an account? ',
                    style: Theme.of(context).textTheme.titleMedium,
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Sign up',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                color: AppPallete.gradient1,
                                fontWeight: FontWeight.bold),
                      )
                      //style: TextStyle(fontWeight: FontWeight.bold, color:TextS )),
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

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
