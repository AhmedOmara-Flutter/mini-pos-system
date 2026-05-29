import 'package:flutter/material.dart';

import '../../../../core/utils/style_manager.dart';

class ActivityTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String sub;
  final Color color;

  const ActivityTile({
    super.key,
    required this. icon,
    required this. title,
    required this. sub,
    required this. color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white.withOpacity(.02),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: color.withOpacity(.15),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(icon, color: color),
            ),

            const SizedBox(width: 14),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: StyleManager.font12Weight600),

                  const SizedBox(height: 6),

                  Text(sub, style: StyleManager.font11Weight600),
                ],
              ),
            ),

            Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white.withOpacity(.3),
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}
