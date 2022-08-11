part of '../pages/main_screen.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 8),
      height: screenSize.height * 0.125,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 3,
            offset: const Offset(0, 0),
          )
        ],
      ),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xff97FFAB),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
            width: screenSize.width * .0333,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Единое окно (регистрации абон.)',
                  style: TextStyle(
                      fontFamily: 'Inter', fontWeight: FontWeight.w600),
                ),
                Row(
                  children: const [
                    Icon(Icons.location_on_outlined),
                    SizedBox(width: 8),
                    Text('1 этаж 17 каб'),
                    Spacer(),
                    Icon(Icons.access_time),
                    SizedBox(width: 8),
                    Text('9:30 - 10:00'),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}
