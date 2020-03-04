import 'package:flutter/material.dart';
import 'package:kopkarnet/layout/ui/widgets.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        child: Row(
          children: <Widget>[
            Container(
              width: 5.0,
              height: 38.0,
              color: Colors.blue,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        ("History"),
                        style: const TextStyle(
                          fontFamily: 'monospace',
                          fontSize: 16.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                ("History"),
                  style: const TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 20.0,
                      color: Colors.white),
                ),
                Icon(
                  Icons.chevron_right,
                  color: Colors.grey,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
