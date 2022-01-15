import 'package:flutter/material.dart';
class spell4wiki extends StatelessWidget {
  const spell4wiki({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool value= false;
    return SafeArea(
      
      child: Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        
        padding: EdgeInsets.only(left: 30,right: 30,top:100),
        child: Column(
        
        children: <Widget>[
          
          
          Image.network('https://raw.githubusercontent.com/manimaran96/Spell4Wiki/master/files/assets/icons/spell4wiki-playstore.png',width: 100,height: 100,),
          SizedBox(height:10,width:double.infinity),
          Text("Wiki Login",style: TextStyle(color: Colors.blue,fontSize:25)),
          SizedBox(height:20,width:double.infinity),
          TextField(decoration: InputDecoration(  border: OutlineInputBorder(), 
          labelText: 'Username',
          hintText: 'Username',  )),
          SizedBox(height:15,width:double.infinity),
          TextField(decoration: InputDecoration(  border: OutlineInputBorder(), 
          labelText: 'Password',
          hintText: 'Password',  )),
          
          SizedBox(height:10,width:double.infinity),
          SizedBox(height: 40,width: 340,
          child: RaisedButton(  
                  textColor: Colors.white,  
                  color: Colors.blue,  
                  child: Text('Login'),  
                  onPressed: (){},)  ),
          SizedBox(height:10,width:double.infinity),
          FlatButton(onPressed: (){},
           child: Text("Forget your password?"),
           color: Colors.white,
          ),
          SizedBox(height:5,width:double.infinity),
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[
               OutlinedButton(
                      onPressed: (){},
                      style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
                      ),
                      child: const Text("Button text",style: TextStyle(color: Colors.blue),)
                  ),
              
                SizedBox(height:20,width:30),
              
                OutlinedButton(
                      onPressed: (){},
                      style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
                      ),
                      child: const Text("Button text",style: TextStyle(color: Colors.blue),)
                  ),
                  
              
            ],
          )
          

          
        
        ],
      ),)
      
    ));
    
  }
}