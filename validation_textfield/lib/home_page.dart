import 'package:flutter/material.dart';
import 'controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Validation TextField',
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 150,
                ),
                Container(
                  width: 300,
                  margin: EdgeInsets.only(top: 50),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Fill the blanks';
                      }
                    },
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: 'Name',
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 300,
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Fill the blanks';
                      }
                    },
                    obscureText: true,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  color: Colors.grey[300],
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    setState(() {
                      if (formKey.currentState.validate()){}
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
 I hope you liked this litte tutorial , where i teach how to use validate in textField
 if you want more tutorial , commment bellow 
so subscribe , that's  how you can help[ this channel to grow up , we're together bye bye 

*/