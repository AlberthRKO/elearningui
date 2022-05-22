import 'package:elearningui/data/account_menu_json.dart';
import 'package:elearningui/theme/colors.dart';
import 'package:elearningui/theme/padding.dart';
import 'package:elearningui/widgets/appbars.dart';
import 'package:elearningui/widgets/custom_button_box.dart';
import 'package:elearningui/widgets/custom_heading.dart';
import 'package:elearningui/widgets/custom_place_holder.dart';
import 'package:elearningui/widgets/custom_title.dart';
import 'package:elearningui/widgets/modal_login.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
            GestureDetector(
              onTap: () => _botoncito(context),
              child: CustomButtonBox(title: 'Login'),
            ),
            SizedBox(
              height: spacer,
            ),
          ],
        ),
      ),
    );
  }

  _botoncito(context) {
    showCupertinoModalBottomSheet(
      expand: true,
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => ModalInsideModal(),
    );
  }
}
