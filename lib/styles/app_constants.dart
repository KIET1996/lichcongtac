import 'package:flutter/material.dart';

class ColorConstant{
  static const kPrimaryColor = Color(0xFF3DAAE8);
  static const kSecondaryColor = Color(0xFFFFFFFF);
  static const kThirdColor = Color(0xFFd8ecfb);
  static const kDisableColor = Color(0xFF9D9D9D);
  static const kBackgroundColor = Color(0xFF171717);
}

class CodeConstant {
  static const UNKNOWN = "uk";
  static const CODECHECKIN = 200;
  static const CODECHECKOUT = 201;
  static const CODEFAILED = 401;
  static const CODEERROR = 500;
  static const RESHOLD = 0.09;
}

class StringConstant{
  static const titleApp = 'Lịch công tác';

  static const tabName = {"KHAC":"THƯỜNG TRỰC UBND TỈNH", "TINH": "SỞ NGÀNH TỈNH", "HUYEN": "HUYỆN - THỊ XÃ VÀ THÀNH PHỐ", "PHONGHOP":"PHÒNG HỌP"};
  static const pathLogo = 'assets/icons/logo.png';
  static const pathUser = 'assets/user.png';
}

class SizeConstant{
  static const fontSizeSmall = 1.3;
  static const fontSizeMedium = 1.5;
  static const fontSizeLarge = 2.4;

  static const gapSizeSmall = 0.8;
  static const gapSizeNormal = 1.6;
  static const gapSizeLarge = 3.2;

  static const borderSizeSmall = 1.0;
  static const borderSizeMedium = 2.0;
  static const borderSizeLarge = 3.0;

  static const iconSizeLarge = 6.0;
}

class ServerURL{
  static const baseURL = "http://192.168.1.13";
  static const PORT = '5555';
  static const HELLO = "/hello";
  static const REGISTER = "/register";
  static const IDENTIFY = "/identify";
  static const erpURL = "http://erp.liink.vn";
  static const CHECKIN = "/check-in?user_id";
  static const CHECKOUT = "/check-out?user_id";
  static const FIND_USER = "/find-user?employee_obj";

  static String finalURL ({String? endpoint}) {
    if (endpoint != null){
      return baseURL + ':' + PORT + endpoint;
    }
    return baseURL + ':' + PORT;
  }
}
