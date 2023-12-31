import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moci_petcare/gen/assets.gen.dart';
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
        borderRadius: BorderRadius.all(
          Radius.circular(12.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Masuk',
            style: TypographyTheme.title1
                .copyWith(color: ColorApp.purpleLight // Color Primary,
                    ),
          ),
          Gap.h16,
          ClipRRect(
            borderRadius: BorderRadius.circular(8).r,
            child: Assets.images.kucing.image(),
          ),
          Gap.h16,
          ButtonWidget(
            text: 'Google',
            isLoading: state.isLoading,
            onTap: controller.fetchLogin,
          ),
          Gap.h16,
        ],
      ),
    );
  }
}
