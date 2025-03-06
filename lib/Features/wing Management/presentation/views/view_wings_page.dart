import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_app_bar_view.dart';
import '../../../../core/widgets/custom_search_field.dart';
import 'add_wing_page.dart';
import 'widgets/wings_list_view.dart';

class ViewWingsPage extends StatefulWidget {
  const ViewWingsPage({super.key});

  static String id = 'ViewWingsPage';

  @override
  State<ViewWingsPage> createState() => _ViewWingsPageState();
}

class _ViewWingsPageState extends State<ViewWingsPage> {
  String? search;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: CustomAppBarView(
          title: 'View Wings',
          onActionPressed: () {
            Navigator.pushNamed(context, AddWingPage.id);
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
                  //code search operation here
                },
                labelText: "Search Wing",
                hintText: "Enter Wing Name",
              ),
              const SizedBox(height: 10),
              const Expanded(child: WingsListView()),
            ],
          ),
        ),
      ),
    );
  }
}
