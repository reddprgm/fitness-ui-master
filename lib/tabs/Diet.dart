import 'package:fitness_flutter/components/Header.dart';
import 'package:fitness_flutter/components/tab_view_base.dart';
import 'package:flutter/material.dart';

class Diet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              flexibleSpace: Header(
                'Дієта',
                rightSide: Container(
                  height: 35.0,
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  margin: EdgeInsets.only(right: 20.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(100, 140, 255, 1.0),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Text(
                      'Відстеження',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ),
              bottom: TabBar(
                tabs: <Widget>[
                  Container(
                    height: 30.0,
                    child: Tab(
                      text: 'Сніданок',
                    ),
                  ),
                  Container(
                    height: 30.0,
                    child: Tab(
                      text: 'Обід',
                    ),
                  ),
                  Container(
                    height: 30.0,
                    child: Tab(
                      text: 'Вечеря',
                    ),
                  ),
                  Container(
                    height: 30.0,
                    child: Tab(
                      text: 'Перекус',
                    ),
                  ),
                ],
                labelColor: Colors.black87,
                unselectedLabelColor: Colors.grey[400],
                indicatorWeight: 4.0,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Color.fromRGBO(215, 225, 255, 1.0),
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                TabViewBase(
                  tabName: 'сніданок',
                ),
                TabViewBase(
                  tabName: 'обід',
                ),
                TabViewBase(
                  tabName: 'вечерю',
                ),
                TabViewBase(
                  tabName: 'перекус',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
