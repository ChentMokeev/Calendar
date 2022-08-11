import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({
    Key? key,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width,
      height: screenSize.height * .075,
      child: ElevatedButton(
        child: const Text('Сохранить'),
        onPressed: () {},
      ),
    );
  }
}
