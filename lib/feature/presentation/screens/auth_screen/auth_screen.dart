// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test_calendar/feature/presentation/widgets/app_colors.dart';
import 'package:test_calendar/feature/presentation/widgets/typography.dart';

part './widgets/default_text_field.dart';
part './widgets/registration_form.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  height: MediaQuery.of(context).size.height * 0.575,
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.575,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: ListView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
                children: [
                  const DefaultTextField(label: 'Логин'),
                  const DefaultTextField(label: 'Пароль', hideText: true),
                  InkWell(
                      onTap: () {},
                      child: const Text('Забыли пароль?',
                          style: CalendarTextStyles.fSize14Weight400Blue)),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Неправильно ввели данные',
                              style: CalendarTextStyles.fSize16Weight600White,
                              textAlign: TextAlign.center,
                            ),
                            backgroundColor: CalendarColors.purpleForSnackBar,
                          ),
                        );
                      },
                      child: const Text('Войти',
                          style: CalendarTextStyles.fSize16Weight600White),
                    ),
                  ),
                  Row(
                    children: [
                      const Text('У вас нет Аккаунта?\t',
                          style: CalendarTextStyles.fSize14Weight300Gray),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Регистрация',
                          style: CalendarTextStyles.fSize14Weight300Gray
                              .copyWith(color: CalendarColors.bgBlue),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
