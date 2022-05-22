import 'package:elearningui/data/account_menu_json.dart';
import 'package:elearningui/theme/colors.dart';
import 'package:elearningui/theme/padding.dart';
import 'package:elearningui/widgets/custom_app_bar.dart';
import 'package:elearningui/widgets/custom_button_box.dart';
import 'package:elearningui/widgets/custom_categories_button.dart';
import 'package:elearningui/widgets/custom_category_card.dart';
import 'package:elearningui/widgets/custom_course_card.dart';
import 'package:elearningui/widgets/custom_course_footer.dart';
import 'package:elearningui/widgets/custom_expandable_widget.dart';
import 'package:elearningui/widgets/custom_heading.dart';
import 'package:elearningui/widgets/custom_person_card.dart';
import 'package:elearningui/widgets/custom_place_holder.dart';
import 'package:elearningui/widgets/custom_promo.dart';
import 'package:elearningui/widgets/custom_promotion_card.dart';
import 'package:elearningui/widgets/custom_search.dart';
import 'package:elearningui/widgets/custom_search_field.dart';
import 'package:elearningui/widgets/custom_textfield.dart';
import 'package:elearningui/widgets/custom_title.dart';
import 'package:flutter/material.dart';

class Views extends StatefulWidget {
  const Views({Key? key}) : super(key: key);

  @override
  State<Views> createState() => _ViewsState();
}

class _ViewsState extends State<Views> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
          child: CustomAppBar(), preferredSize: Size.fromHeight(120)),
      body: getBody(),
    );
  }

  Widget getBody() {
    List items2 = [
      {
        'title': 'tedassa',
        'runtime': 'tedassa',
      },
    ];
    List items = accountMenuJson[2]['categories'];
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: appPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: spacer + 20,
            ),
            CustomHeading(
              title: 'Cuenta',
              subTitle: 'Accede a tu cuenta',
              color: textBlack,
            ),
            SizedBox(
              height: smallSpacer,
            ),
            CustomTitle(
              title: 'Soporte',
              extend: false,
            ),
            SizedBox(
              height: miniSpacer,
            ),
            Column(
              children: List.generate(
                items.length,
                (index) => Padding(
                  padding: index == items.length - 1
                      ? EdgeInsets.only(bottom: 0)
                      : EdgeInsets.only(bottom: 5),
                  child: CunstomPlaceHolder(
                    title: items[index]['title'],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: smallSpacer,
            ),
            CustomButtonBox(title: 'Login'),
            CustomCategoryCard(),
            CustomTextField(
                prefixIcon: 'facebook_logo.svg', labelText: 'sdasa'),
            CustomSearchField(hintField: 'sada'),
            CustomSearch(hitText: 'sdsad'),
            CustomPromo(),
            CustomPromotionCard(),
            CunstomPlaceHolder(title: 'sad'),
            CustomPersonCard(
                image:
                    'https://images.unsplash.com/photo-1572631382901-cf1a0a6087cb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=982&q=80',
                name: 'asdas',
                course: 'asdasd',
                totalCourses: '22',
                totalStudents: '3'),
            CustomExpandableWidget(
                curiculumTitle: 'sds',
                totalVideoAmount: 'sd',
                totalVideoRuntime: 'sad',
                lectures: items2),
            CustomCourseFooter(coursePrice: '30'),
            CustomCategoriesButton(title: 'sad'),
            CustomCategoryCard(),
            CustomCourseCardShrink(
                thumbNail:
                    'https://images.unsplash.com/photo-1572631382901-cf1a0a6087cb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=982&q=80',
                title: 'ERE',
                userName: 'sada',
                price: '23'),
            SizedBox(
              height: spacer,
            ),
          ],
        ),
      ),
    );
  }
}
