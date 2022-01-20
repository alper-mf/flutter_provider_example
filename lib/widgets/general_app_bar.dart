import 'package:dusyeri_app/common/constant/sizes_constant.dart';
import 'package:dusyeri_app/common/constant/text_constat.dart';
import 'package:flutter/material.dart';

class GeneralAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final String title;
  final bool isQuest;
  dynamic state;

  GeneralAppBar({
    Key? key,
    required this.title,
    required this.state,
    required this.isQuest,
    this.height = kToolbarHeight,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text(title),
      centerTitle: true,
      actions: [
        Center(
          child: isQuest
              ? Text(TextConstant.quest)
              : Text(state.userViewModel!.userName.toString()),
        ),
        SizedBox(
          width: Sizes.allPadding,
        )
      ],
    );
  }
}
