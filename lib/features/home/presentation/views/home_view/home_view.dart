import 'package:dalel_app/core/constants/route_constant.dart';
import 'package:dalel_app/core/functions/custom_navigate.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
        actions: [IconButton(onPressed: (){
          FirebaseAuth.instance.signOut();
          customPushReplacementNavigate(context, AppRoute.signInView);
        }, icon: const Icon(Icons.logout_outlined))],
      ),
      body: const Center(
        child: Text(
          'HomeViewPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
