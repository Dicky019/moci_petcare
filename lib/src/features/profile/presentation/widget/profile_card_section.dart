import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../gen/assets.gen.dart';
import '../profile_controller.dart';
import '/src/common_widgets/common_widgets.dart';
import '/src/constants/constants.dart';

class ProfileCardSection extends ConsumerWidget {
  const ProfileCardSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(profileControllerProvider);

    final email = controller.getUser?.email ?? "";
    final image = controller.getUser?.image;
    final name = controller.getUser?.name ?? "";

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50).r,
              child: image == null
                  ? Assets.images.kucing.image(height: 100.h)
                  : Image.network(
                      image,
                    ),
            ),
          ),
          Gap.h16,
          TitleValueTextWidget(
            title: "Name :",
            value: name,
          ),
          Divider(
            thickness: 2.h,
          ),
          TitleValueTextWidget(
            title: "Email :",
            value: email,
          ),
          Divider(
            thickness: 2.h,
          ),
          Gap.h16,
          ButtonWidget(
            text: 'Logout',
            onTap: () => controller.logout(context),
          ),
        ],
      ),
    );
  }
}

class TitleValueTextWidget extends StatelessWidget {
  const TitleValueTextWidget({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TypographyTheme.body2.copyWith(
              color: ColorApp.purpleLight,
              fontWeight: FontWeight.w600 // Color Primary,
              ),
        ),
        Text(
          value ?? "-",
          style: TypographyTheme.body2.copyWith(
              color: ColorApp.purpleLight,
              fontWeight: FontWeight.w600 // Color Primary,
              ),
        ),
      ],
    );
  }
}
