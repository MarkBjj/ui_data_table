import 'package:flutter/material.dart';
import 'package:ui_data_table/users_model_two.dart';
import 'package:ui_data_table/utils.dart';
import 'package:ui_data_table/widgets/navigation_drawer.dart';
//https://www.youtube.com/watch?v=D6yndJ_lk14&ab_channel=JohannesMilke

class DataTable2 extends StatefulWidget {
  DataTable2({Key? key}) : super(key: key);

  @override
  _DataTable2State createState() => _DataTable2State();
}

class _DataTable2State extends State<DataTable2> {
  List<UsersModelTwo> users = UsersModelTwo.fetchAllUsers();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: const Text('Data Table Two'),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.horizontal, child: buildDataTable()),
    );
  }

  Widget buildDataTable() {
    final columns = ['LastName', 'FirstName', 'Age', 'City'];

    return DataTable(columns: getColumns(columns), rows: getRows(users));
  }

  List<DataColumn> getColumns(List<String> columns) {
    return columns.map((String column) {
      return DataColumn(
        label: Text(
          column,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      );
    }).toList();
  }

  //method to populate Datatable rows
  List<DataRow> getRows(List<UsersModelTwo> users) =>
      users.map((UsersModelTwo user) {
        final cells = [user.lastName, user.firstName, user.age, user.city];

        return DataRow(
          cells: Utils.modelBuilder(cells, (index, cell) {
            return DataCell(Text('$cell'),
                //showEditIcon: showEditIcon,
                onTap: () {
              print('Cell tapped!');
            });
          }),
        );
      }).toList();
}
