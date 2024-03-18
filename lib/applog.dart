import 'package:flutter/foundation.dart';

part '_colorize.dart';

class AppLog {
  static final AppLog _applog = AppLog._instance();

  factory AppLog() {
    return _applog;
  }

  AppLog._instance();

  static void _print(dynamic data) {
    if (kDebugMode) print(data);
  }

  static String _buildContent(String message, [String? className, String? method]) {
    return '${className != null ? '|  ${className}' : '--'}${method != null ? '.${method} \n' : '. -- \n\n'}'
        '|  message:  ${message}\n';
  }

  static String _sep() => List.generate(60, (index) => '-').fold('', (p, e) => '$p$e');

  static error(String error, [String? className, String? method]) {
    _print(_Colorize('${_sep()}\n'
        '|  🔴 Error \n'
        '${_buildContent(error, className, method)}'
        '${_sep()}\n')
      ..lightRed());
  }

  static info(String message, [String? className, String? method]) {
    _print(_Colorize('${_sep()}\n'
        '|  ℹ️ Info \n'
        '${_buildContent(message, className, method)}'
        '${_sep()}\n')
      ..white());
  }

  static success(String message, [String? className, String? method]) {
    _print(_Colorize('${_sep()}\n'
        '|  ✅ Success \n'
        '${_buildContent(message, className, method)}'
        '${_sep()}\n')
      ..lightGreen());
  }
}
