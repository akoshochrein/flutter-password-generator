import 'dart:math';

// Sample helper used from
// https://stackoverflow.com/questions/61919395/how-to-generate-random-string-in-dart
const _chars =
    'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890!@#^&*()';

String _getRandomString(int length) => String.fromCharCodes(
      Iterable.generate(
        length,
        (_) => _chars.codeUnitAt(
          Random().nextInt(_chars.length),
        ),
      ),
    );

generatePassword() {
  return _getRandomString(16);
}
