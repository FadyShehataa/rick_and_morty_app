import 'package:empty_widget/empty_widget.dart';
import 'package:flutter/material.dart';
import '../utils/assets_data.dart';

class NoInternetWidget extends StatelessWidget {
  const NoInternetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        EmptyWidget(
          title: 'No internet',
          subTitle: 'Please check your Internet connection',
          image: AssetsData.noInternet,
        ),
      ],
    );
  }
}
