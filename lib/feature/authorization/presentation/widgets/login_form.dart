part of '../pages/auth_screen/auth_screen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key, required this.onTap}) : super(key: key);

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      children: [
        const Text(
          'Вход',
          style: CalendarTextStyles.fSize16Weight600Blue,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        DefaultTextField(
          label: 'Логин',
          controller: Provider.of<LoginProvider>(context).loginController,
        ),
        DefaultTextField(
          label: 'Пароль',
          hideText: true,
          controller: Provider.of<LoginProvider>(context).passwordController,
        ),
        InkWell(
          onTap: () {},
          child: const Text(
            'Забыли пароль?',
            style: CalendarTextStyles.fSize14Weight400Blue,
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 48,
          child: LoginButton(
            title: 'Войти',
            onPress: () {
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
          ),
        ),
        Row(
          children: [
            const Text('У вас нет Аккаунта?\t',
                style: CalendarTextStyles.fSize14Weight300Gray),
            InkWell(
              onTap: onTap,
              child: Text(
                'Регистрация',
                style: CalendarTextStyles.fSize14Weight300Gray
                    .copyWith(color: CalendarColors.authBgBlue),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
