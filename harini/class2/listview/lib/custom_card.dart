import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final Function nav;
  const CustomCard({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.nav,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: InkWell(
          onTap: () {
            nav();
          },
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
            width: double.infinity,
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Expanded(
                  flex: 5,
                  child: Image.asset(
                    imageUrl,
                  ),
                ),
                Expanded(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
