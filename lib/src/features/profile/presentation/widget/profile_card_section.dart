import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moci_petcare/src/utils/extension/string_extension.dart';

import '../../../../../gen/assets.gen.dart';
import '../profile_controller.dart';
import '/src/common_widgets/common_widgets.dart';
import '/src/constants/constants.dart';

class ProfileCardSection extends ConsumerWidget {
  const ProfileCardSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(profileControllerProvider);

    final name = controller.getUser?.name.toEmpty;
    final email = controller.getUser?.email.toEmpty;
    final noHP = controller.getUser?.noHP.toEmpty;
    final image = controller.getUser?.image;

    getImage() => image == null
        ? Assets.images.kucing.image(
            height: 120.h,
            fit: BoxFit.cover,
          )
        : Image.network(
            image,
            height: 120.h,
            fit: BoxFit.cover,
          );

    return CardWidget.primary(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60.h),
              child: getImage(),
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
          TitleValueTextWidget(
            title: "No.HP :",
            value: noHP.isNullOrEmpty ? "-" : noHP,
          ),
          Divider(
            thickness: 2.h,
          ),
          Gap.h16,
          ButtonWidget(
            text: 'Logout',
            onTap: () async {
              final data = await showDialog<BuildContext>(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Logout'),
                  content: const Text('Apakah Anda Yakin?'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('TIDAK'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, context),
                      child: const Text(
                        'YA',
                        style: TextStyle(color: Colors.redAccent),
                      ),
                    ),
                  ],
                ),
              );

              if (data != null) {
                // ignore: use_build_context_synchronously
                controller.logout(data);
              }
            },
            // onTap: () => controller.logout(context),
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
            color: ColorApp.purpleDark,
            fontWeight: FontWeight.w800, // Color Primary,
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
