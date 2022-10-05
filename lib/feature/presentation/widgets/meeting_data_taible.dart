import 'package:flutter/material.dart';

class MeetingDataTable extends StatelessWidget {
  const MeetingDataTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        columnWidths: const {0: IntrinsicColumnWidth()},
        children: const [
          TableRow(
            children: [
              Padding(
                padding: EdgeInsets.all(5),
                child: Icon(Icons.alarm, color: Colors.blue),
              ),
              Text('Дата и время', style: TextStyle(color: Colors.blue)),
              Text('02.09.2022, Ср'),
            ],
          ),
          TableRow(
            children: [
              SizedBox(),
              Text('Время встречи', style: TextStyle(color: Colors.blue)),
              Text('09:00-10:00'),
            ],
          ),
          TableRow(
            children: [
              Padding(
                padding: EdgeInsets.all(5),
                child: Icon(Icons.location_on_outlined, color: Colors.blue),
              ),
              Text('Место встречи', style: TextStyle(color: Colors.blue)),
              Text('1 этаж, кабинет 17'),
            ],
          ),
          TableRow(
            children: [
              Padding(
                padding: EdgeInsets.all(5),
                child: Icon(Icons.person_outline, color: Colors.blue),
              ),
              Text('Отправитель', style: TextStyle(color: Colors.blue)),
              Text('Darrell Steward'),
            ],
          ),
          TableRow(
            children: [
              Padding(
                padding: EdgeInsets.all(5),
                child: Icon(Icons.replay, color: Colors.blue),
              ),
              Text('Повтор', style: TextStyle(color: Colors.blue)),
              Text('По будням (Пн-Пт)'),
            ],
          ),
          TableRow(
            children: [
              Padding(
                padding: EdgeInsets.all(5),
                child: Icon(Icons.add, color: Colors.blue),
              ),
              Text('Метки', style: TextStyle(color: Colors.blue)),
              Text('Рабочий'),
            ],
          ),
          TableRow(
            children: [
              Padding(
                padding: EdgeInsets.all(5),
                child: Icon(Icons.person_outline, color: Colors.blue),
              ),
              Text('Участники', style: TextStyle(color: Colors.blue)),
              SizedBox(),
            ],
          ),
          TableRow(
            children: [
              Padding(
                padding: EdgeInsets.all(5),
                child: Icon(Icons.done, color: Colors.blue),
              ),
              Text('Статус', style: TextStyle(color: Colors.blue)),
              SizedBox(),
            ],
          ),
        ],
      ),
    );
  }
}
