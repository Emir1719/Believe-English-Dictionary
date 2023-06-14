import 'package:flutter/material.dart';

class ProjectError extends StatelessWidget {
  const ProjectError({super.key, this.message});
  final message;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      alignment: Alignment.center,
      child: Column(
        children: [
          Image.asset("assets/images/error.png", width: 270),
          Text(message),
        ],
      ),
    );
  }
}
