import 'package:kopkarnet/data/account.dart';
import 'package:kopkarnet/layout/screen/accounts.dart';
import 'package:kopkarnet/layout/ui/button.dart';
import 'package:kopkarnet/layout/ui/widgets.dart';
import 'package:kopkarnet/layout/ui/layouts.dart';
import 'package:flutter/material.dart';

class AccountsPage extends StatelessWidget {
  const AccountsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AccountChartLayout(
          accountSet: mockAccounts, // TODO: replace with backend call.
          builder: (BuildContext context, int index) {
            final account = mockAccounts[index];
            final heroTag = 'account-page-item-$index';
            return AccountListTile(
              account: account,
              heroTag: heroTag,
              onPressed: (context) {
                Navigator.of(context).push(
                  AccountScreen.route(context, account, heroTag),
                );
              },
            );
          },
        ),
        Positioned(bottom: 50.0, child: ButtonSavingsAccount()),
        SizedBox(
          height: 220.0,
          child: Center(
            child: Text(
              "Rekening",
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}
