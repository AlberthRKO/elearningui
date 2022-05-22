import 'package:elearningui/theme/colors.dart';
import 'package:elearningui/theme/padding.dart';
import 'package:elearningui/utils/complemento.dart';
import 'package:elearningui/widgets/custom_button_box.dart';
import 'package:elearningui/widgets/custom_heading.dart';
import 'package:elearningui/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ModalRegister extends StatelessWidget {
  final bool reverse;

  const ModalRegister({Key? key, this.reverse = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          reverse: reverse,
          controller: ModalScrollController.of(context),
          physics: ClampingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(appPadding),
            child: Column(
              children: [
                CustomHeading(
                  title: 'Registro',
                  subTitle: 'Registrate para poder realizar tus cursos !',
                  color: textBlack,
                ),
                SizedBox(
                  height: miniSpacer,
                ),
                CustomTextField(
                  prefixIcon: 'user_icon.svg',
                  iconColor: primary,
                  labelText: 'Nombre completo',
                ),
                SizedBox(
                  height: miniSpacer,
                ),
                CustomTextField(
                  prefixIcon: 'email_icon.svg',
                  labelText: 'Email',
                ),
                SizedBox(
                  height: miniSpacer,
                ),
                CustomTextField(
                  prefixIcon: 'key_icon.svg',
                  labelText: 'Contraseña',
                  isPassword: true,
                ),
                SizedBox(
                  height: miniSpacer,
                ),
                CustomTextField(
                  prefixIcon: 'key_icon.svg',
                  labelText: 'Confirmar contraseña',
                  isPassword: true,
                ),
                SizedBox(
                  height: smallSpacer,
                ),
                CustomButtonBox(title: 'Registrarse'),
                SizedBox(
                  height: smallSpacer,
                ),
                Text(
                  'o registrate con:',
                  style: TextStyle(fontSize: 12, color: grey),
                ),
                SizedBox(
                  height: miniSpacer,
                ),
                // Login redes sociales
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: size.width * .25,
                      height: size.width * .15,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: background,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: grey.withOpacity(0.5),
                          width: .5,
                        ),
                      ),
                      child: SvgPicture.asset(
                        assetImg + 'google_logo.svg',
                        height: 30,
                      ),
                    ),
                    Container(
                      width: size.width * .25,
                      height: size.width * .15,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: background,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: grey.withOpacity(0.5),
                          width: .5,
                        ),
                      ),
                      child: SvgPicture.asset(
                        assetImg + 'facebook_logo.svg',
                        height: 30,
                      ),
                    ),
                    Container(
                      width: size.width * .25,
                      height: size.width * .15,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: background,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: grey.withOpacity(0.5),
                          width: .5,
                        ),
                      ),
                      child: SvgPicture.asset(
                        assetImg + 'apple_logo.svg',
                        height: 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
