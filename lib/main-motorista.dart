import 'package:flutter/material.dart';
import 'package:getamb/tabPages/tab_carteira.dart';
import 'package:getamb/tabPages/tab_home.dart';
import 'package:getamb/tabPages/tab_profile.dart';
import 'package:getamb/tabPages/tab_rating.dart';

class MainMotor extends StatefulWidget {
  const MainMotor({super.key});

  @override
  State<MainMotor> createState() => _MainMotorState();
}

class _MainMotorState extends State<MainMotor> with SingleTickerProviderStateMixin {
  TabController? tabController;
  int selectIndex = 0;

  onItemClicked(int index){
    setState(() {
      selectIndex = index;
      tabController!.index = selectIndex;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: tabController,
        children:const [
          HomeTab(),
          Carteita(),
          Rating(),
          Profile()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items:  const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home"
          ),
           BottomNavigationBarItem(
          icon: Icon(Icons.credit_card),
          label: "Carteira"
          ),
           BottomNavigationBarItem(
          icon: Icon(Icons.star),
          label: "Rating"
          ),
           BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profile"
          ),
      ],
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.white,
      backgroundColor: Colors.green,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: TextStyle(fontSize: 14),
      showSelectedLabels: true,
      currentIndex: selectIndex,
      onTap: onItemClicked,
      ),
    );
  }
}