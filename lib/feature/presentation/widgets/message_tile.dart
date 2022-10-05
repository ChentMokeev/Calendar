import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_calendar/feature/presentation/screens/navigation/vm.dart';
import 'package:test_calendar/routes/routes.gr.dart';

class MessageTile extends StatelessWidget {
  const MessageTile({
    Key? key,
    this.isSeen = true,
  }) : super(key: key);

  final bool isSeen;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        context.read<NavigationVM>().hideBottomBar(true);
        context.router.push(const MeetingMessagePageRoute());
      },
      title: Row(
        children: [
          isSeen ? const SizedBox(width: 11) : const CircleAvatar(radius: 5),
          const SizedBox(width: 8),
          const Text('Совещание', style: TextStyle(height: 1.6)),
        ],
      ),
      subtitle: Row(
        children: const [
          SizedBox(width: 19),
          Text('David Howell', style: TextStyle(height: 1.71)),
          Spacer(),
          Text('12:00'),
          SizedBox(width: 8),
          Icon(Icons.arrow_forward_ios, size: 14),
        ],
      ),
    );
  }
}
