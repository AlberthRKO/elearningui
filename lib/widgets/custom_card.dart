import 'package:elearningui/theme/colors.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.imagenCourse,
    required this.videoCount,
    required this.titleCourse,
    required this.perfil,
    required this.name,
    required this.price,
  }) : super(key: key);

  final String imagenCourse, videoCount, titleCourse, perfil, name, price;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .6,
      alignment: Alignment.topCenter,
      padding: EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: textWhite,
        borderRadius: BorderRadius.circular(17),
        boxShadow: [
          BoxShadow(
            color: textBlack.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: size.width * .6,
                height: size.width * .6,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    imagenCourse,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: 7,
                bottom: 7,
                child: Container(
                  width: 90,
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: textWhite.withOpacity(0.7),
                  ),
                  child: Text(
                    videoCount + ' Videos',
                    style: TextStyle(
                      color: secondary,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Text(
              titleCourse,
              style: TextStyle(
                color: secondary,
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 30,
                  height: 30,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      perfil,
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
                Text(
                  '\$$price',
                  style: TextStyle(
                    color: primary,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
