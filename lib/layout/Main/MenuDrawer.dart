
import 'package:hidden_drawer_menu/hidden_drawer/hidden_drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:kopkarnet/layout/page/dashboard.dart';
import 'package:kopkarnet/layout/page/pinjaman.dart';
import 'package:kopkarnet/layout/page/tabungan.dart';
import 'package:kopkarnet/layout/page/history.dart';
import 'package:kopkarnet/layout/ui/button.dart';

class MyHomePage extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff10316b),
      ),
      home: SimpleHiddenDrawer(
        menu: Menu(),
        screenSelectedBuilder: (position, controller) {
          Widget screenCurrent;

          switch (position) {
            case 0:
              screenCurrent = OverviewPage();
              break;
            case 1:
              screenCurrent = AccountsPage();
              break;
            case 2:
              screenCurrent = BillsPage();
              break;
            case 3:
              screenCurrent = History();
              break;
          }

          return Scaffold(
            backgroundColor: Color(0xff10316b),
            appBar: AppBar(
              leading: IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    controller.toggle();
                  }),
            ),
            body: screenCurrent,
          );
        },
      ),
    );
  }
}

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      color: Color(0xff0f1a2e),
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                SimpleHiddenDrawerProvider.of(context)
                    .setSelectedMenuPosition(0);

              },
              child: Text(
                "Dashboard",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: ("Roboto")
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                SimpleHiddenDrawerProvider.of(context)
                    .setSelectedMenuPosition(1);

              },
              child: Text(
                "Tabungan",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: ("Roboto")
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                SimpleHiddenDrawerProvider.of(context)
                    .setSelectedMenuPosition(2);

              },
              child: Text(
                "Pinjaman",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: ("Roboto")
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                SimpleHiddenDrawerProvider.of(context)
                    .setSelectedMenuPosition(3);

              },
              child: Text(
                "History",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: ("Roboto")
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}