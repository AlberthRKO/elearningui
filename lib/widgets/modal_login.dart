import 'package:elearningui/theme/colors.dart';
import 'package:elearningui/theme/padding.dart';
import 'package:elearningui/utils/complemento.dart';
import 'package:elearningui/widgets/custom_button_box.dart';
import 'package:elearningui/widgets/custom_heading.dart';
import 'package:elearningui/widgets/custom_textfield.dart';
import 'package:elearningui/widgets/modal_register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ModalInsideModal extends StatelessWidget {
  final bool reverse;

  const ModalInsideModal({Key? key, this.reverse = false}) : super(key: key);

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
              SizedBox(
                width: size.width * 8,
                child: ClipRRect(
                  child: SvgPicture.asset(
                    assetImg + 'sign_in_image.svg',
                  ),
                ),
              ),
              SizedBox(
                height: smallSpacer,
              ),
              CustomHeading(
                title: 'Login',
                subTitle: 'Bienvenido!, inicia sesión para continuar',
                color: textBlack,
              ),
              SizedBox(
                height: miniSpacer,
              ),
              CustomTextField(prefixIcon: 'email_icon.svg', labelText: 'Email'),
              SizedBox(
                height: miniSpacer,
              ),
              CustomTextField(
                prefixIcon: 'key_icon.svg',
                labelText: 'Contraseña',
                isPassword: true,
              ),
              SizedBox(
                height: smallSpacer,
              ),
              CustomButtonBox(title: 'Login'),
              SizedBox(
                height: smallSpacer,
              ),
              Text(
                'o login con:',
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
              SizedBox(
                height: smallSpacer,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'No tienes cuenta ? ',
                    style: TextStyle(fontSize: 12, color: grey),
                  ),
                  GestureDetector(
                    onTap: () => _botoncito(context),
                    child: Text(
                      'Registrate',
                      style: TextStyle(
                          fontSize: 15,
                          color: primary,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _botoncito(context) {
    showCupertinoModalBottomSheet(
      expand: true,
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => ModalRegister(),
    );
  }
}
