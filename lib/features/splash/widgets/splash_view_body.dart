import 'dart:async';

import 'package:el_king_store/core/utils/style_manager.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/route_manager.dart';
import '../../../generated/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  Timer? _timer;

  @override
  void initState() {
    goToHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Center(child: Image.asset(Assets.images.kingLogo.path, fit: BoxFit.fill)),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(color: Colors.amber, strokeWidth: 2),
              SizedBox(height: 10),
              Text('جاري التحميل', style: StyleManager.font13Weight400),
            ],
          ),
        ),
      ],
    );
  }

  void goToHome() {
    _timer = Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, RouteManager.main);
    });
  }

  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }
}
