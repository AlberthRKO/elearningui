import 'package:elearningui/data/category_json.dart';
import 'package:elearningui/data/courses_json.dart';
import 'package:elearningui/data/user_profile.dart';
import 'package:elearningui/theme/colors.dart';
import 'package:elearningui/theme/padding.dart';
import 'package:elearningui/widgets/appbars.dart';
import 'package:elearningui/widgets/clipper.dart';
import 'package:elearningui/widgets/custom_card.dart';
import 'package:elearningui/widgets/custom_categories_button.dart';
import 'package:elearningui/widgets/custom_category_card.dart';
import 'package:elearningui/widgets/custom_heading.dart';
import 'package:elearningui/widgets/custom_promo.dart';
import 'package:elearningui/widgets/custom_search.dart';
import 'package:elearningui/widgets/custom_title.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      extendBodyBehindAppBar: true,
      appBar: getAppbar(Colors.transparent),
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              ClipPath(
                clipper: BottomClipper(),
                child: Container(
                  width: size.width,
                  height: 290,
                  color: secondary,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: appPadding),
                child: Column(
                  children: [
                    SizedBox(
                      height: spacer + 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomHeading(
                          title: 'Hola Alberth!',
                          subTitle: 'Empieza a aprender',
                          color: textWhite,
                        ),
                        SizedBox(
                          width: spacer,
                          height: spacer,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              userProfile['image'].toString(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: smallSpacer,
                    ),
                    CustomSearch(
                      hitText: 'Busca tu curso...',
                      background: background,
                    ),
                    SizedBox(
                      height: smallSpacer,
                    ),
                    CustomCategoryCard(),
                  ],
                ),
              )
            ],
          ),
          // CustomCategoryCard(),
          SizedBox(
            height: smallSpacer,
          ),
          CustomPromo(),
          SizedBox(
            height: smallSpacer,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: appPadding),
            child: CustomTitle(title: 'Cursos recientes'),
          ),

          // * Seccion de cursos recientes

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: appPadding, top: smallSpacer, bottom: smallSpacer),
              child: Row(
                children: List.generate(
                  coursesJson.length,
                  (index) => Padding(
                    padding: index == coursesJson.length - 1
                        ? EdgeInsets.only(right: appPadding)
                        : EdgeInsets.only(right: 10),
                    child: CustomCard(
                      imagenCourse: coursesJson[index]['image'],
                      videoCount: coursesJson[index]['video'],
                      titleCourse: coursesJson[index]['title'],
                      perfil: coursesJson[index]['user_profile'],
                      name: coursesJson[index]['user_name'],
                      price: coursesJson[index]['price'],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: appPadding),
            child: CustomTitle(title: 'Categorias'),
          ),
          SizedBox(
            height: smallSpacer - 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: appPadding, top: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: List.generate(
                      categoryJson.length,
                      (index) => Padding(
                        padding: index == categoryJson.length - 1
                            ? EdgeInsets.only(right: appPadding)
                            : EdgeInsets.only(
                                right: 10,
                              ),
                        child: CustomCategoriesButton(
                          title: categoryJson[index]['title'],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: List.generate(
                      categoryJson.length,
                      (index) => Padding(
                        padding: index == categoryJson2.length - 1
                            ? EdgeInsets.only(right: appPadding)
                            : EdgeInsets.only(
                                right: 10,
                              ),
                        child: CustomCategoriesButton(
                          title: categoryJson2[index]['title'],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: smallSpacer,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: appPadding),
            child: CustomTitle(title: 'Cursos más populares'),
          ),

          // * Seccion de cursos recientes

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: appPadding, top: smallSpacer, bottom: smallSpacer),
              child: Row(
                children: List.generate(
                  coursesJson.length,
                  (index) => Padding(
                    padding: index == coursesJson.length - 1
                        ? EdgeInsets.only(right: appPadding)
                        : EdgeInsets.only(right: 10),
                    child: CustomCard(
                      imagenCourse: coursesJson[index]['image'],
                      videoCount: coursesJson[index]['video'],
                      titleCourse: coursesJson[index]['title'],
                      perfil: coursesJson[index]['user_profile'],
                      name: coursesJson[index]['user_name'],
                      price: coursesJson[index]['price'],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
