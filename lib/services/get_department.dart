import 'package:flutter/foundation.dart';
import 'package:lichcongtac/model/department_model.dart';
import 'package:collection/collection.dart';

class GetDepartmentService {

  static Future<Object> getDepartmentList() async {
    List<DepartmentModel> departmentList = [];
    try {
      for (var element in data) {
        departmentList.add(DepartmentModel.fromJson(element));
      }

      var groupDepartment = groupBy(departmentList, (DepartmentModel e){
          return e.nhom;
        }
      );
      List<Map<String, dynamic>> responseDepartment = [];
      groupDepartment.forEach((key, value){
        responseDepartment.add({key: value});
      });
      return responseDepartment;
    } catch (e) {
      if (kDebugMode) {
        print('==================> DEBUG TRY CATCH GET DEPARTMENT');
      }
    }
    return [];
  }
}

const data = [
  {
    "DONVI_ID": 1,
    "TENDONVI": "Thường trực UBND tỉnh",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "KHAC",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": null
  },
  {
    "DONVI_ID": 2,
    "TENDONVI": "Văn phòng UBND tỉnh",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "TINH",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": null
  },
  {
    "DONVI_ID": 5,
    "TENDONVI": "Sở Tư pháp",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "TINH",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": "UBND tỉnh"
  },
  {
    "DONVI_ID": 6,
    "TENDONVI": "UBND Thành phố Vĩnh Long",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "HUYEN",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": "UBND tỉnh"
  },
  {
    "DONVI_ID": 7,
    "TENDONVI": "Phòng họp số 1",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "PHONGHOP",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": ""
  },
  {
    "DONVI_ID": 8,
    "TENDONVI": "Phòng họp số 2",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "PHONGHOP",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": ""
  },
  {
    "DONVI_ID": 9,
    "TENDONVI": "Phòng họp số 3",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "PHONGHOP",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": ""
  },
  {
    "DONVI_ID": 10,
    "TENDONVI": "Phòng họp số 4",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "PHONGHOP",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": ""
  },
  {
    "DONVI_ID": 11,
    "TENDONVI": "Phòng họp số 5",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "PHONGHOP",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": ""
  },
  {
    "DONVI_ID": 12,
    "TENDONVI": "Sở Nội vụ",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "TINH",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": ""
  },
  {
    "DONVI_ID": 13,
    "TENDONVI": "UBND huyện Long Hồ",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "HUYEN",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": ""
  },
  {
    "DONVI_ID": 14,
    "TENDONVI": "UBND huyện Mang Thít",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "HUYEN",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": ""
  },
  {
    "DONVI_ID": 15,
    "TENDONVI": "UBND huyện Tam Bình",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "HUYEN",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": ""
  },
  {
    "DONVI_ID": 16,
    "TENDONVI": "UBND huyện Vũng Liêm",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "HUYEN",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": ""
  },
  {
    "DONVI_ID": 17,
    "TENDONVI": "UBND huyện Trà Ôn",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "HUYEN",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": ""
  },
  {
    "DONVI_ID": 19,
    "TENDONVI": "UBND thị xã Bình Minh",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "HUYEN",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": ""
  },
  {
    "DONVI_ID": 20,
    "TENDONVI": "UBND huyện Bình Tân",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "HUYEN",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": ""
  },
  {
    "DONVI_ID": 21,
    "TENDONVI": "Sở Kế hoạch và Đầu tư",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "TINH",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": ""
  },
  {
    "DONVI_ID": 22,
    "TENDONVI": "Sở Tài chính",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "TINH",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": ""
  },
  {
    "DONVI_ID": 23,
    "TENDONVI": "Sở Giao thông Vận tải",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "TINH",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": ""
  },
  {
    "DONVI_ID": 24,
    "TENDONVI": "Sở Xây dựng",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "TINH",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": ""
  },
  {
    "DONVI_ID": 25,
    "TENDONVI": "Sở Công thương",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "TINH",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": ""
  },
  {
    "DONVI_ID": 26,
    "TENDONVI": "Sở Y tế",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "TINH",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": ""
  },
  {
    "DONVI_ID": 27,
    "TENDONVI": "Sở Lao động Thương binh và Xã hội",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "TINH",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": ""
  },
  {
    "DONVI_ID": 28,
    "TENDONVI": "Sở Khoa học và Công nghệ",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "TINH",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": ""
  },
  {
    "DONVI_ID": 29,
    "TENDONVI": "Sở Nông nghiệp và Phát triển nông thôn",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "TINH",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": ""
  },
  {
    "DONVI_ID": 30,
    "TENDONVI": "Sở Tài nguyên và Môi trường",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "TINH",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": ""
  },
  {
    "DONVI_ID": 31,
    "TENDONVI": "Thanh tra tỉnh",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "TINH",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": ""
  },
  {
    "DONVI_ID": 32,
    "TENDONVI": "Ban dân tộc",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "TINH",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": ""
  },
  {
    "DONVI_ID": 33,
    "TENDONVI": "Văn phòng HĐND tỉnh",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "TINH",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": ""
  },
  {
    "DONVI_ID": 34,
    "TENDONVI": "Sở Văn hóa Thể thao và Du lịch",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "TINH",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": ""
  },
  {
    "DONVI_ID": 35,
    "TENDONVI": "Ban quản lý các Khu công nghiệp",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "TINH",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": ""
  },
  {
    "DONVI_ID": 36,
    "TENDONVI": "Sở Thông tin và Truyền thông",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "TINH",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": ""
  },
  {
    "DONVI_ID": 37,
    "TENDONVI": "Công an tỉnh",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "TINH",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": ""
  },
  {
    "DONVI_ID": 38,
    "TENDONVI": "Bộ chỉ huy quân sự tỉnh",
    "TRANGTHAI": true,
    "THUTU": 0,
    "NHOM": "TINH",
    "DONVI_CHA_ID": 0,
    "DONVI_CHA_TEN": ""
  }
];