import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  DateTime get subsMonth {
    return DateTime(year, month - 1);
  }

  DateTime get addMonth {
    return DateTime(year, month + 1);
  }

  String get yyyyMMdd {
    final output = DateFormat('yyyy-MM-dd').format(this);

    return output;
  }

  String get ddMMyyyy {
    final output = DateFormat('dd-MM-yyyy').format(this);

    return output;
  }

  String get yyyy {
    final output = DateFormat('yyyy').format(this);

    return output;
  }

  String get ddMMyyyyHHmmss {
    final output = DateFormat('dd.MM.yyyy HH:mm:ss').format(this);

    return output;
  }

  String get ddMMyyyyHHmm {
    final output = DateFormat('dd.MM.yyyy HH:mm').format(this);

    return output;
  }

  String get hHHmmss {
    final output = DateFormat('HH:mm:ss').format(this);

    return output;
  }

  String get ddMMMM {
    final output = DateFormat('dd MMMM').format(this);

    return output;
  }

  String get yMMMM {
    final output = DateFormat('yMMMM').format(this);

    return output;
  }
}
