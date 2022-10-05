import 'package:flutter/material.dart';
import 'package:test_calendar/core/extensions/context_extension.dart';
import 'package:test_calendar/core/resources/calendar_text_styles.dart';

class ReductProfilePage extends StatelessWidget {
  const ReductProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final profileRadius = context.width * .1389;
    return Scaffold(
      appBar: AppBar(title: const Text('Изменить профиль')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              CircleAvatar(radius: profileRadius),
              const SizedBox(height: 16),
              const DefaultTextField(title: 'Фамилия'),
              const DefaultTextField(title: 'Имя'),
              const DefaultTextField(title: 'Отчество'),
              const DefaultPopUp(title: 'Должность 1'),
              const DefaultPopUp(title: 'Должность 2'),
              const DefaultPopUp(title: 'Отдел'),
              const DefaultTextField(title: 'Почта'),
              const DefaultTextField(title: 'Пароль', obscureText: true),
              const DefaultTextField(title: 'Новый пароль', obscureText: true),
            ],
          ),
        ),
      ),
    );
  }
}

class DefaultTextField extends StatefulWidget {
  const DefaultTextField({
    Key? key,
    required this.title,
    this.obscureText = false,
  }) : super(key: key);

  final String title;
  final bool obscureText;

  @override
  State<DefaultTextField> createState() => _DefaultTextFieldState();
}

class _DefaultTextFieldState extends State<DefaultTextField> {
  final controller = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: CalendarTextStyles.fSize13Weight300Gray,
          ),
          const SizedBox(height: 6),
          SizedBox(
            height: 40,
            child: TextField(
              obscureText: widget.obscureText,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(color: Color(0x882f2f2f)),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                // suffixIcon: widget.obscureText && controller.text.isNotEmpty
                //     ? IconButton(
                //         onPressed: () {},
                //         icon: const Icon(Icons.remove_red_eye_outlined),
                //       )
                //     : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DefaultPopUp extends StatefulWidget {
  const DefaultPopUp({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<DefaultPopUp> createState() => _DefaultPopUpState();
}

class _DefaultPopUpState extends State<DefaultPopUp> {
  final TextEditingController controller =
      TextEditingController(text: 'Проект-менеджер Megacom');
  // String _selectedItem = 'Проект-менеджер Megacom';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.title, style: CalendarTextStyles.fSize13Weight300Gray),
          const SizedBox(height: 6),
          PopupMenuButton(
            offset: const Offset(0, 16),
            color: const Color(0xfffcfcfc),
            constraints: BoxConstraints(
                minWidth: MediaQuery.of(context).size.width - 32),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            onSelected: (value) => setState(() {
              controller.text = value.toString();
            }),
            position: PopupMenuPosition.under,
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'Проект-менеджер Megacom',
                child: Text(
                  'Проект-менеджер Megacom',
                  style: CalendarTextStyles.fSize15Weight400
                      .copyWith(color: Colors.black),
                ),
              ),
              const PopupMenuItem(
                value: 'Проект-менеджер Megalab',
                child: Text('Проект-менеджер Megalab'),
              ),
            ],
            child: SizedBox(
              height: 40,
              child: TextField(
                controller: controller,
                enabled: false,
                readOnly: true,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 12),
                  suffixIcon: Icon(Icons.keyboard_arrow_down),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: Color(0xff2f2f2f)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
