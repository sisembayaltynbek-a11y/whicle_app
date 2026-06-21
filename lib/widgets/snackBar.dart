import 'dart:ui';
import 'package:flutter/material.dart';

class GlassSnackbar {
  static void show(
    BuildContext context, {
    String message = "You liked this product",
    IconData icon = Icons.check,
    Duration duration = const Duration(seconds: 2),
  }) {
    final overlay = Overlay.of(context);

    late OverlayEntry overlayEntry;

    overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        left: 20,
        right: 20,
        bottom: 40,
        child: Material(
          color: Colors.transparent,
          child: TweenAnimationBuilder(
            duration: const Duration(milliseconds: 400),
            tween: Tween<double>(begin: 100, end: 0),
            builder: (context, value, child) {
              return Transform.translate(
                offset: Offset(0, value),
                child: child,
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                child: Container(
                  height: 85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    border: Border.all(color: Colors.white.withOpacity(0.25)),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        const Color.fromARGB(255, 26, 255, 0).withOpacity(0.18),
                        const Color.fromARGB(
                          255,
                          230,
                          0,
                          255,
                        ).withOpacity(0.08),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.15),
                        blurRadius: 25,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Row(
                      children: [
                        Container(
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withOpacity(0.12),
                            border: Border.all(
                              color: Colors.white.withOpacity(0.2),
                            ),
                          ),
                          child: Icon(
                            icon,
                            color: const Color(0xffC8FFD4),
                            size: 30,
                          ),
                        ),

                        const SizedBox(width: 15),

                        Expanded(
                          child: Text(
                            message,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );

    overlay.insert(overlayEntry);

    Future.delayed(duration, () {
      overlayEntry.remove();
    });
  }
}
