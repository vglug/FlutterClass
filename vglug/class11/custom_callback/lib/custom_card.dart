

import 'package:flutter/material.dart';

class MyCustomWidget extends StatelessWidget {
  final VoidCallback onTap;
  const MyCustomWidget({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4.0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    child: Text('VPM'),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('VGLUG'),
                          Text('vpmglug@gmail.com')
                        ],
                      ),
                    ),
                  ),
                  const Icon(Icons.star_border)
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  'Villupuram GNU/Linux Users Group (Villupuram GLUG) is a non profit organization started in 2013, Impression of worldwide Free and Open Source Software movement. This organization is a social movement that works towards enlightening the masses with the essence of free software and to liberate knowledge.',
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}