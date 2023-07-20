import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '/src/constants/constants.dart';
import '/src/features/authentication/presentation/login_controller.dart';
import '/src/routing/app_route.dart';

class HomeHeaderSection extends ConsumerWidget {
  const HomeHeaderSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeApp.w24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Persuratan',
                style: TypographyTheme.title1.copyWith(
                  color: ColorApp.pureWhite,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Periode 2021/2022',
                    style: TypographyTheme.body.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: ColorApp.pureWhite,
                    ),
                  )
                ],
              )
            ],
          ),
          IconButton(
            onPressed: () {
              ref.read(loginControllerProvider.notifier).logout();
              context.goNamed(Routes.login.path);
            },
            icon: Icon(
              Icons.more_vert_outlined,
              color: ColorApp.pureWhite,
              size: SizeApp.h28,
            ),
          )
        ],
      ),
    );
  }
}
