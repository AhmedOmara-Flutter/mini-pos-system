import 'package:flutter/material.dart';

import '../../../../core/utils/style_manager.dart';
import '../../../../generated/assets.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 10,
        right: 10,
        bottom: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(Assets.images.medhat2.path),
          ),
          SizedBox(),
          Column(
            children: [
              Text(' 👋 مرحبا بك', style: StyleManager.font11Weight600),
              Text('متجر اكسسوارات الموبيل', style: StyleManager.font12Weight600),
            ],
          ),
          SizedBox(width: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(7),
            child: Material(
              child: InkWell(
                onTap: () {
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Color(0xff0C131D),
                  ),
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
