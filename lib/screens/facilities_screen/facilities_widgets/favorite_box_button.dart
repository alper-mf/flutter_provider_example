import 'package:dusyeri_app/common/constant/sizes_constant.dart';
import 'package:dusyeri_app/data/models/item_model.dart';
import 'package:flutter/material.dart';

class FavoriteBoxButton extends StatelessWidget {
  final ItemModel item;
  final GestureTapCallback? onTap;
  const FavoriteBoxButton({
    Key? key,
    required this.item,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
          width: 1,
        )),
        child: Stack(
          children: [
            Center(
              child: Text(item.name),
            ),
            Positioned(
                right: Sizes.kWidth(context) * .02,
                top: Sizes.kHeight(context) * .01,
                child: Icon(item.favorite
                    ? Icons.favorite
                    : Icons.favorite_border_outlined))
          ],
        ),
      ),
    );
  }
}
