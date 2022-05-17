import 'package:elearningui/data/promotion.dart';
import 'package:elearningui/data/user_profile.dart';
import 'package:elearningui/theme/colors.dart';
import 'package:elearningui/theme/padding.dart';
import 'package:elearningui/widgets/appbars.dart';
import 'package:elearningui/widgets/clipper.dart';
import 'package:elearningui/widgets/custom_category_card.dart';
import 'package:elearningui/widgets/custom_heading.dart';
import 'package:elearningui/widgets/custom_promo.dart';
import 'package:elearningui/widgets/custom_promotion_card.dart';
import 'package:elearningui/widgets/custom_search.dart';
import 'package:elearningui/widgets/custom_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      // extendBodyBehindAppBar: false,
      appBar: getAppbar(secondary),
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
                  height: 270,
                  color: secondary,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: appPadding),
                child: Column(
                  children: [
                    SizedBox(
                      height: spacer,
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
        ],
      ),
    );
  }
}
