import 'package:catalog_app/utils/Routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  final imgUrl =
      "https://instagram.fbek1-4.fna.fbcdn.net/v/t51.2885-19/344865091_739809067882227_6101608267156713346_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fbek1-4.fna.fbcdn.net&_nc_cat=103&_nc_ohc=wVYRFH5IYzYAX924sCN&edm=ACWDqb8BAAAA&ccb=7-5&oh=00_AfAMzfixVoctm-27zbeyq8i1duKuqOokQoMPNw6jgCdijw&oe=6518C3AA&_nc_sid=ee9879";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple,
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.green[300]),
              margin: EdgeInsets.zero,
              accountName: const Text(
                "Naman Goel",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: const Text(
                "nggoel888@gmail.com",
                textScaleFactor: 1.2,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imgUrl),
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.3,
              style: TextStyle(color: Colors.white),
            ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
            ),
            title: Text(
              "Email Us",
              textScaleFactor: 1.3,
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, MyRoute.loginRoute),
            leading: const Icon(
              CupertinoIcons.person_crop_square,
              color: Colors.white,
            ),
            title: const Text(
              "Login",
              textScaleFactor: 1.3,
              style: TextStyle(color: Colors.white),
            ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.chat_bubble_2_fill,
              color: Colors.white,
            ),
            title: Text(
              "Support",
              textScaleFactor: 1.3,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
