import 'package:elearningui/theme/colors.dart';
import 'package:elearningui/theme/padding.dart';
import 'package:flutter/material.dart';

class CustomMyCurso extends StatelessWidget {
  const CustomMyCurso({
    Key? key,
    required this.image,
    required this.title,
    required this.name,
    required this.video,
    this.porcentaje = 0,
  }) : super(key: key);

  final String image, title, name, video;
  final double porcentaje;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.width * .3,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: textWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: size.width * .13,
            child: Row(
              children: [
                SizedBox(
                  width: size.width * .13,
                  height: size.width * .13,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: miniSpacer,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 13,
                          color: secondary,
                          fontWeight: FontWeight.w700,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                              'Instructor: ' + name,
                              style: TextStyle(
                                fontSize: 11,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            '6/' + video,
                            style: TextStyle(fontSize: 11),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // seccion del porcentaje
          Row(
            children: [
              Flexible(
                child: Stack(
                  alignment: Alignment.centerLeft,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: size.width,
                      height: 5,
                      decoration: BoxDecoration(
                        color: secondary.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    Container(
                      width: porcentaje * 2.1,
                      height: 7,
                      decoration: BoxDecoration(
                        color: primary,
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                            color: primary.withOpacity(0.5),
                            blurRadius: 6,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: miniSpacer * 2,
              ),
              Container(
                width: 50,
                alignment: Alignment.centerRight,
                child: Text(
                  porcentaje.toString() + '%',
                  style: TextStyle(
                    fontSize: 13,
                    color: primary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
