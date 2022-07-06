import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../text_field_provider/login_provider.dart';
import '../../text_field_provider/registration_provider.dart';
import '../../../../../resouces/calendar_colors.dart';
import '../../../../../resouces/calendar_text_styles.dart';
import '../../widgets/add_image.dart';
import '../../widgets/login_button.dart';

part '../../widgets/default_text_field.dart';
part '../../widgets/registration_form.dart';
part '../../widgets/login_form.dart';

class AuthScreen extends StatelessWidget {
  AuthScreen({Key? key}) : super(key: key);

  final hasAccount = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return ChangeNotifierProvider(
      create: (context) => LoginProvider(),
      child: ChangeNotifierProvider(
        create: (context) => RegistrationProvider(),
        child: Scaffold(
          backgroundColor: CalendarColors.authBgBlue,
          body: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(height: 8),
                    Image.asset('assets/images/img1.png'),
                    const Text('Calendar',
                        style: CalendarTextStyles.fSize15White),
                    SizedBox(
                      height: screenSize.height * 0.575,
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: screenSize.width,
                  height: screenSize.height * 0.575,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: ValueListenableBuilder(
                    valueListenable: hasAccount,
                    builder: (context, _, __) {
                      if (hasAccount.value) {
                        return LoginForm(
                          onTap: () {
                            hasAccount.value = false;
                          },
                        );
                      } else {
                        return RegistrationForm(
                          onTap: () {
                            hasAccount.value = true;
                          },
                        );
                      }
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
