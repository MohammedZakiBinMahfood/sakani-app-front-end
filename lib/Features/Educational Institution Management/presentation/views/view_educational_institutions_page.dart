import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_app_bar_view.dart';
import '../../../../core/widgets/custom_search_field.dart';
import 'add_educational_institution_page.dart';
import 'widgets/educational_institutions_list_view.dart';

class ViewEducationalInstitutionsPage extends StatefulWidget {
  const ViewEducationalInstitutionsPage({super.key});

  static String id = 'ViewEducationalInstitutionsPage';

  @override
  State<ViewEducationalInstitutionsPage> createState() =>
      _ViewEducationalInstitutionsPageState();
}

class _ViewEducationalInstitutionsPageState
    extends State<ViewEducationalInstitutionsPage> {
  String? search;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: CustomAppBarView(
          title: 'View Educational Institutions',
          onActionPressed: () {
            Navigator.pushNamed(context, AddEducationalInstitutionPage.id);
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
                labelText: "Search Educational Institution",
                hintText: "Enter Educational Institution Name",
              ),
              const SizedBox(height: 10),
              const Expanded(child: EducationalInstitutionListView()),
            ],
          ),
        ),
      ),
    );
  }
}
