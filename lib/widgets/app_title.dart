import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constant/constant.dart';
import 'package:flutter_pokedex/constant/ui_helper.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UIHelper.getAppTitleWidgetHeight(),
      child: Stack(
        children: [
          Padding(
            padding: UIHelper.getDefaultPadding(),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                Constants.title,
                style: Constants.getTitleTextStyle(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              Constants.pokeballImageUrl,
              width: UIHelper.getAppImagesWidgetHeight(),
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
