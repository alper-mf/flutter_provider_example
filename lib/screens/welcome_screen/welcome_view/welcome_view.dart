import 'package:dusyeri_app/common/constant/color_constant.dart';
import 'package:dusyeri_app/common/constant/sizes_constant.dart';
import 'package:dusyeri_app/common/constant/text_constat.dart';
import 'package:dusyeri_app/screens/welcome_screen/welcome_model/welcome_model.dart';
import 'package:dusyeri_app/screens/welcome_screen/welcome_widgets/c_rounded_button.dart';
import 'package:dusyeri_app/screens/welcome_screen/welcome_widgets/image_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<WelcomeModel>(builder: (context, state, widget) {
      return Scaffold(
          backgroundColor: ColorConstant.secondColor,
          appBar: AppBar(
            elevation: 0,
            title: Text(TextConstant.welcome),
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: () {
                    state.logout(context);
                  },
                  icon: const Icon(Icons.exit_to_app)),
            ],
          ),
          body: SafeArea(
              child: Column(
            children: <Widget>[
              const ImageWidget(),
              const Spacer(
                flex: 1,
              ),
              Flexible(
                flex: 6,
                child: Wrap(
                  alignment: WrapAlignment.spaceAround,
                  spacing: Sizes.kPaddingW(context) * 5,
                  children: [
                    CRoundedButton(
                      text: TextConstant.facilities,
                      onTap: () {
                        state.facilitiesOnTapButton(context);
                      },
                    ),
                    CRoundedButton(
                      text: TextConstant.attentions,
                      onTap: () {
                        state.attentionOnTapButton(context);
                      },
                    ),
                  ],
                ),
              ),
            ],
          )));
    });
  }
}
