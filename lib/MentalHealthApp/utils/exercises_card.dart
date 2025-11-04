import 'package:flutter/material.dart';

class ExercisesCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget leadingIcon;
  final Widget trailingIcon;

  const ExercisesCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.leadingIcon,
    required this.trailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(20)),
        child: ListTile(
          leading: leadingIcon,
          title: Text(title),
          subtitle: Text(subtitle),
          trailing: trailingIcon,
        ),
      ),
    );
  }
}
