import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mage/Pages/Loginpage.dart';
import 'package:mage/Pages/image.dart';
import 'package:mage/main.dart';
import 'package:mage/utili/routes.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://avatars.githubusercontent.com/u/8967102?v=4";
    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 201, 201, 201),
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 112, 111, 111)),
                accountName: Text("Haseeb"),
                accountEmail: Text("chxhaseeb@gmail.com"),
                margin: EdgeInsets.zero,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.up_arrow,
                color: Colors.black,
              ),
              title: Text("upload Image"),
              textColor: Colors.black,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => image(
                      title: 'imageupload',
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.star,
                color: Colors.black,
              ),
              title: Text("HomePage"),
              textColor: Colors.black,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.chevron_back,
                color: Colors.black,
              ),
              title: Text("Logout"),
              textColor: Colors.black,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Loginpage()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
