import 'package:elearningui/data/category_json.dart';
import 'package:elearningui/theme/colors.dart';
import 'package:elearningui/theme/padding.dart';
import 'package:elearningui/widgets/appbars.dart';
import 'package:elearningui/widgets/custom_categories_button.dart';
import 'package:elearningui/widgets/custom_heading.dart';
import 'package:elearningui/widgets/custom_place_holder.dart';
import 'package:elearningui/widgets/custom_search.dart';
import 'package:elearningui/widgets/custom_title.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
    // var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: appPadding),
      child: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: spacer + 20,
            ),
            CustomHeading(
              title: 'Explorar',
              subTitle: 'Busca el curso que gustes',
              color: textBlack,
            ),
            SizedBox(
              height: smallSpacer,
            ),
            CustomSearch(
              hitText: 'Ej: "Diseño Web"',
              background: textWhite,
            ),
            SizedBox(
              height: smallSpacer,
            ),
            CustomTitle(
              title: 'Populares',
              extend: false,
            ),
            SizedBox(
              height: miniSpacer,
            ),
            Wrap(
              runSpacing: 10,
              spacing: 10,
              children: List.generate(
                categoryJson.length,
                (index) => CustomCategoriesButton(
                  title: categoryJson[index]['title'],
                ),
              ),
            ),
            SizedBox(
              height: smallSpacer,
            ),
            CustomTitle(
              title: 'Categorias',
              extend: false,
            ),
            SizedBox(
              height: miniSpacer,
            ),
            Column(
              children: List.generate(
                allCategories.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: CunstomPlaceHolder(
                    title: allCategories[index]['title'],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
