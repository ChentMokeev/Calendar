part of '../pages/auth_screen/auth_screen.dart';

class RegistrationForm extends StatelessWidget {
  const RegistrationForm({Key? key, required this.onTap}) : super(key: key);

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
      children: [
        const AddImage(),
        DefaultTextField(
          label: 'ФИО',
          controller: Provider.of<RegistrationProvider>(context).nameController,
        ),
        DefaultTextField(
          label: 'Отдел',
          controller:
              Provider.of<RegistrationProvider>(context).departmentController,
        ),
        DefaultTextField(
          label: 'Должность',
          controller:
              Provider.of<RegistrationProvider>(context).positionController,
        ),
        DefaultTextField(
          label: 'Почта',
          controller: Provider.of<RegistrationProvider>(context).mailController,
        ),
        DefaultTextField(
          label: 'Пароль',
          controller:
              Provider.of<RegistrationProvider>(context).passwordController,
        ),
        const SizedBox(height: 16),
        const LoginButton(title: 'Зарегистрироваться'),
        const SizedBox(height: 16),
        Row(
          children: [
            const Text('У вас уже есть Аккаунт?\t',
                style: CalendarTextStyles.fSize14Weight300Gray),
            InkWell(
              onTap: onTap,
              child: Text(
                'Войти',
                style: CalendarTextStyles.fSize14Weight300Gray
                    .copyWith(color: CalendarColors.authBgBlue),
              ),
            ),
          ],
        )
      ],
    );
  }
}