part of '../pages/main_screen.dart';

class AddEventBottomSheet extends StatelessWidget {
  const AddEventBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: screenSize.height * 0.9625,
      child: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Новое событие',
                    style: CalendarTextStyles.fSize18Weight600,
                  ),
                ),
                const Text('Название'),
                const Divider(),
                const ListTile(
                  leading: Icon(
                    Icons.access_time,
                    color: Colors.blue,
                  ),
                  title: Text('02.02.2022, среда'),
                ),
                const Divider(),
                const ListTile(
                  leading: Icon(
                    Icons.repeat,
                    color: Colors.blue,
                  ),
                  title: Text('Не повторять'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.person_outline, color: Colors.blue),
                  title: const Text('Участники'),
                  trailing: ElevatedButton(
                    child: const Icon(Icons.add),
                    onPressed: () {},
                  ),
                ),
                const Divider(),
                const ListTile(
                  leading: Icon(Icons.location_pin, color: Colors.blue),
                  title: Text('Помещение'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                const Divider(),
                const ListTile(
                  leading: Icon(Icons.add, color: Colors.blue),
                  title: Text('Мои метки'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                const Divider(),
                const ListTile(
                  leading: Icon(Icons.lock_outline, color: Colors.blue),
                  title: Text('Приватность'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                const Divider(),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {},
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 48,
              width: screenSize.width - 32,
              child: SizedBox(
                height: 32,
                width: 32,
                child: ElevatedButton(
                  child: const Text('Сохранить'),
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
