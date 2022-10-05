import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:test_calendar/core/extensions/context_extension.dart';
import 'package:test_calendar/core/resources/resources.dart';
import 'package:test_calendar/feature/presentation/screens/meeting_add/meeting_add.dart';
import 'package:test_calendar/feature/presentation/screens/navigation/vm.dart';
import 'package:test_calendar/feature/presentation/widgets/app_modals.dart';
import 'package:test_calendar/feature/presentation/widgets/meeting_data_taible.dart';
import 'package:test_calendar/feature/presentation/widgets/reply_buttons.dart';
import 'package:test_calendar/routes/routes.dart';

class MeetingMessagePage extends StatelessWidget {
  const MeetingMessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.router.pop();
              context.read<NavigationVM>().hideBottomBar(false);
            },
          ),
          actions: [
            IconButton(
              onPressed: () {
                AppModals.showModal(
                  context: context,
                  persentOfHeight: 96,
                  child: ListOfSelectors(
                    closeIt: () => context.router.popTop(),
                  ),
                );
              },
              icon: SvgPicture.asset(AppSvgs.edit),
            ),
            IconButton(
              onPressed: () {
                AppModals.showModal(
                  context: context,
                  persentOfHeight: 23.13,
                  child: Scaffold(
                    appBar: AppBar(title: const Text('Вы уверены?')),
                    body: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          onTap: () {
                            Navigator.pop(context);
                            AppModals.showModal(
                              context: context,
                              persentOfHeight: 27,
                              child: Scaffold(
                                appBar: AppBar(
                                  title: const Text(
                                    'Удалить \n повторяющееся событие',
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                  ),
                                ),
                              ),
                            );
                          },
                          title: const Text('Удалить событие'),
                        ),
                        const Divider(),
                        ListTile(
                          onTap: () => context.router.pop(),
                          title: const Text('Отмена'),
                        ),
                      ],
                    ),
                  ),
                );
              },
              icon: SvgPicture.asset(AppSvgs.delete),
            ),
          ],
        ),
        body: Column(
          children: const [
            MessageHeader(),
            Divider(),
            MeetingDataTable(),
            Divider(),
            ReplyButtonsBar(),
          ],
        ),
      ),
    );
  }
}

class ReplyButtonsBar extends StatelessWidget {
  const ReplyButtonsBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text('Ответ на приглашение'),
        ),
        Row(
          children: [
            SizedBox(width: context.width * .11),
            ReplyButton(
              icon: Icons.done,
              title: 'Принять',
              color: const Color(0xff6DD349),
              onTap: () {},
            ),
            const Spacer(),
            ReplyButton(
              icon: Icons.reply,
              title: 'Делегировать',
              color: const Color(0xff6DD349),
              onTap: () {},
            ),
            const Spacer(),
            ReplyButton(
              icon: Icons.close,
              title: 'Отклонить',
              color: Colors.red,
              onTap: () {},
            ),
            SizedBox(width: context.width * .11),
          ],
        ),
      ],
    );
  }
}

class MessageHeader extends StatelessWidget {
  const MessageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Единое окно (действующий)',
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('David Howell'),
              Text('13:00'),
            ],
          ),
        ),
      ],
    );
  }
}
