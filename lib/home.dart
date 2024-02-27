import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan.shade200,
        title: Row(
          children: [
            Icon(
              Icons.menu,
              color: Colors.black87,
              size: 30,
            ),
            Container(
              height: 40,
              width: 40,
              child: ClipRRect(
                child: Image.asset('assets/images/avatar.jpg'),
              ),
            )
          ],
        ),
      ),
      body: Container(
        child: Text('This is home scream.'),
      ),
    );
  }
}
