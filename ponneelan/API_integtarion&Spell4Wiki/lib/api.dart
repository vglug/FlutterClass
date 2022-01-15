import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';

class Album {
  final String Image;
  final String Name;
  final String Location;
  final String Pincode;
  
  Album({
  required this.Image,
  required this.Location ,
  required this.Name ,
  required this.Pincode,
  });
    
   factory Album.fromJson(Map <String ,dynamic> json){
    return Album(
     Image: json['image'],
     Location: json['location'],
     Name: json['name'],
     Pincode:json['pincode']);
   } 
  }

  Future<Album> fetchalbum() async{
    final response =await http.get(Uri.parse('https://raw.githubusercontent.com/ViluppuramGLUG/FlutterClass/main/vglug/test.json'));
    if (response.statusCode==200){
      return Album.fromJson(jsonDecode(response.body));
    }
    else {
      throw Exception("failed to load");
    }
      }


class api extends StatefulWidget {
  api({Key? key}) : super(key: key);

  @override
  _apiState createState() => _apiState();
}

class _apiState extends State<api> {
  late Future<Album> futureAlbum;
  @override
  void initState(){
    super.initState();
    futureAlbum=fetchalbum();
  }
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("API Integration"),
        ),
        body: Center(
          
          child:FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                      Image.network(snapshot.data!.Image,height: 200,width: 200,colorBlendMode: BlendMode.multiply,),
                      SizedBox(height: 30,),
                      Text(snapshot.data!.Name.toString(),style: TextStyle(fontSize: 30,color: Colors.black),),
                      SizedBox(height: 10,),
                      Text(snapshot.data!.Location.toString(),style: TextStyle(fontSize: 20,color: Colors.black),),
                      SizedBox(height: 10,),
                      Text(snapshot.data!.Pincode.toString(),style: TextStyle(fontSize: 15,color: Colors.black),),
                      
                  ],
                );
                
              }
              else if (snapshot.hasError){
                return Text('Error :${snapshot.error} ');
              }
              else{
                return CircularProgressIndicator();
              }
            },
          ),
        ),
      ),
      
    );
  }
}