import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:fluttertoast/fluttertoast.dart';

showToast(String message){
  Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: AppColors.offWhite,
        textColor: AppColors.primaryColor,
        fontSize: 16.0
    );
}