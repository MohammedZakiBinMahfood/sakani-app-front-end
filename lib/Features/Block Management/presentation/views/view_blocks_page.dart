import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_app_bar_view.dart';
import '../../../../core/widgets/custom_search_field.dart';
import 'add_block_page.dart';
import 'widgets/blocks_list_view.dart';

class ViewBlocksPage extends StatefulWidget {
  const ViewBlocksPage({super.key});

  static String id = 'ViewBlocksPage';

  @override
  State<ViewBlocksPage> createState() => _ViewBlocksPageState();
}

class _ViewBlocksPageState extends State<ViewBlocksPage> {
  String? search;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: CustomAppBarView(
          title: 'View Blocks',
          onActionPressed: () {
            Navigator.pushNamed(context, AddBlockPage.id);
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
                labelText: "Search Block",
                hintText: "Enter Block Name",
              ),
              const SizedBox(height: 10),
              const Expanded(child: BlocksListView()),
            ],
          ),
        ),
      ),
    );
  }
}
