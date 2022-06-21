part of '../auth_screen.dart';

class RegistrationForm extends StatelessWidget {
  const RegistrationForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
      children: [
        const CircleAvatar(
          backgroundColor: Color(0xffE6ECFF),
          radius: 44,
          child: Text(
            'Добавьте\n'
            'фото',
            maxLines: 2,
            textAlign: TextAlign.center,
            style: CalendarTextStyles.fSize14Weight400Blue,
          ),
        ),
        const DefaultTextField(label: 'ФИО'),
        const DefaultTextField(label: 'Отдел'),
        const DefaultTextField(label: 'Должность'),
        const DefaultTextField(label: 'Почта'),
        const DefaultTextField(label: 'Пароль'),
        const SizedBox(height: 16),
        const SizedBox(
          height: 48,
          child: ElevatedButton(onPressed: null, child: Text('Войти')),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            const Text('У вас уже есть Аккаунт?\t',
                style: CalendarTextStyles.fSize14Weight300Gray),
            InkWell(
              onTap: () {},
              child: Text(
                'Войти',
                style: CalendarTextStyles.fSize14Weight300Gray
                    .copyWith(color: CalendarColors.bgBlue),
              ),
            ),
          ],
        )
      ],
    );
  }
}
