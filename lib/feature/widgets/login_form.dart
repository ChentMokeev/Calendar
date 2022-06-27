part of '../authorization/presentation/pages/auth_screen/auth_screen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginProvider(),
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
        children: [
          DefaultTextField(
            label: 'Логин',
            controller: Provider.of<LoginProvider>(context).loginController,
          ),
          DefaultTextField(
              label: 'Пароль',
              hideText: true,
              controller:
                  Provider.of<LoginProvider>(context).passwordController),
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
    );
  }
}
