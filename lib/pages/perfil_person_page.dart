import 'package:elearningui/data/category_json.dart';
import 'package:elearningui/theme/colors.dart';
import 'package:elearningui/theme/padding.dart';
import 'package:elearningui/widgets/custom_app_bar.dart';
import 'package:elearningui/widgets/custom_course_card.dart';
import 'package:elearningui/widgets/custom_title.dart';
import 'package:elearningui/widgets/person_detail.dart';
import 'package:flutter/material.dart';

class PerfilPerson extends StatefulWidget {
  const PerfilPerson({Key? key}) : super(key: key);

  @override
  State<PerfilPerson> createState() => _PerfilPersonState();
}

class _PerfilPersonState extends State<PerfilPerson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      // extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: CustomAppBar(
          title: 'Detalle Perfil',
        ),
        preferredSize: Size.fromHeight(80),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    // var size = MediaQuery.of(context).size;
    List perfil = allCategories[0]['data']['popular_lecturer'];
    List allCourse = allCategories[0]['data']['all_course'];
    // print(perfil[0]);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(appPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PersonDetail(
              imagen: perfil[0]['user_profile'],
              name: perfil[0]['user_name'],
              course: perfil[0]['course'],
              totalStudents: perfil[0]['total_students'],
              totalCourse: perfil[0]['total_courses'],
            ),
            SizedBox(
              height: smallSpacer,
            ),
            CustomTitle(
              title: 'Sobre mi',
              extend: false,
            ),
            SizedBox(
              height: miniSpacer,
            ),
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
              style: TextStyle(
                fontSize: 13,
                color: grey,
                height: 1.5,
              ),
            ),
            SizedBox(
              height: smallSpacer,
            ),
            CustomTitle(title: 'Mis cursos'),
            SizedBox(
              height: 10,
            ),
            Column(
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
          ],
        ),
      ),
    );
  }
}
