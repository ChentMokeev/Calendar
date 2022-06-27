import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../resouces/calendar_colors.dart';
import '../../../../../resouces/calendar_text_styles.dart';

import '../../text_field_provider/login_provider.dart';

part '../../../../widgets/default_text_field.dart';
part '../../../../widgets/registration_form.dart';
part '../../../../widgets/login_form.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CalendarColors.bgBlue,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 8),
                Image.asset('assets/images/img1.png'),
                const Text('Calendar', style: CalendarTextStyles.fSize15White),
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
              child: const LoginForm(),
            ),
          )
        ],
      ),
    );
  }
}
