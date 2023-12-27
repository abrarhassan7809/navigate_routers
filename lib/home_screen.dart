import 'package:flutter/material.dart';
import 'package:router/utils/routes_name.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Router'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, RouteName.screenTwo,
                arguments: {
                  "Name": "Abrar",
                  "Age": 25,
                }
                );
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.green
                ),
                child: const Center(
                  child: Text('Screen 1'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
