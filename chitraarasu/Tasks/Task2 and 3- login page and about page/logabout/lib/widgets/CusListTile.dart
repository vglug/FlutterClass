import 'package:flutter/material.dart';

class CusLT extends StatelessWidget {
  final url;
  final text;
  final subTitle;

  CusLT(this.url, this.text, this.subTitle);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image(image: AssetImage(url), width: 100),
      title: Text(text),
      subtitle: Text(subTitle),
    );
  }
}
