import 'package:flutter/material.dart';

class RoomTile extends StatelessWidget {
  const RoomTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Row(
        children: const [
          CircleAvatar(radius: 5, backgroundColor: Colors.green),
          SizedBox(width: 8),
          Text('conf room 1', style: TextStyle(height: 1.6)),
          Spacer(),
          Icon(Icons.edit_note, color: Colors.green),
          SizedBox(width: 20),
          Icon(Icons.video_camera_back_outlined, color: Colors.green),
          SizedBox(width: 20),
          Icon(Icons.wind_power_outlined, color: Colors.green),
          SizedBox(width: 20),
        ],
      ),
      subtitle: Row(
        children: const [
          SizedBox(width: 19),
          Text('Megacom', style: TextStyle(height: 1.71)),
        ],
      ),
    );
  }
}
