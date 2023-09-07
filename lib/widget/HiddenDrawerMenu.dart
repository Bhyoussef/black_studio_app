import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/controllers/MainController.dart';
import 'package:linkia_ecommerce/views/main/MainScreen.dart';
import 'package:linkia_ecommerce/widget/drawer.dart';

class HiddenDrawer extends StatefulWidget {
  final int initialIndex;
  final bool? isNotHome;
  const HiddenDrawer({super.key, required this.initialIndex, this.isNotHome});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {

  late double xOffset = 0;
  late double yOffset = 0;
  late double scaleFactor = 0;
  bool isDraging =false;
  late bool isDrawerOpen ;

  final MainController controller = Get.put(MainController());


  @override
  void initState() {
    super.initState();
    closeDrawer();
    Future.delayed(Duration(milliseconds: 200), () {
      controller.changePage(widget.initialIndex);
    });
  }


  void closeDrawer()=>setState(() {

    xOffset = 0;
    yOffset = 0;
    scaleFactor = 1;
    isDrawerOpen=false;

  });

  void openDrawer()=>setState(() {

      xOffset = 304;
      yOffset = 150;
      scaleFactor = 0.7;
      isDrawerOpen=true;

  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          builDrawer(),
          buildPage()
        ],
      ),
    );
  }

  Widget builDrawer() {
    return DrawerWidget();
  }

  Widget buildPage() {
    return WillPopScope(
      onWillPop: () async{
        if(isDrawerOpen){
          closeDrawer();
          return false;
        }else{
          return true;
        }

      },
      child: GestureDetector(
        onTap: closeDrawer,
        onHorizontalDragStart: (details)=>isDraging=true,
        onHorizontalDragUpdate: (details){

          if(!isDraging)return;
          const delta=1;
          if(details.delta.dx > delta){
            openDrawer();
          }else if(details.delta.dx< -delta){
            closeDrawer();
          }
          isDraging=false;
        },
        child: AnimatedContainer(
            duration: Duration(microseconds: 250),
            transform: Matrix4.translationValues(xOffset, yOffset, 0)
              ..scale(scaleFactor),
            child: AbsorbPointer(
              absorbing: isDrawerOpen,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(isDrawerOpen ?20:0 ),
                child: Container(
                  decoration: BoxDecoration(
                    color: isDrawerOpen ? AppColor.primaryWhiteColor : AppColor.primaryWhiteColor,
                    boxShadow: isDrawerOpen
                        ? [
                      BoxShadow(
                        color: Color(0xff00001A),
                        offset: Offset(0, 50),
                        blurRadius: 99,
                      ),
                    ]
                        : [], // Empty boxShadow when the drawer is closed
                    borderRadius: BorderRadius.circular(isDrawerOpen ? 50 : 0),
                  ),
                  child: MainScreen(
                    initialIndex: 0,openDrawer:openDrawer,isNotHome: widget.isNotHome,
                  ),
                ),
              ),
            )),
      ),
    );
  }
}


