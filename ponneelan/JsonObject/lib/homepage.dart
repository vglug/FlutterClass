import 'package:flutter/material.dart';
class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("API Integration"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 250,
              width: 250,
              child: Image.network("https://villupuramglug.files.wordpress.com/2017/11/vpm_original.png"),
            ),
            SizedBox(height: 30,),
            Text("VGLUG Foundation",style: TextStyle(fontSize: 30),),
            SizedBox(height: 30,),
            Text("Villupuram",style: TextStyle(fontSize: 30),),

          ],
        ),),
       
      ),
    );
  }
}