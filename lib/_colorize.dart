part of 'applog.dart';

//
//
//
class _Colorize {
  static final String ESC = "\u{1B}";

  String initial = '';

  _Colorize([this.initial = '']);

  _Colorize apply(_Styles style, [String? text]) {
    if (text == null) {
      text = initial;
    }

    initial = _applyStyle(style, text);
    return this;
  }

  _Colorize bgBlack() {
    return apply(_Styles.BG_BLACK);
  }

  _Colorize bgBlue() {
    return apply(_Styles.BG_BLUE);
  }

  _Colorize bgCyan() {
    return apply(_Styles.BG_CYAN);
  }

  _Colorize bgDarkGray() {
    return apply(_Styles.BG_DARK_GRAY);
  }

  _Colorize bgDefault() {
    return apply(_Styles.BG_DEFAULT);
  }

  _Colorize bgGreen() {
    return apply(_Styles.BG_GREEN);
  }

  _Colorize bgLightBlue() {
    return apply(_Styles.BG_LIGHT_BLUE);
  }

  _Colorize bgLightCyan() {
    return apply(_Styles.BG_LIGHT_CYAN);
  }

  _Colorize bgLightGray() {
    return apply(_Styles.BG_LIGHT_GRAY);
  }

  _Colorize bgLightGreen() {
    return apply(_Styles.BG_LIGHT_GREEN);
  }

  _Colorize bgLightMagenta() {
    return apply(_Styles.BG_LIGHT_MAGENTA);
  }

  _Colorize bgLightRed() {
    return apply(_Styles.BG_LIGHT_RED);
  }

  _Colorize bgLightYellow() {
    return apply(_Styles.BG_LIGHT_YELLOW);
  }

  _Colorize bgMagenta() {
    return apply(_Styles.BG_MAGENTA);
  }

  _Colorize bgRed() {
    return apply(_Styles.BG_RED);
  }

  _Colorize bgWhite() {
    return apply(_Styles.BG_WHITE);
  }

  _Colorize bgYellow() {
    return apply(_Styles.BG_YELLOW);
  }

  _Colorize black() {
    return apply(_Styles.BLACK);
  }

  _Colorize blink() {
    return apply(_Styles.BLINK);
  }

  _Colorize blue() {
    return apply(_Styles.BLUE);
  }

  _Colorize bold() {
    return apply(_Styles.BOLD);
  }

  String buildEscSeq(_Styles style) {
    return ESC + "[${getStyle(style)}m";
  }

  _Colorize call(String text) {
    initial = text;
    return this;
  }

  _Colorize concealed() {
    return apply(_Styles.CONCEALED);
  }

  _Colorize cyan() {
    return apply(_Styles.CYAN);
  }

  _Colorize dark() {
    return apply(_Styles.DARK);
  }

  _Colorize darkGray() {
    return apply(_Styles.DARK_GRAY);
  }

  _Colorize default_slyle() {
    return apply(_Styles.DEFAULT);
  }

  _Colorize green() {
    return apply(_Styles.GREEN);
  }

  _Colorize italic() {
    return apply(_Styles.ITALIC);
  }

  _Colorize lightBlue() {
    return apply(_Styles.LIGHT_BLUE);
  }

  _Colorize lightCyan() {
    return apply(_Styles.LIGHT_CYAN);
  }

  _Colorize lightGray() {
    return apply(_Styles.LIGHT_GRAY);
  }

  _Colorize lightGreen() {
    return apply(_Styles.LIGHT_GREEN);
  }

  _Colorize lightMagenta() {
    return apply(_Styles.LIGHT_MAGENTA);
  }

  _Colorize lightRed() {
    return apply(_Styles.LIGHT_RED);
  }

  _Colorize lightYellow() {
    return apply(_Styles.LIGHT_YELLOW);
  }

  _Colorize magenta() {
    return apply(_Styles.MAGENTA);
  }

  _Colorize red() {
    return apply(_Styles.RED);
  }

  _Colorize reverse() {
    return apply(_Styles.REVERSE);
  }

  String toString() {
    return initial;
  }

  _Colorize underline() {
    return apply(_Styles.UNDERLINE);
  }

  _Colorize white() {
    return apply(_Styles.WHITE);
  }

  _Colorize yellow() {
    return apply(_Styles.YELLOW);
  }

  String _applyStyle(_Styles style, String text) {
    return buildEscSeq(style) + text + buildEscSeq(_Styles.RESET);
  }

  static String getStyle(_Styles style) {
    switch (style) {
      case _Styles.RESET:
        return '0';
      case _Styles.BOLD:
        return '1';
      case _Styles.DARK:
        return '2';
      case _Styles.ITALIC:
        return '3';
      case _Styles.UNDERLINE:
        return '4';
      case _Styles.BLINK:
        return '5';
      case _Styles.REVERSE:
        return '7';
      case _Styles.CONCEALED:
        return '8';
      case _Styles.DEFAULT:
        return '39';
      case _Styles.BLACK:
        return '30';
      case _Styles.RED:
        return '31';
      case _Styles.GREEN:
        return '32';
      case _Styles.YELLOW:
        return '33';
      case _Styles.BLUE:
        return '34';
      case _Styles.MAGENTA:
        return '35';
      case _Styles.CYAN:
        return '36';
      case _Styles.LIGHT_GRAY:
        return '37';
      case _Styles.DARK_GRAY:
        return '90';
      case _Styles.LIGHT_RED:
        return '91';
      case _Styles.LIGHT_GREEN:
        return '92';
      case _Styles.LIGHT_YELLOW:
        return '93';
      case _Styles.LIGHT_BLUE:
        return '94';
      case _Styles.LIGHT_MAGENTA:
        return '95';
      case _Styles.LIGHT_CYAN:
        return '96';
      case _Styles.WHITE:
        return '97';
      case _Styles.BG_DEFAULT:
        return '49';
      case _Styles.BG_BLACK:
        return '40';
      case _Styles.BG_RED:
        return '41';
      case _Styles.BG_GREEN:
        return '42';
      case _Styles.BG_YELLOW:
        return '43';
      case _Styles.BG_BLUE:
        return '44';
      case _Styles.BG_MAGENTA:
        return '45';
      case _Styles.BG_CYAN:
        return '46';
      case _Styles.BG_LIGHT_GRAY:
        return '47';
      case _Styles.BG_DARK_GRAY:
        return '100';
      case _Styles.BG_LIGHT_RED:
        return '101';
      case _Styles.BG_LIGHT_GREEN:
        return '102';
      case _Styles.BG_LIGHT_YELLOW:
        return '103';
      case _Styles.BG_LIGHT_BLUE:
        return '104';
      case _Styles.BG_LIGHT_MAGENTA:
        return '105';
      case _Styles.BG_LIGHT_CYAN:
        return '106';
      case _Styles.BG_WHITE:
        return '107';
      default:
        return '';
    }
  }
}

enum _Styles {
  RESET,
  BOLD,
  DARK,
  ITALIC,
  UNDERLINE,
  BLINK,
  REVERSE,
  CONCEALED,
  DEFAULT,
  BLACK,
  RED,
  GREEN,
  YELLOW,
  BLUE,
  MAGENTA,
  CYAN,
  LIGHT_GRAY,
  DARK_GRAY,
  LIGHT_RED,
  LIGHT_GREEN,
  LIGHT_YELLOW,
  LIGHT_BLUE,
  LIGHT_MAGENTA,
  LIGHT_CYAN,
  WHITE,
  BG_DEFAULT,
  BG_BLACK,
  BG_RED,
  BG_GREEN,
  BG_YELLOW,
  BG_BLUE,
  BG_MAGENTA,
  BG_CYAN,
  BG_LIGHT_GRAY,
  BG_DARK_GRAY,
  BG_LIGHT_RED,
  BG_LIGHT_GREEN,
  BG_LIGHT_YELLOW,
  BG_LIGHT_BLUE,
  BG_LIGHT_MAGENTA,
  BG_LIGHT_CYAN,
  BG_WHITE,
}
