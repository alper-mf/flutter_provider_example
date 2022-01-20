import 'package:dusyeri_app/common/constant/color_constant.dart';
import 'package:dusyeri_app/common/constant/sizes_constant.dart';
import 'package:dusyeri_app/common/constant/text_constat.dart';
import 'package:dusyeri_app/screens/attention_screen/model/attention_model.dart';
import 'package:dusyeri_app/screens/attention_screen/widgets/attention_card.dart';
import 'package:dusyeri_app/screens/facilities_screen/facilities_model/facilities_model.dart';
import 'package:dusyeri_app/screens/facilities_screen/facilities_widgets/favorite_box_button.dart';
import 'package:dusyeri_app/widgets/general_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AttentionView extends StatelessWidget {
  const AttentionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AttentionViewModel>(
        builder: (context, state, widget) => Scaffold(
            backgroundColor: ColorConstant.secondColor,
            appBar: GeneralAppBar(
              title: TextConstant.attentions,
              state: state,
              isQuest: state.userViewModel!.isQuest,
            ),
            body: SafeArea(
                child: Container(
              padding: EdgeInsets.all(Sizes.allPadding),
              height: Sizes.kHeight(context),
              width: Sizes.kWidth(context),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                      flex: 1,
                      child: attentionList(
                          context, state, state.userViewModel!.isQuest))
                ],
              ),
            ))));
  }

  SizedBox attentionList(BuildContext context, dynamic state, bool isQuest) {
    return SizedBox(
      height: Sizes.kHeight(context),
      width: Sizes.kWidth(context),
      child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(
                height: Sizes.kPaddingH(context) / 2,
              ),
          shrinkWrap: true,
          itemCount: state.tempList.length,
          itemBuilder: (BuildContext context, index) {
            var item = state.tempList[index];
            return AttentionCard(
                title: item.title,
                subTitle: item.subTitle,
                isQuest: isQuest,
                onTap: () {
                  state.removeAttention(index, item);
                });
          }),
    );
  }

  GridView FavoriteList(FacilitiesViewModel state) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: state.tempList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 5.0,
          crossAxisSpacing: 5.0,
        ),
        itemBuilder: (BuildContext context, index) {
          var item = state.tempList[index];
          if (state.tempList.isEmpty) {
            return Text('Liste boş');
          }

          return item.favorite == true
              ? FavoriteBoxButton(
                  item: item,
                  onTap: () {
                    state.addFavorite(index, item);
                  },
                )
              : const SizedBox();
        });
  }
}
