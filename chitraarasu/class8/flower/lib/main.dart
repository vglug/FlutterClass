import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarWidget(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            _textWidget(),
            _sizedBoxWidget(),
            _iconWidget(),
            _sizedBoxWidget(),
            _imageFromAsset(),
            _sizedBoxWidget(),
            _imageFromInternet(),
            _sizedBoxWidget(),
            _circleAvatarWidget(),
            _sizedBoxWidget(),
            _textFieldWidget(),
            _sizedBoxWidget(),
            _buttonWidget(),
            _sizedBoxWidget(),
            _textFormFieldWidget(),
            _sizedBoxWidget(),
            _dropDownButtonWidget(),
            _sizedBoxWidget(),
            _switchWidget(),
            _sizedBoxWidget(),
            _checkBoxWidget(),
            _sizedBoxWidget(),
            _radioButtonWidget(),
            _sizedBoxWidget(),
            _linearProgressIndicatorWidget(),
            _sizedBoxWidget(),
            _circularProgressIndicatorWidget(),
            _sizedBoxWidget(),
            _dividerWidget(),
            _sizedBoxWidget(),
            _sliderWidget(),
            _sizedBoxWidget(),
            _snackBarWidget(),
            _sizedBoxWidget(),
            _dividerWidget(),
            _sizedBoxWidget(),
            _dividerWidget(),
          ],
        ),
      ),
    );
  }

  AppBar _appBarWidget() {
    return AppBar(
      title: Text(widget.title),
      backgroundColor: Colors.red,
      leading: const Icon(Icons.face),
      actions: <Widget>[
        IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
        PopupMenuButton(itemBuilder: (BuildContext context) {
          return [
            const PopupMenuItem(child: Text('About')),
            const PopupMenuItem(child: Text('Contact')),
          ];
        })
      ],
    );
  }

  Widget _sizedBoxWidget() {
    return const SizedBox(
      height: 20,
    );
  }

  Widget _textWidget() {
    return const Text(
      "Hello welcome",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.lightBlueAccent,
        fontSize: 32.0,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.underline,
      ),
    );
  }

  Widget _iconWidget() {
    return Icon(
      Icons.image,
      size: 64.0,
      color: Theme.of(context).primaryColor,
    );
  }

  Widget _imageFromAsset() {
    // Image.asset('images/flower_1.jpeg');
    return const Image(
      image: AssetImage('images/flower_1.jpeg'),
      height: 100,
      width: 250,
    );
  }

  Widget _imageFromInternet() {
    return const Image(
        height: 100,
        width: 100,
        image: NetworkImage(
            "https://villupuramglug.files.wordpress.com/2017/11/vpm_original.png"));
  }

  Widget _circleAvatarWidget() {
    return const CircleAvatar(
      radius: 70,
      backgroundImage: NetworkImage(
          "https://10wallpaper.com/wallpaper/1920x1440/1702/Pink_Gesang_Flower-2017_Flowers_HD_Wallpapers_1920x1440.jpg"),
    );
  }

  Widget _buttonWidget() {
    return ElevatedButton(onPressed: () {}, child: const Text("Click me"));
  }

  Widget _textFieldWidget() {
    return TextField(
      keyboardType: TextInputType.number,
      style: Theme.of(context).textTheme.subtitle1,
      decoration: const InputDecoration(
          icon: Icon(Icons.attach_money),
          label: Text('Enter price value'),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)))),
    );
  }

  String _email = "";
  Widget _textFormFieldWidget() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        icon: Icon(Icons.email),
        label: Text('E-mail'),
        hintText: 'Enter your email',
        border: OutlineInputBorder(),
        filled: true,
      ),
      onSaved: (String? emailVal) {
        this._email = emailVal!;
      },
    );
  }

  static const genderItems = <String>[
    "Male",
    "Female",
    "Transgender",
  ];

  final List<DropdownMenuItem<String>> _genderDropDownMenuItems = genderItems
      .map(
        (String gender) => DropdownMenuItem<String>(
          value: gender,
          child: Text(gender),
        ),
      )
      .toList();

  String _selectedGender = 'Male';
  Widget _dropDownButtonWidget() {
    return DropdownButton(
      value: _selectedGender,
      items: _genderDropDownMenuItems,
      onChanged: (String? newValue) {
        setState(() {
          _selectedGender = newValue ?? "Male";
        });
      },
    );
  }

  bool _swithState = false;
  Widget _switchWidget() {
    return Switch(
        value: this._swithState,
        onChanged: (bool newValue) {
          setState(() {
            this._swithState = newValue;
          });
        });
  }

  bool _checkBoxState = false;
  Widget _checkBoxWidget() {
    return Checkbox(
        value: this._checkBoxState,
        onChanged: (bool? newValue) {
          setState(() {
            this._checkBoxState = newValue ?? false;
          });
        });
  }

  int _radioValue = 0;
  Widget _radioButtonWidget() {
    return Row(
      children: [0, 1, 2, 3]
          .map((int e) => Radio<int>(
                value: e,
                groupValue: this._radioValue,
                onChanged: (int? newValue) {
                  setState(() {
                    this._radioValue = newValue ?? 0;
                  });
                },
              ))
          .toList(),
    );
  }

  Widget _linearProgressIndicatorWidget() {
    return const LinearProgressIndicator();
  }

  Widget _circularProgressIndicatorWidget() {
    return const CircularProgressIndicator();
  }

  Widget _dividerWidget() {
    // return VerticalDivider();
    return const Divider(
      color: Colors.red,
    );
  }

  double _sliderVal = 0.0;
  Widget _sliderWidget() {
    return Slider(
      value: _sliderVal,
      min: 0.0,
      max: 100.0,
      divisions: 5,
      label: '${_sliderVal.round()}',
      onChanged: (double newValue) {
        setState(() => _sliderVal = newValue);
      },
    );
  }

  Widget _snackBarWidget() {
    return ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: Text("Hi, Welcome"),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Text("Open SnackBar"));
  }

  // Not work in scroll view
  Widget _gridView() {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text("He'd have you all unravel at the"),
          color: Colors.teal[100],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Heed not the rabble'),
          color: Colors.teal[200],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Sound of screams but the'),
          color: Colors.teal[300],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Who scream'),
          color: Colors.teal[400],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Revolution is coming...'),
          color: Colors.teal[500],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Revolution, they...'),
          color: Colors.teal[600],
        ),
      ],
    );
  }
}
