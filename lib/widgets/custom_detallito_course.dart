import 'package:elearningui/theme/colors.dart';
import 'package:flutter/material.dart';

class CustomDetallitoCurso extends StatelessWidget {
  const CustomDetallitoCurso({
    Key? key,
    required this.profile,
    required this.name,
    required this.promedio,
    required this.skills,
  }) : super(key: key);

  final String profile, name, promedio, skills;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 30,
          height: 30,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              profile,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Flexible(
          child: Container(
            alignment: Alignment.centerLeft,
            // color: Colors.red,
            child: Text(
              name,
              style: TextStyle(
                fontSize: 13,
                color: secondary,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 15,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              promedio + ' - ' + skills + ' Ventas',
              style: TextStyle(
                color: secondary,
                fontSize: 13,
              ),
            ),
          ],
        )
      ],
    );
  }
}
