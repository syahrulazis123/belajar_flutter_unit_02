import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Container(
              color: Colors.green,
              child: Image.network(
                "https://ssl.gstatic.com/docs/common/profile/cheetah_lg.png",
                height: 90,
                width: 90,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: Color.fromARGB(255, 19, 187, 156),
              child: Image.asset(
                "assets/cheetah_lg.png",
                height: 90,
                width: 90,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Back to Home Page"),
            )
          ],
        ),
      ),
    );
  }
}
