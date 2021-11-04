import 'package:flutter/material.dart';
import 'package:ui_data_table/users_model.dart';
import 'package:ui_data_table/widgets/navigation_drawer.dart';

//https://www.youtube.com/watch?v=DupniuA45l4&ab_channel=MobileProgrammer

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<UsersModel> _usersList = [];
  late bool sort;

  @override
  initState() {
    _usersList = UsersModel.getUsers();
    sort = false;
    super.initState();
  }

//function to sort columen
  onSortColumn(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      if (ascending) {
        _usersList.sort((a, b) => a.lastName.compareTo(b.lastName));
      } else {
        _usersList.sort((a, b) => b.lastName.compareTo(a.lastName));
      }
    }
  }

  SingleChildScrollView dataBody() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: DataTable(
        sortAscending: sort,
        sortColumnIndex: 0,
        columns: [
          DataColumn(
            label: const Text('Last'),
            numeric: false,
            tooltip: 'enter last name',
            onSort: (columnindex, ascending) {
              //toggle
              setState(() {
                sort = !sort;
              });
              //function to sort columns
              onSortColumn(columnindex, ascending);
            },
          ),
          const DataColumn(
              label: Text('First'),
              numeric: false,
              tooltip: 'enter first name'),
          const DataColumn(
              label: Text('City'), numeric: false, tooltip: 'location city'),
          const DataColumn(
              label: Text('Age'), numeric: false, tooltip: 'user age'),
          const DataColumn(
              label: Text('Email'), numeric: false, tooltip: 'user email'),
        ],
        //dynamically populated by List
        rows: _usersList
            .map((userItem) => DataRow(cells: [
                  DataCell(
                      Text(
                        userItem.lastName,
                      ), onTap: () {
                    print('you clicked ' + userItem.lastName);
                  }),
                  DataCell(Text(userItem.firstName)),
                  DataCell(Text(userItem.city)),
                  DataCell(Text(userItem.age.toString())),
                  DataCell(Text(userItem.email)),
                ]))
            .toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          verticalDirection: VerticalDirection.down,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              ),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'Data Table Sort',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //expanded widget is necessary for the singlechildscrollviedw to work
            Expanded(
              child: Center(
                child: dataBody(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
