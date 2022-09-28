import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lichcongtac/styles/app_constants.dart';
import 'package:lichcongtac/styles/style_constants.dart';

import 'component/drawer_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image.asset(StringConstant.pathLogo, fit: BoxFit.cover),
        ),
        title: const Text(StringConstant.titleApp),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              _scaffoldKey.currentState?.openDrawer();
            },
            icon: const Icon(Icons.menu, size: 30,)
          )
        ],
      ),
      drawer:  const DrawerWidget(),
      drawerEnableOpenDragGesture: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Text("LỊCH CÔNG TÁC CÁC CƠ QUAN NHÀ NƯỚC TỈNH VĨNH LONG", textAlign: TextAlign.center, style: ThemeStyle.styleTitleText,)),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}

