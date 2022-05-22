import 'package:elearningui/data/category_json.dart';
import 'package:elearningui/pages/seccion_page.dart';
import 'package:elearningui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCategoryCard extends StatelessWidget {
  const CustomCategoryCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(homePageCategoryJson.length, (index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SeccionPage()),
              );
            },
            child: Container(
              height: size.width * .25,
              width: size.width * .25,
              padding: const EdgeInsets.all(10.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: textWhite,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: textBlack.withOpacity(0.05),
                    blurRadius: 15.0,
                    offset: const Offset(0, 7),
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 35.0,
                    width: 35.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: primary.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                          color: primary.withOpacity(0.5),
                          spreadRadius: 0.0,
                          blurRadius: 6.0,
                          offset: const Offset(0, 2),
                        )
                      ],
                    ),
                    child: SvgPicture.asset(
                      homePageCategoryJson[index]['icon'],
                      color: textWhite,
                      width: 15.0,
                    ),
                  ),
                  Text(
                    homePageCategoryJson[index]['title'],
                    style: const TextStyle(
                      color: secondary,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
