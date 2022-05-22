import 'package:elearningui/theme/colors.dart';
import 'package:elearningui/utils/complemento.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    this.title = '',
    this.action = false,
    this.actionIcon = 'filter_icon.svg',
    this.iconColor = primary,
    this.backgroundColor = background,
    this.brightness,
  }) : super(key: key);

  final String title;
  final bool action;
  final String actionIcon;
  final Color iconColor;
  final Color backgroundColor;
  final Brightness? brightness;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // ignore: deprecated_member_use
      // brightness: brightness,
      backgroundColor: backgroundColor,
      elevation: 0.0,
      // indicador de atras
      automaticallyImplyLeading: false,
      primary: false,
      excludeHeaderSemantics: true,
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        color: primary.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(100.0),
                        boxShadow: [
                          BoxShadow(
                            color: primary.withOpacity(0.5),
                            spreadRadius: 0.0,
                            blurRadius: 6.0,
                            offset: Offset(0, 2),
                          )
                        ],
                      ),
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                        assetImg + 'arrow_left_icon.svg',
                        color: textWhite,
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    title,
                    style: TextStyle(fontSize: 17, color: secondary),
                  ),
                  Spacer(),
                  (action)
                      ? SizedBox(
                          width: 40.0,
                          child: SvgPicture.asset(
                            assetImg + actionIcon,
                            color: iconColor,
                            height: 15.0,
                          ),
                        )
                      : SizedBox(
                          width: 40.0,
                          height: 40.0,
                        ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
