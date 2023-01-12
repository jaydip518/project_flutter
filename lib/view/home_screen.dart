import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  List tabItems = [
    "Sign Up",
    "Sign In",
  ];

  int tabSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(40)),
            child: TabBar(
              indicatorColor: Colors.transparent,
              controller: tabController,
              onTap: (value) {
                setState(() {
                  tabSelected = value;
                });
              },
              labelPadding: EdgeInsets.zero,
              indicatorPadding: EdgeInsets.zero,
              tabs: List.generate(
                2,
                (index) => Container(
                  height: 45,
                  width: 165,
                  decoration: BoxDecoration(
                      color: tabSelected == index
                          ? Colors.white
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(40)),
                  child: Center(
                    child: Text(
                      tabItems[index],
                      style: TextStyle(
                          color: tabSelected == index
                              ? Colors.orange
                              : Colors.grey),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(controller: tabController, children: [
              Center(
                  child: Text(
                "Sign Up",
                textScaleFactor: 2,
              )),
              Center(
                  child: Text(
                "Sign In",
                textScaleFactor: 2,
              )),
            ]),
          )
        ],
      ),
    ));
  }
}
