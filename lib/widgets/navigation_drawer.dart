import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_data_table/data_table2.dart';
import 'package:ui_data_table/home_screen.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      //using Material instead of Container allows inkwell behavior
      child: Material(
        color: Colors.white12,
        child: Container(
          //height: double.infinity,
          //padding: const EdgeInsets.symmetric(horizontal: 11.0, vertical: 3.0),
          child: ListView(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
            children: [
              const SizedBox(height: 70.0),
              //profile box
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 11.0, vertical: 3.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // const CircleAvatar(
                    //   backgroundColor: Colors.cyan,
                    //   radius: 30.0,
                    //   backgroundImage:
                    //       AssetImage('lib/assets/images/chinaskiAvatar.jpg'),
                    // ),
                    // const SizedBox(
                    //   width: 12.0,
                    // ),
                    Column(
                      children: const [
                        Text(
                          'Henry Chinaski',
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          'Writer and skid row bum',
                          style: TextStyle(
                              fontSize: 14,
                              //fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    const FaIcon(FontAwesomeIcons.fire),
                    //color: Colors.black,
                  ],
                ),
              ),
              ListTile(
                //leading: Text('icon'),
                title: const Text(
                  'Home Screen',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                subtitle: const Text(
                  'subtitle',
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),
              const SizedBox(height: 12.0),
              const Divider(
                color: Colors.black,
                thickness: 2.0,
              ),
              ListTile(
                //leading: Text('icon'),
                title: const Text(
                  'Screen Two',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                subtitle: const Text(
                  'subtitle',
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DataTable2()),
                  );
                },
              ),
              const SizedBox(height: 12.0),
              const Divider(
                color: Colors.black,
                thickness: 2.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
