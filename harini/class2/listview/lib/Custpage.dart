import 'package:eb_task/widgets/textField.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../calculate.dart';
import 'cusButton.dart';

class CustPage extends StatefulWidget {
  final title;
  final page;
  final fHintText;
  final sHintText;
  final result;

  const CustPage(
      {Key? key,
      this.title,
      this.page,
      this.fHintText,
      this.sHintText,
      this.result})
      : super(key: key);

  @override
  State<CustPage> createState() => _CustPageState();
}

class _CustPageState extends State<CustPage> {
  @override
  void initState() {
    super.initState();
    Provider.of<Calculate>(context, listen: false).clean();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(),
          ),
          Expanded(
            flex: 6,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 100.0,
                      ),
                      CusTextField(widget.fHintText, 1),
                      if (widget.page == "RP")
                        CusTextField(widget.sHintText, 2),
                      CusButton("Calculate", () {
                        if (widget.page == "TP") {
                          Provider.of<Calculate>(context, listen: false)
                              .TariffCal();
                        } else {
                          Provider.of<Calculate>(context, listen: false)
                              .ReadingCalculator();
                        }
                      }),
                    ],
                  ),
                ),
                Positioned(
                  top: -50.0,
                  left: 75.0,
                  right: 75.0,
                  child: Card(
                    elevation: 5,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    color: Colors.orange,
                    child: SizedBox(
                      height: 100.0,
                      width: 100.0,
                      child: Center(
                        child: Text(
                          "${Provider.of<Calculate>(context).result} ₹",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(color: Colors.white, fontSize: 40.0),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
