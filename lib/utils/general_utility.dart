import 'package:african_countries/constants/color.dart';
import 'package:fluttertoast/fluttertoast.dart';

abstract class GeneralUtility {
  //DISPLAY TOASTS
  static void showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: AppColors.Black,
      textColor: AppColors.White,
      fontSize: 16.0,
    );
  }
}
