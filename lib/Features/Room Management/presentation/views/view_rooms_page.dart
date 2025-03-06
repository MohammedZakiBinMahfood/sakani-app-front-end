import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_app_bar_view.dart';
import '../../../../core/widgets/custom_search_field.dart';
import 'add_room_page.dart';
import 'widgets/rooms_list_view.dart';

class ViewRoomsPage extends StatefulWidget {
  const ViewRoomsPage({super.key});

  static String id = 'ViewRoomsPage';

  @override
  State<ViewRoomsPage> createState() => _ViewRoomsPageState();
}

class _ViewRoomsPageState extends State<ViewRoomsPage> {
  String? search;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: CustomAppBarView(
          title: 'View Departments',
          onActionPressed: () {
            Navigator.pushNamed(context, AddRoomPage.id);
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 10),
              CustomSearchField(
                onChanged: (value) {
                  search = value;
                  //code search operation her
                },
                labelText: "Search Room",
                hintText: "Enter Room Name",
              ),
              const SizedBox(height: 10),
              const Expanded(child: RoomsListView()),
            ],
          ),
        ),
      ),
    );
  }
}
