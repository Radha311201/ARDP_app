import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ardp_app/styles/color_palette.dart';
class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final cellList  = ["Cell 1", "Cell 2", "Cell 3","Cell 4", "Cell 5", "Cell 6","Cell 1", "Cell 2", "Cell 3","Cell 4", "Cell 5", "Cell 6"];
  final cellSubtitles = [
    "Here is cell 1 subtitle",
    "Here is cell 2 subtitle",
    "Here is cell 3 subtitle",
    "Here is cell 4 subtitle",
    "Here is cell 5 subtitle",
    "Here is cell 6 subtitle",
    "Here is cell 1 subtitle",
    "Here is cell 2 subtitle",
    "Here is cell 3 subtitle",
    "Here is cell 4 subtitle",
    "Here is cell 5 subtitle",
    "Here is cell 6 subtitle"
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130),
        child: AppBar(
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 5,
            indicatorColor: AppColorPalette.tabIndicator,
            tabs: [
              Tab(child: Text(
                "home",
                style: TextStyle(
                  fontSize: 18,
                  color: AppColorPalette.dashboardTabText,
                ),
              ),
              ),
              Tab(child: Text(
                "events",
                style: TextStyle(
                  fontSize: 18,
                  color: AppColorPalette.dashboardTabText,
                ),
              ),
              ),
            ],
          ),
          backgroundColor: AppColorPalette.dashboardTopBarBg,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))
          ),
        ),
      ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SafeArea(
            child: TabBarView(
              children: [
                ListView.builder(
                    itemCount: cellList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Theme(
                              data : Theme.of(context).copyWith(dividerColor : Colors.transparent,accentColor: AppColorPalette.dashboardTabText),
                              child: ExpansionTile(
                                title: ListTile(

                                    title: Text(cellList[index]),
                                    subtitle: Text(cellSubtitles[index]),
                                    leading: CircleAvatar(
                                      backgroundColor: AppColorPalette.cellImageBg,
                                        radius: 50,

                                 ),

                                ),
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 200,
                                      width: 300,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                          color: AppColorPalette.dashboardTopBarBg,
                                          offset: const Offset(
                                            5.0,
                                            5.0,
                                          ),

                                        ),]
                                      ),
                                    ),
                                  )
                                ],

                              ),
                            ),
                          ),

                          Divider(
                            height: 15,
                            thickness: 0.2,
                            color: AppColorPalette.dashboardTopBarBg,
                          )
                        ],
                      );
                    }),
                ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              height: 250,
                              width: 350,
                              decoration: BoxDecoration(
                                color: AppColorPalette.dashboardTopBarBg,
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),

                        ],
                      );
                    }
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}