import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lichcongtac/controllers/department_controller.dart';
import 'package:lichcongtac/styles/app_constants.dart';
import 'package:lichcongtac/styles/style_constants.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  DepartmentController departmentController = DepartmentController();
  List<Map<String, dynamic>> departmentList = [];
  getDepartment () async {
    departmentList = await departmentController.getDepartment();
    if (kDebugMode) {
      print("=============>DEBUG DEPARTMENT WIDGET: ${departmentList.length}");
    }
  }

  @override
  void initState() {
    getDepartment();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorConstant.kPrimaryColor,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Container(
                    color: ColorConstant.kSecondaryColor,
                    padding: const EdgeInsets.all(8),
                      child: const Icon(Icons.person, size: 90, color: ColorConstant.kPrimaryColor,)
                  )
                ),
                const SizedBox(height: 10,),
                Text("Khách", style: ThemeStyle.styleHeaderText1,),
                const SizedBox(height: 15,),
                InkWell(
                  onTap: (){},
                  child: Text("Đăng nhập/ Đăng ký", style: ThemeStyle.styleNormalText,),
                )
              ],
            ),
            const SizedBox(height: 20,),
            Expanded(
              child: ListView.builder(
                itemCount: departmentList.length,
                itemBuilder: (BuildContext context, int index){
                  var department = departmentList[index];
                  var unit = department.values.toList().first;
                  print("Widget ${StringConstant.tabName[department.keys.toList().first]}");
                  print("Widget length ${department.values.toList().first?.length}");
                  return Theme(
                    data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                    child: Column(
                      children: [
                        ExpansionTile(
                            title: Text((StringConstant.tabName[department.keys.toList().first])!, style: ThemeStyle.styleNormalText,),
                            children: [
                              Container(
                                color: ColorConstant.kSecondaryColor,
                                padding: EdgeInsets.zero,
                                child:
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    for(int i=0; i < unit.length; i++)
                                      Row(
                                          mainAxisAlignment:  MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: InkWell(
                                                onTap:(){
                                                  if (kDebugMode) {
                                                    print("============>${unit[i]}");
                                                  }
                                                },
                                                child: Container(
                                                    decoration: const BoxDecoration(
                                                        border: Border(
                                                          bottom: BorderSide(
                                                              color: ColorConstant.kDisableColor,
                                                              width: 1
                                                          ),
                                                        )
                                                    ),
                                                    padding: const EdgeInsets.fromLTRB(20, 15, 5, 15),
                                                    child: Text(unit[i].tendonvi)
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                  ],
                                ),
                              ),
                            ],
                            collapsedIconColor: ColorConstant.kSecondaryColor,
                            iconColor: ColorConstant.kSecondaryColor,
                            expandedAlignment: Alignment.center,
                            childrenPadding: EdgeInsets.zero,
                          ),
                        const Divider(
                          color: ColorConstant.kSecondaryColor,
                          thickness: 1,
                        ),
                      ],
                    ),
                  );
                },

              ),
            ),
          ],
        ),
      ),
    );
  }
}
