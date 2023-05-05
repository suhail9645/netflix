import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

import '../../core/colors/const_widget.dart';
import '../widgets/app_bar_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            title: const Text(
              'New & Hot',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            actions: [
              const Icon(
                Icons.cast,
                color: Colors.white,
                size: 27,
              ),
              boxForSpace,
              Container(
                height: 27,
                width: 27,
                color: Colors.blue,
              ),
              boxForSpace,
            ],
            bottom: const TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
                labelColor: backGroundColor,
                unselectedLabelColor: kwhite,
                isScrollable: true,
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                indicator: BoxDecoration(
                  
                  color: kwhite,
                  borderRadius: BorderRadius.all(
                    
                    Radius.circular(30),
                  ),
                ),
                tabs: [
                  Tab(
                    text: '🍿 Coming soon',
                  ),
                  Tab(
                    text: '👀 Everyone Watching',
                  )
                ]),
          ),
        ),
        body: TabBarView(children: [
          buildTabbarView('Coming soon'),
           buildTabbarView('Everyone Watching'),
        ])
      ),
    );
  }
  Widget buildTabbarView(String name){
    return Center(child: Text(name),);
  }
  }
