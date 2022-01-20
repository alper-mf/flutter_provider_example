import 'package:dusyeri_app/common/constant/color_constant.dart';
import 'package:dusyeri_app/data/models/item_model.dart';
import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  final ItemModel item;
  final GestureTapCallback? onTap;
  final bool isQuest;
  const CardButton({
    Key? key,
    required this.item,
    required this.isQuest,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: !isQuest ? onTap : () {},
      child: ListTile(
        title: Text(item.name),
        trailing: Visibility(
          visible: isQuest ? false : true,
          child: IconButton(
              onPressed: onTap,
              icon: Icon(
                  item.favorite ? Icons.favorite : Icons.favorite_outline)),
        ),
      ),
      style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: ColorConstant.secondColor,
          side: BorderSide(width: 1, color: Colors.black.withOpacity(0.2))),
    );
  }
}
