import 'package:flutter/material.dart';
import 'package:test_calendar/feature/presentation/widgets/message_tile.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this,
      initialIndex: 0,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Сообщения',
        ),
      ),
      body: Column(
        children: [
          DefaultTabController(
            length: 2,
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.blue,
              tabs: const [
                Tab(text: 'Входящие'),
                Tab(text: 'Отправленные'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                IncomingMessages(),
                OutcomingMessages(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OutcomingMessages extends StatelessWidget {
  const OutcomingMessages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        MessageTile(),
      ],
    );
  }
}

class IncomingMessages extends StatelessWidget {
  const IncomingMessages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        MessageTile(),
      ],
    );
  }
}
