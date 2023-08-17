import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: const Color(0xff045b55),
        child: Column(
          children: [
            Container(child: Image.asset('assets/images/screen2.png')),
            const SizedBox(height: 0),
            const Text("Track Items \nTo Destination \nEvery Time",
                style: TextStyle(fontSize: 40, color: Colors.white),
                textAlign: TextAlign.center),
            const SizedBox(height: 30),
            const Text("Monitor the goods until \nthe destination",
                style: TextStyle(fontSize: 15, color: Colors.white),
                textAlign: TextAlign.center),
            const SizedBox(height: 60),
            Container(
              width: 350,
              height: 60,
              decoration: const BoxDecoration(
                color: Color(0xff96c448),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("GET STARTED",
                      style: TextStyle(
                          fontFamily: "Poppins-SemiBold", fontSize: 18)),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
