part of '../auth_screen.dart';

class RegistrationForm extends StatelessWidget {
  const RegistrationForm({Key? key, required this.onTap}) : super(key: key);

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    final locale = L10n.of(context);
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
      children: [
        const AddImage(),
        DefaultTextField(
          label: locale.name,
          controller: Provider.of<RegistrationProvider>(context).nameController,
        ),
        DefaultTextField(
          label: locale.department,
          controller:
              Provider.of<RegistrationProvider>(context).departmentController,
        ),
        DefaultTextField(
          label: locale.position,
          controller:
              Provider.of<RegistrationProvider>(context).positionController,
        ),
        DefaultTextField(
          label: locale.email,
          controller: Provider.of<RegistrationProvider>(context).mailController,
        ),
        DefaultTextField(
          label: locale.password,
          controller:
              Provider.of<RegistrationProvider>(context).passwordController,
        ),
        const SizedBox(height: 16),
        LoginButton(title: locale.signUp),
        const SizedBox(height: 16),
        Row(
          children: [
            Text('${locale.haveAcc}\t',
                style: CalendarTextStyles.fSize14Weight300Gray),
            InkWell(
              onTap: onTap,
              child: Text(
                locale.signIn,
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
