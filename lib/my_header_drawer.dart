import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/Transfer_money_Page.dart';
import 'package:practice/user_page.dart';

class MyHeaderDrawer extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final name = 'Jakob Maraguinot';
    final bankacc = '007963354578';
    final urlImage = 'https://imgur.com/iYOHD7F';

    return Drawer(
      child: Material(
        color: Color(0xFFFFCCBC),
        child: ListView(
          children: <Widget>[
            buildHeader(
              urlImage: urlImage,
              name: name,
              bankacc: bankacc,
              onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => UserPage(
                  name: name,
                  urlImage: urlImage,
                ),
              )),
            ),
            const SizedBox(height: 24),
            //DividerLine
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 1),
              child: Divider(color: Color(0xFF263238), thickness: 2),
            ),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
              text: 'Transfer Money',
              icon: Icons.money,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Settings',
              icon: Icons.settings,
            )
          ],
        ),
      ),
    );
  }
}

Widget buildHeader({
  required String urlImage,
  required String name,
  required String bankacc,
  required VoidCallback onClicked,
}) =>
    InkWell(
      onTap: onClicked,
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Row(children: [
            CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style: GoogleFonts.openSans(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                Text(
                  bankacc,
                  style: GoogleFonts.openSans(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ])),
    );

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  final color = Colors.white;
  final hoverColor = Colors.white;

  return ListTile(
    leading: Icon(icon, color: Color(0xFF263238), size: 25),
    title: Text(text,
        style: GoogleFonts.openSans(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17)),
    hoverColor: hoverColor,
    onTap: onClicked,
  );
}

void selectedItem(BuildContext context, int index) {
  Navigator.of(context).pop();
  switch (index) {
    case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => TransfermoneyPage(),
      ));
      break;
  }
}
