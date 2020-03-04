import 'package:kopkarnet/data/account.dart';
import 'package:kopkarnet/layout/screen/accounts.dart';
import 'package:kopkarnet/layout/ui/button.dart';
import 'package:kopkarnet/layout/ui/widgets.dart';
import 'package:kopkarnet/layout/ui/layouts.dart';
import 'package:flutter/material.dart';

class BillsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AccountChartLayout(
          accountSet: mockBills, // TODO: replace with backend call.
          builder: (BuildContext context, int index) {
            final bill = mockBills[index];
            final heroTag = 'bills-page-item-$index';
            return AccountListTile(
              account: bill,
              heroTag: heroTag,
              onPressed: (context) {
                Navigator.of(context).push(
                  AccountScreen.route(context, bill, heroTag),
                );
              },
            );
          },
        ),
        Positioned(
            bottom: 50.0,
            child: ButtonPayAccount()),
      ],
    );
  }
}
