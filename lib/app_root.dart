import 'package:elearningui/pages/home_page.dart';
import 'package:elearningui/theme/colors.dart';
import 'package:elearningui/utils/complemento.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: const [
        HomePage(),
        Center(
          child: Text('Curso'),
        ),
        Center(
          child: Text('Explorador'),
        ),
        Center(
          child: Text('Perfil'),
        ),
      ],
    );
  }

  Widget getFooter() {
    List items = [
      "assets/images/home_icon.svg",
      "assets/images/play_icon.svg",
      "assets/images/rocket_icon.svg",
      "assets/images/user_icon.svg",
    ];
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 80,
      decoration: BoxDecoration(
        color: textWhite,
        boxShadow: [
          BoxShadow(
            color: textBlack.withOpacity(0.10),
            blurRadius: 30,
            offset: Offset(0, -10),
          ),
        ],
      ),
      // Contenido de las pestañas
      child: Padding(
        padding: const EdgeInsets.only(right: 40, left: 40, top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            items.length,
            (index) => InkWell(
              onTap: () => setState(() {
                pageIndex = index;
              }),
              child: Column(
                children: [
                  SvgPicture.asset(
                    items[index],
                    color: pageIndex == index ? primary : secondary,
                    height: 17.5,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  AnimatedContainer(
                    duration: Duration(
                      milliseconds: 500,
                    ),
                    child: Container(
                      width: 20,
                      height: 5,
                      decoration: BoxDecoration(
                        color:
                            pageIndex == index ? primary : Colors.transparent,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
