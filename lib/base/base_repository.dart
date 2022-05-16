import 'package:get/get.dart';


abstract class BaseRepository {


  Future<String> getErrorMessage(String message) async {
    String errorMessage = '';
    switch (message) {
      case "Connection timeout":
        errorMessage = 'Время соединения вышло';
        break;
      case "Something wrong":
        errorMessage =
            'Что-то не так. Проверьте свое интернет-соединение, несмотря ни на что.';
        break;
      default:
        try {
          // await translator
          //     .translate(
          //       message,
          //       from: 'en',
          //       to: Get.locale?.languageCode ??
          //           BaseFunctions.getDefaultLocale(),
          //     )
          //     .then((value) => errorMessage = value.text);
        } catch (e) {
          errorMessage = message;
        }
    }
    return errorMessage;
  }
}
