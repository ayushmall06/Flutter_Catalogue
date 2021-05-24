import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String imageUrl =
        "https://scontent.flko3-1.fna.fbcdn.net/v/t1.6435-9/146706416_118345806852514_3529260846428802227_n.jpg?_nc_cat=100&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=qe0keJgFknoAX8EK0FC&_nc_ht=scontent.flko3-1.fna&oh=aac98f3f6d20f2b6d938ceef064da5fc&oe=60CD5CAF";
    return Drawer(
      
      
      child: Container(
        padding: EdgeInsets.only(left: 20),
        color: Colors.blue,
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Ayush Mall"),
                  accountEmail: Text("ayushmall06@gmail.com"), 
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
              )
            ),
            Divider(
              height: 1,
              thickness: 1,
              indent: 1,

            ),
          ListTile(
            leading: Icon(
              CupertinoIcons.person_fill,
              color: Colors.white
              ),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
              style: TextStyle(
                
                color: Colors.white,

              ),
              ),
            ),
          ListTile(
            leading: Icon(
              CupertinoIcons.settings_solid,
              color: Colors.white
              ),
            title: Text(
              "Settings",
              textScaleFactor: 1.2,
              style: TextStyle(
                
                color: Colors.white,

              ),
              ),
            ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail_solid,
              color: Colors.white
              ),
            title: Text(
              "Contact",
              textScaleFactor: 1.2,
              style: TextStyle(
                
                color: Colors.white,

              ),
              ),
            ),
          

        ],
      ),
    )
    );
  }
}
