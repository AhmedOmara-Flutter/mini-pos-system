import 'package:el_king_store/core/utils/app_color.dart';
import 'package:el_king_store/features/home/presentation/widgets/build_modal_bottom_sheet.dart';
import 'package:flutter/material.dart';

class BuildFloatingActionButton extends StatelessWidget {
  const BuildFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          context: context,
          builder: (context) => BuildModalBottomSheet(),
        );
      },
      shape: CircleBorder(),
      backgroundColor: AppColor.gold,
      child: Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}
