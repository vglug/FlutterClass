import 'package:dio_networking/dio/dio_client.dart';
import 'package:dio_networking/model/data.dart';
import 'package:dio_networking/model/user.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DioClient _client = DioClient();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Info'),
      ),
      body: Center(
        child: FutureBuilder<User?>(
          future: _client.getUser(id: '2'),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              User? userInfo = snapshot.data;
              if (userInfo != null) {
                Data userData = userInfo.data;
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(userData.avatar),
                    SizedBox(height: 8.0),
                    Text(
                      '${userInfo.data.firstName} ${userInfo.data.lastName}',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Text(
                      userData.email,
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                );
              }
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
