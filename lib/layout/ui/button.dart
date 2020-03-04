import 'package:flutter/material.dart';

class ButtonPayAccount extends StatefulWidget {
  @override
  _ButtonPayAccountState createState() => _ButtonPayAccountState();
}

class _ButtonPayAccountState extends State<ButtonPayAccount> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
          ),
          height: 55,
          width: (MediaQuery.of(context).size.width - 42) / 2,
          margin: EdgeInsetsDirectional.only(
            start: 14,
            top: 0.0,
            end: 7.0,
          ),
          child: FlatButton(
            color: Color(0xff1f68d6),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.0)),
            child: Text(
              "Bayar",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "NunitoSans",
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
          ),
          height: 55,
          width: (MediaQuery.of(context).size.width - 42) / 2,
          margin: EdgeInsetsDirectional.only(
            start: 14,
            top: 0.0,
            end: 7.0,
          ),
          child: FlatButton(
            color: Color(0xff102c5e),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.0)),
            child: Text(
              "Pinjam",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "NunitoSans",
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}

class ButtonSavingsAccount extends StatefulWidget {
  @override
  _ButtonSavingsAccountState createState() => _ButtonSavingsAccountState();
}

class _ButtonSavingsAccountState extends State<ButtonSavingsAccount> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
          ),
          height: 55,
          width: (MediaQuery.of(context).size.width - 42) / 2,
          margin: EdgeInsetsDirectional.only(
            start: 14,
            top: 0.0,
            end: 7.0,
          ),
          child: FlatButton(
            color: Color(0xff1f68d6),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.0)),
            child: Text(
              "Tabung",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "NunitoSans",
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Tabungan Sukarela",
                                  hintStyle: TextStyle(color: Colors.grey,fontFamily: ("Roboto")),
                                  prefixIcon: ImageIcon(
                                    new AssetImage("assets/Sukarela.png"),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Tabungan Pokok",
                                  hintStyle: TextStyle(color: Colors.grey,fontFamily: ("Roboto")),
                                  prefixIcon: ImageIcon(
                                    new AssetImage("assets/Pokok.png"),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Tabungan Wajib",
                                  hintStyle: TextStyle(color: Colors.grey,fontFamily: ("Roboto")),
                                  prefixIcon: ImageIcon(
                                    new AssetImage("assets/Wajib.png"),
                                  )
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RaisedButton(
                                child: Text("Next"),
                                onPressed: () {
                                  if (_formKey.currentState.validate()) {
                                    _formKey.currentState.save();
                                  }
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  });
            },
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
          ),
          height: 55,
          width: (MediaQuery.of(context).size.width - 42) / 2,
          margin: EdgeInsetsDirectional.only(
            start: 14,
            top: 0.0,
            end: 7.0,
          ),
          child: FlatButton(
            color: Color(0xff102c5e),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.0)),
            child: Text(
              "Pinjam",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "NunitoSans",
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
