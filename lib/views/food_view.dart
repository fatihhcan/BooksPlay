import 'package:burgerfoodui/components/color/color.dart';
import 'package:burgerfoodui/core/extension/extension.dart';
import 'package:flutter/material.dart';

class FoodView extends StatefulWidget {
  FoodView({Key key}) : super(key: key);

  @override
  _FoodViewState createState() => _FoodViewState();
}

class _FoodViewState extends State<FoodView> {
  final url =
      "https://img.kitapyurdu.com/v1/getImage/fn:192802/wh:true/wi:256/pc:416";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        children: [
          Container(
            height: context.dynamicHeight(1), //sayfanın %50
            child: Column(
              children: [
                Expanded(child: buildCardBook()),
                Expanded(child: buildCardBook()),
                Expanded(child: buildCardBook()),
              ],
            ),
          )
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: oneColor,
      elevation: 0,
      title: Icon(Icons.search),
      leading: Icon(Icons.menu),
    );
  }

  Card buildCardBook() {
    return Card(
      child: ListTile(
        leading: Image.network(url),
        subtitle: Icon(Icons.play_arrow),
        title: Icon(Icons.favorite),
      ),
    );
  }
}
