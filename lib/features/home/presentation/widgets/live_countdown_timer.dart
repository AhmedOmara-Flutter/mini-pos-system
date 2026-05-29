import 'dart:async';

import 'package:flutter/material.dart';

class LiveCountdownTimer extends StatefulWidget {
  final int durationSeconds;

  const LiveCountdownTimer({super.key, required this.durationSeconds});

  @override
  State<LiveCountdownTimer> createState() => _LiveCountdownTimerState();
}

class _LiveCountdownTimerState extends State<LiveCountdownTimer> {
  late int remaining;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    remaining = widget.durationSeconds;
    start();
  }

  void start() {
    timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (remaining > 0) {
        setState(() {
          remaining--;
        });
      } else {
        // ⛔ انتهى الوقت

        //action
        //  customShowSnakeBar(context, color: Colors.red, label: 'الوقت انتهي برجاء تسجيل البيع');
        // 🔄 إعادة التشغيل
        setState(() {
          remaining = widget.durationSeconds;
        });
      }
    });
  }

  double get progress => remaining / widget.durationSeconds;

  Color get dynamicColor {
    if (progress > 0.5) return Colors.greenAccent;
    if (progress > 0.2) return Colors.orangeAccent;
    return Colors.redAccent;
  }

  String format(int s) {
    final h = s ~/ 3600;
    final m = (s % 3600) ~/ 60;
    final sec = s % 60;

    return "${h.toString().padLeft(2, '0')}:"
        "${m.toString().padLeft(2, '0')}:"
        "${sec.toString().padLeft(2, '0')}";
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        /// ⏳ TIMER PILL
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.10),
                Colors.white.withOpacity(0.04),
              ],
            ),
            border: Border.all(color: Colors.white.withOpacity(0.12)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 12,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Row(
            children: [
              /// PROGRESS RING
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 25,
                    height: 25,
                    child: CircularProgressIndicator(
                      value: progress,
                      strokeWidth: 2,
                      backgroundColor: Colors.white.withOpacity(0.1),
                      valueColor: AlwaysStoppedAnimation(dynamicColor),
                    ),
                  ),
                  Icon(Icons.timer_outlined, size: 15, color: dynamicColor),
                ],
              ),

              const SizedBox(width: 8),

              Text(
                format(remaining),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.5,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.4,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
