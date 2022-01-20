import 'package:dusyeri_app/common/constant/color_constant.dart';
import 'package:dusyeri_app/common/constant/sizes_constant.dart';
import 'package:dusyeri_app/common/constant/text_constat.dart';
import 'package:dusyeri_app/screens/facilities_screen/facilities_model/facilities_model.dart';
import 'package:dusyeri_app/screens/facilities_screen/facilities_widgets/card_button.dart';
import 'package:dusyeri_app/screens/facilities_screen/facilities_widgets/favorite_box_button.dart';
import 'package:dusyeri_app/screens/facilities_screen/facilities_widgets/list_title_widget.dart';
import 'package:dusyeri_app/widgets/general_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FacilitiesView extends StatelessWidget {
  const FacilitiesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<FacilitiesViewModel>(
        builder: (context, state, widget) => Scaffold(
            backgroundColor: ColorConstant.secondColor,
            appBar: GeneralAppBar(
              title: TextConstant.facilities,
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
                  Visibility(
                    visible: state.userViewModel!.isQuest ? false : true,
                    child: ListTitle(
                      title: TextConstant.myFavoriteFacilities,
                    ),
                  ),
                  Visibility(
                      visible: state.userViewModel!.isQuest ? false : true,
                      child: Flexible(flex: 1, child: favoriteList(state))),
                  ListTitle(
                    title: TextConstant.allFacilities,
                  ),
                  Flexible(
                      flex: 1,
                      child: facilitiesList(
                          context, state, state.userViewModel!.isQuest))
                ],
              ),
            ))));
  }

  SizedBox facilitiesList(
      BuildContext context, FacilitiesViewModel state, bool isQuest) {
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
            return CardButton(
              item: item,
              isQuest: isQuest,
              onTap: () {
                state.addFavorite(index, item);
              },
            );
          }),
    );
  }

  GridView favoriteList(FacilitiesViewModel state) {
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
            state.fetchList();
            return const Text('Liste boş');
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
