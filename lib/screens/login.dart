import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  //const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
        child: Column(
          children: [
            Image.asset(
              "Assets/Images/login1.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Welcome to Flutter',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'UserName',
                  hintText: 'Enter User Name',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.edit)),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.edit),
              ),
              obscureText: true,
              keyboardType: TextInputType.phone,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                print('Clicked Login');
              },
              child: Text('Login'),
              style: TextButton.styleFrom(),
            )
          ],
        ),
      ),
    );
  }
}
