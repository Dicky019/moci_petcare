import 'package:flutter/material.dart';
import '/src/common_widgets/common_widgets.dart';
import '/src/constants/constants.dart';

class ModalBottomSheetHelper {
  static void showModalBottomSheetHelper(BuildContext context) {
    final itemCategory = [
      ModalBottomSheet("SP", () {}),
      ModalBottomSheet("Reshuffle", () {
        // context.pushNamed(Routes.suratKeluarReshuffle.path);
      }),
      ModalBottomSheet("Pemecatan", () {}),
    ];

    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
        isScrollControlled: true,
        enableDrag: true,
        isDismissible: true,
        context: context,
        builder: (BuildContext context) {
          return DraggableScrollableSheet(
            expand: false,
            initialChildSize: 0.3,
            minChildSize: 0.13,
            maxChildSize: 1.0,
            builder: (context, scrollController) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SingleChildScrollView(
                    controller: scrollController,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Icon(
                            Icons.horizontal_rule_rounded,
                            color: ColorApp.halfGrey,
                            size: 60,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      "Kategori Surat",
                      style: TypographyTheme.title2.copyWith(
                        color: ColorApp.navyBlack,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      controller: scrollController,
                      padding: const EdgeInsets.all(16.0),
                      itemCount: itemCategory.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: CardWidget.suratCategory(
                              suratName: itemCategory[index].name,
                              onTap: itemCategory[index].onTap),
                        );
                      },
                    ),
                  )
                ],
              );
            },
          );
        });
  }
}

class ModalBottomSheet {
  final String name;
  final VoidCallback onTap;

  ModalBottomSheet(this.name, this.onTap);
}
