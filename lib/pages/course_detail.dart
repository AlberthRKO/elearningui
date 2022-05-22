import 'package:elearningui/data/category_json.dart';
import 'package:elearningui/data/course_video_json.dart';
import 'package:elearningui/data/courses_json.dart';
import 'package:elearningui/theme/colors.dart';
import 'package:elearningui/theme/padding.dart';
import 'package:elearningui/widgets/custom_app_bar.dart';
import 'package:elearningui/widgets/custom_button_box.dart';
import 'package:elearningui/widgets/custom_course_card.dart';
import 'package:elearningui/widgets/custom_course_footer.dart';
import 'package:elearningui/widgets/custom_detallito_course.dart';
import 'package:elearningui/widgets/custom_expandable_widget.dart';
import 'package:elearningui/widgets/custom_skills.dart';
import 'package:elearningui/widgets/custom_title.dart';
import 'package:flutter/material.dart';

class CourseDetail extends StatefulWidget {
  const CourseDetail({Key? key}) : super(key: key);

  @override
  State<CourseDetail> createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: CustomAppBar(backgroundColor: Colors.transparent),
        preferredSize: Size.fromHeight(80),
      ),
      body: getBody(),
      bottomNavigationBar: CustomCourseFooter(
        coursePrice: coursesJson[0]['price'],
      ),
    );
  }

  Widget getBody() {
    List allCourse = allCategories[0]['data']['all_course'];
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: size.width,
            height: 300,
            child: Image.network(
              coursesJson[0]['image'],
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(appPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTitle(
                  title: coursesJson[0]['title'],
                  // fontSize: 22,
                  extend: false,
                ),
                SizedBox(
                  height: appPadding,
                ),
                CustomDetallitoCurso(
                  profile: coursesJson[0]['user_profile'],
                  name: coursesJson[0]['user_name'],
                  promedio: '4.0',
                  skills: '25,201',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                  style: TextStyle(
                    fontSize: 13,
                    color: grey,
                    height: 1.5,
                  ),
                ),
                SizedBox(
                  height: smallSpacer,
                ),
                // Estadisticas del curso
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        CustomSkills(
                          skill: 'Estudiantes',
                          numSkill: '1200',
                        ),
                        SizedBox(
                          height: miniSpacer,
                        ),
                        CustomSkills(
                          skill: 'Ultima Actualización',
                          numSkill: '12/11/22',
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        CustomSkills(
                          skill: 'Lenguaje',
                          numSkill: 'Español',
                        ),
                        SizedBox(
                          height: miniSpacer,
                        ),
                        CustomSkills(
                          skill: 'Subtitulos',
                          numSkill: 'Ingles, 5 más',
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: smallSpacer,
                ),
                CustomTitle(
                  title: 'Detalle',
                  extend: false,
                ),
                SizedBox(
                  height: miniSpacer,
                ),
                Text(
                  '3 Secciones - 30 Videos - 4hrs 30min de video',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: grey,
                  ),
                ),
                SizedBox(
                  height: miniSpacer,
                ),
                Column(
                  children: List.generate(
                    courseVideoJson.length,
                    (index) => Padding(
                      padding: index == courseVideoJson.length - 1
                          ? EdgeInsets.only(bottom: 0)
                          : EdgeInsets.only(bottom: miniSpacer),
                      child: CustomExpandableWidget(
                        curiculumTitle: (index + 1).toString() +
                            ' - ' +
                            courseVideoJson[index]['title'],
                        totalVideoAmount:
                            courseVideoJson[index]['videos'].length.toString(),
                        totalVideoRuntime: '5',
                        lectures: courseVideoJson[index]['videos'],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: smallSpacer,
                ),
                CustomTitle(
                  title: 'Cursos similares',
                ),
                SizedBox(
                  height: miniSpacer,
                ),
                Column(
                  children: List.generate(
                    allCourse.length ~/ 2,
                    (index) => Padding(
                      padding: index == (allCourse.length ~/ 2) - 1
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
                SizedBox(
                  height: smallSpacer,
                ),
                CustomTitle(
                  title: 'Docente',
                  extend: false,
                ),
                SizedBox(
                  height: miniSpacer,
                ),
                Container(
                  width: size.width,
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: textWhite,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: size.width * .2,
                            height: size.width * .2,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                coursesJson[0]['user_profile'],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  coursesJson[0]['user_name'],
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: secondary,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  coursesJson[0]['video'] + ' Videos',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: grey,
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  '2515 Total de estudiantes',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: grey,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: appPadding,
                      ),
                      CustomButtonBox(title: 'Ver Perfil'),
                    ],
                  ),
                ),
                SizedBox(
                  height: smallSpacer,
                ),
                CustomTitle(title: 'Comentarios'),
                SizedBox(
                  height: miniSpacer,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Text(
                          '4.0',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Valoración',
                          style: TextStyle(fontSize: 13, color: secondary),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 15,
                        ),
                        Icon(
                          Icons.star_border_outlined,
                          color: Colors.amber,
                          size: 15,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
