import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instaverse/state/auth/providers/auth_state_provider.dart';
import 'package:instaverse/views/constatnts/app_colors.dart';
import 'package:instaverse/views/constatnts/strings.dart';
import 'package:instaverse/views/login/divider_with_margins.dart';
import 'package:instaverse/views/login/facebook_button.dart';
import 'package:instaverse/views/login/google_button.dart';
import 'package:instaverse/views/login/login_view_signup_links.dart';

class LoginView extends ConsumerWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          Strings.appName,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 40.0,
              ),
              Text(
                Strings.welcomeToAppName,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const DividerWithMargins(),
              Text(
                Strings.logIntoYourAccount,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      height: 1.5,
                    ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextButton(
                onPressed:
                    ref.read(authStateProvider.notifier).loginWithFacebook,
                style: TextButton.styleFrom(
                  backgroundColor: AppColors.loginButtonColor,
                  foregroundColor: AppColors.loginButtonTextColor,
                ),
                child: const FacebookButton(),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextButton(
                onPressed: ref.read(authStateProvider.notifier).loginWithGoogle,
                style: TextButton.styleFrom(
                  backgroundColor: AppColors.loginButtonColor,
                  foregroundColor: AppColors.loginButtonTextColor,
                ),
                child: const GoogleButton(),
              ),
              const DividerWithMargins(),
              const LoginViewSignupLink(),
            ],
          ),
        ),
      ),
    );
  }
}
