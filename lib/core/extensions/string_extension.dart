// ignore_for_file: always_put_control_body_on_new_line

import 'package:intl/intl.dart';
import 'package:test_calendar/core/extensions/datetime_extension.dart';

extension StringExtension on String {
  String get extractDigits {
    if (isEmpty) return '';

    var output = '';
    for (var i = 0; i < length; i++) {
      if (int.tryParse(this[i]) != null) output += this[i];
    }

    return output;
  }

  String get formatAsPhone {
    final _digits = extractDigits;
    if (_digits.isEmpty) return '';
    final output = <String>[];
    output.add('+${_digits.substring(0, 3)}');
    output.add(' (${_digits.substring(3, 6)})');
    output.add(' ${_digits.substring(6, 9)}-');
    output.add(_digits.substring(9, 12));
    output.add(_digits.substring(12, _digits.length));

    return output.join();
  }

  String get formatddMMMM {
    final day = substring(0, 2);
    final month = substring(3, 5);
    final year = substring(6, 10);
    final timeDate = DateTime.parse('$year$month$day');

    return timeDate.ddMMMM;
  }

  String get formatddMMyyyy {
    final day = substring(0, 2);
    final month = substring(3, 5);
    final year = substring(6, 10);
    final timeDate = DateTime.parse('$year$month$day');

    return timeDate.yyyyMMdd;
  }

  String get formatyMMMM {
    final day = substring(0, 2);
    final month = substring(3, 5);
    final year = substring(6, 10);
    final timeDate = DateTime.parse('$year$month$day');

    return timeDate.yMMMM;
  }

  String get separateByThousands {
    final parsed = double.parse(this);
    final formatter = NumberFormat.compact(locale: 'en');
    final result = formatter.format(parsed);

    return result;
  }

  String get separateNullDouble {
    final parsed = double.parse(this);
    final formatter = NumberFormat.decimalPattern();

    final result = formatter.format(parsed);

    return result;
  }
}
