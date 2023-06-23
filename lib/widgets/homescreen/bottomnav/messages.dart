import 'package:chatapp/widgets/homescreen/tabbar/callinsidetabbar.dart';
import 'package:chatapp/widgets/homescreen/tabbar/groupintabbar.dart';
import 'package:chatapp/widgets/homescreen/tabbar/messageinsidetab.dart';
import 'package:chatapp/widgets/homescreen/tabbar/tabbarindicator.dart';
import 'package:chatapp/widgets/text.dart';
import 'package:flutter/material.dart';

class MessagesList extends StatelessWidget {
  const MessagesList({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.white70,
          backgroundColor: Colors.white54,
          automaticallyImplyLeading: false,
          title: Text(
            "All Chats",
            style: TextStyle(color: Colors.black),
          ),
          bottom: TabBar(
              indicatorPadding: EdgeInsets.only(right: 5, top: 15),
              indicator: DotIndicator(color: Colors.blue, radius: 5),
              tabs: [
                Tab(child: CustomText(content: "Message", size: 20)),
                Tab(child: CustomText(content: "Group", size: 20)),
                Tab(child: CustomText(content: "Call", size: 20)),
              ]),
          actions: [
            Icon(
              Icons.search,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.person_add,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: TabBarView(children: [
          MessageinsideTabbar(),
          Groups(),
          Call(),
        ]),
      ),
    );
  }
}