import 'package:flutter/material.dart';
import 'package:router/utils/routes_name.dart';

class ScreenTwo extends StatefulWidget {
  dynamic data;
  ScreenTwo({super.key, required this.data,});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.data['Name']} ${widget.data['Age']}"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, RouteName.screenThree);
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.green
                ),
                child: const Center(
                  child: Text('Screen 2'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
