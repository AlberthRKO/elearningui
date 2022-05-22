import 'package:elearningui/data/category_json.dart';
import 'package:elearningui/theme/colors.dart';
import 'package:elearningui/theme/padding.dart';
import 'package:elearningui/widgets/custom_app_bar.dart';
import 'package:elearningui/widgets/custom_card.dart';
import 'package:elearningui/widgets/custom_categories_button.dart';
import 'package:elearningui/widgets/custom_course_card.dart';
import 'package:elearningui/widgets/custom_person_card.dart';
import 'package:elearningui/widgets/custom_title.dart';
import 'package:flutter/material.dart';

class SeccionPage extends StatefulWidget {
  const SeccionPage({Key? key}) : super(key: key);

  @override
  State<SeccionPage> createState() => _SeccionPageState();
}

class _SeccionPageState extends State<SeccionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      // extendBodyBehindAppBar: true,
      appBar: PreferredSize(
          child: CustomAppBar(
            title: 'Diseño',
            action: true,
            iconColor: primary,
          ),
          preferredSize: Size.fromHeight(80)),
      body: getBody(),
    );
  }

  Widget getBody() {
    List videos = allCategories[0]['data']['feature_course'];
    List topic = allCategories[0]['data']['popular_topic'];
    List videosPopulares = allCategories[0]['data']['popular_lecturer'];
    List allCourse = allCategories[0]['data']['all_course'];
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: smallSpacer,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: appPadding),
            child: CustomTitle(
              title: 'Cursos nuevos',
              extend: false,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: smallSpacer, horizontal: appPadding),
              child: Row(
                children: List.generate(
                  videos.length,
                  (index) => Padding(
                    padding: index == videos.length - 1
                        ? EdgeInsets.only(right: 0)
                        : EdgeInsets.only(right: 10),
                    child: CustomCard(
                      imagenCourse: videos[index]['image'],
                      videoCount: videos[index]['video'],
                      titleCourse: videos[index]['title'],
                      perfil: videos[index]['user_profile'],
                      name: videos[index]['user_name'],
                      price: videos[index]['price'],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: appPadding),
            child: CustomTitle(
              title: 'Temas populares',
              extend: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: appPadding, vertical: smallSpacer),
            child: Wrap(
              runSpacing: 10,
              spacing: 10,
              children: List.generate(
                topic.length,
                (index) => CustomCategoriesButton(
                  title: topic[index]['title'],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: appPadding),
            child: CustomTitle(
              title: 'Cursos Recientes',
              extend: false,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: appPadding, vertical: smallSpacer),
              child: Row(
                children: List.generate(
                  videosPopulares.length,
                  (index) => Padding(
                    padding: index == videosPopulares.length - 1
                        ? EdgeInsets.only(right: 0)
                        : EdgeInsets.only(right: 10),
                    child: CustomPersonCard(
                      image: videosPopulares[index]['user_profile'],
                      name: videosPopulares[index]['user_name'],
                      course: videosPopulares[index]['course'],
                      totalCourses: videosPopulares[index]['total_courses'],
                      totalStudents: videosPopulares[index]['total_students'],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: appPadding),
            child: CustomTitle(
              title: 'Cursos Recientes',
              extend: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: smallSpacer, horizontal: appPadding),
            child: Column(
              children: List.generate(
                allCourse.length,
                (index) => Padding(
                  padding: index == allCourse.length - 1
                      ? EdgeInsets.only(bottom: 0)
                      : EdgeInsets.only(bottom: 10),
                  child: CustomCourseCardShrink(
                    thumbNail: allCourse[index]['image'],
                    title: allCourse[index]['title'],
                    userName: allCourse[index]['user_name'],
                    price: allCourse[index]['price'],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
