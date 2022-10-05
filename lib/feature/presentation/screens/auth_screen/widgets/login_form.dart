part of '../auth_screen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key, required this.onTap}) : super(key: key);

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    final locale = L10n.of(context);
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      children: [
        Text(
          locale.enter,
          style: CalendarTextStyles.fSize16Weight600Blue,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        DefaultTextField(
          label: locale.login,
          controller: Provider.of<LoginProvider>(context).loginController,
        ),
        DefaultTextField(
          label: locale.password,
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
            title: locale.signIn,
            onPress: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    locale.invalidData,
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
            Text('${locale.haveNoAcc}\t',
                style: CalendarTextStyles.fSize14Weight300Gray),
            InkWell(
              onTap: onTap,
              child: Text(
                locale.signUp,
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