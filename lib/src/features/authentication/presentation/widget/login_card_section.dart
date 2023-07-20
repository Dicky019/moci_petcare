import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/src/common_widgets/common_widgets.dart';
import '/src/constants/constants.dart';
import '/src/features/authentication/presentation/login_controller.dart';
import '/src/features/authentication/presentation/login_state.dart';
import '/src/services/remote/config/config.dart';
import '/src/utils/extension/build_context_extension.dart';

class LoginCardSection extends ConsumerWidget {
  const LoginCardSection({Key? key}) : super(key: key);

  void _loginListen(
    BuildContext context,
    WidgetRef ref,
  ) {
    ref.listen<LoginState>(
      loginControllerProvider,
      (_, state) {
        state.value.whenOrNull(
          data: (data) {
            if (data != null) {
              context.goToHomeScreen(ref);
            }
          },
          error: (error, stackTrace) {
            final message = NetworkExceptions.getErrorMessage(
              error as NetworkExceptions,
            );
            log(message);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(loginControllerProvider.notifier);
    final state = ref.watch(loginControllerProvider);

    _loginListen(context, ref);

    return Container(
      padding: EdgeInsets.all(
        SizeApp.w16,
      ),
      margin: EdgeInsets.symmetric(horizontal: SizeApp.w24),
      decoration: BoxDecoration(
          color: ColorApp.pureWhite,
          borderRadius: BorderRadius.all(Radius.circular(12.r))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Masuk',
            style: TypographyTheme.title2.copyWith(
              color: ColorApp.purpleLight,
            ),
          ),
          Gap.h16,
          InputFormWidget(
            keyForm: GlobalKey<FormState>(),
            isLoading: false,
            onSubmit: () {},
            children: [
              TextFieldWidget(
                hintText: "username",
                textEditingController: controller.emailController,
              ),
              TextFieldWidget(
                hintText: "password",
                textEditingController: controller.passwordController,
              ),
            ],
          ),
          ButtonWidget(
            text: 'Masuk',
            isLoading: state.isLoading,
            onTap: controller.fetchLogin,
          ),
          Gap.h12,
        ],
      ),
    );
  }
}
