import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../core/providers/home_detail_view_model.dart';
import 'locator.dart';

class AppHelpers {
  final GlobalKey<NavigatorState> globalKey = GlobalKey<NavigatorState>();
  final HomeDetailViewModel _model = getIt<HomeDetailViewModel>();
  String get fetchCurrentTime {
    DateTime now = DateTime.now();
    final String formattedTime = DateFormat('kk:mm').format(now);
    return formattedTime;
  }

  String get fetchCurrentDate {
    DateTime now = DateTime.now();
    final DateFormat dateMonth = DateFormat.MMMMd('tr_TR');
    final DateFormat dayName = DateFormat.EEEE('tr_TR');
    final String day = dayName.format(now);
    final String date = dateMonth.format(now);
    return "$date , $day";
  }

  String get fetchDetailTime {
    final String format = DateFormat('kk:mm').format(_model.time as DateTime);
    return format;
  }

  String get fetchDetailDateNumber {
    String formattedTime = DateFormat('dd').format((_model.time as DateTime)); 
    return formattedTime;
  } 

  String get fetchDetailDateYear {
    final String format = DateFormat.y('tr_TR').format(_model.time as DateTime);
    return format;
  }

  String get fetchDetailDateName {
    final String format =
        DateFormat.EEEE('tr_TR').format(_model.time as DateTime);
    return format;
  }

  String get fetchDetailMonthName {
    final String format =
        DateFormat.MMMM('tr_TR').format(_model.time as DateTime);
    return format;
  }
}
