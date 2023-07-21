import 'package:flutter/material.dart';

class ProjectError extends StatelessWidget {
  const ProjectError({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      alignment: Alignment.center,
      child: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return Expanded(
              child: Column(
                children: [Image.asset("assets/images/error.png", width: 270), const Text("Kelime Bulunamadı")],
              ),
            );
          } else {
            return Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Image.asset("assets/images/error.png", width: 200), const Text("Kelime Bulunamadı")],
              ),
            );
          }
        },
      ),
    );
  }
}
