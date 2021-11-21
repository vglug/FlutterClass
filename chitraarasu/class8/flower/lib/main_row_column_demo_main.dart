// ignore_for_file: unnecessary_this

// import 'package:class6app/row_colum/row_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RowColumnExample extends StatefulWidget {
  const RowColumnExample({Key? key}) : super(key: key);

  @override
  _RowColumnExampleState createState() => _RowColumnExampleState();
}

class _RowColumnExampleState extends State<RowColumnExample> {
  static const iconElements = <Widget>[
    Icon(Icons.stars, size: 50.0),
    Icon(Icons.stars, size: 100.0),
    Icon(Icons.stars, size: 50.0)
  ];

  bool _isRow = true;
  MainAxisSize _mainAxisSize = MainAxisSize.max;
  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.start;
  CrossAxisAlignment _crossAxisAlignment = CrossAxisAlignment.start;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Column Example"),
      ),
      body: _buildBodyUi(),
      bottomNavigationBar: _bootomNavUi(),
    );
  }

  Widget _buildBodyUi() {
    return Container(
      color: Colors.yellow,
      child: _isRow
          ? Row(
              mainAxisAlignment: _mainAxisAlignment,
              crossAxisAlignment: _crossAxisAlignment,
              mainAxisSize: _mainAxisSize,
              textBaseline: TextBaseline.alphabetic,
              children: iconElements,
            )
          : Column(
              mainAxisAlignment: _mainAxisAlignment,
              crossAxisAlignment: _crossAxisAlignment,
              mainAxisSize: _mainAxisSize,
              textBaseline: TextBaseline.alphabetic,
              children: iconElements,
            ),
    );
  }

  Widget _bootomNavUi() => Container(
        color: Colors.tealAccent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Radio<bool>(
                    value: true,
                    groupValue: this._isRow,
                    onChanged: (bool? value) {
                      setState(() {
                        this._isRow = value!;
                      });
                    }),
                Text("Row"),
                Radio<bool>(
                    value: false,
                    groupValue: this._isRow,
                    onChanged: (bool? value) {
                      setState(() {
                        this._isRow = value!;
                      });
                    }),
                Text("Column")
              ],
            ),
            ListTile(
              title: const Text("mainAxisSize: "),
              trailing: DropdownButton<MainAxisSize>(
                value: _mainAxisSize,
                onChanged: (MainAxisSize? newVal) {
                  if (newVal != null) {
                    setState(() => this._mainAxisSize = newVal);
                  }
                },
                items: MainAxisSize.values
                    .map((MainAxisSize val) => DropdownMenuItem(
                        value: val,
                        child: Text(
                            val.toString().substring('MainAxisSize'.length))))
                    .toList(),
              ),
            ),
            ListTile(
                title: const Text("mainAxisAlignement: "),
                trailing: DropdownButton<MainAxisAlignment>(
                  value: _mainAxisAlignment,
                  onChanged: (MainAxisAlignment? newVal) {
                    if (newVal != null) {
                      setState(() => this._mainAxisAlignment = newVal);
                    }
                  },
                  items: MainAxisAlignment.values
                      .map((MainAxisAlignment val) => DropdownMenuItem(
                          value: val,
                          child: Text(val
                              .toString()
                              .substring('MainAxisAlignment'.length))))
                      .toList(),
                )),
            ListTile(
              title: const Text("crossAxisAlignement: "),
              trailing: DropdownButton<CrossAxisAlignment>(
                value: _crossAxisAlignment,
                onChanged: (CrossAxisAlignment? newVal) {
                  if (newVal != null) {
                    setState(() => this._crossAxisAlignment = newVal);
                  }
                },
                items: CrossAxisAlignment.values
                    .map((CrossAxisAlignment val) => DropdownMenuItem(
                        value: val,
                        child: Text(val
                            .toString()
                            .substring('CrossAxisAlignment'.length))))
                    .toList(),
              ),
            ),
          ],
        ),
      );
}
