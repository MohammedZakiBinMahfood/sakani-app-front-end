import 'package:flutter/material.dart';
import 'Features/Block Management/presentation/views/add_block_page.dart';
import 'Features/Block Management/presentation/views/edit_block_page.dart';
import 'Features/Block Management/presentation/views/view_blocks_page.dart';
import 'Features/Department Management/presentation/views/add_department_page.dart';
import 'Features/Department Management/presentation/views/edit_department_page.dart';
import 'Features/Department Management/presentation/views/view_departments_page.dart';
import 'Features/Educational Institution Management/presentation/views/add_educational_institution_page.dart';
import 'Features/Educational Institution Management/presentation/views/edit_educational_institution_page.dart';
import 'Features/Educational Institution Management/presentation/views/view_educational_institutions_page.dart';
import 'Features/Registration/presentation/views/login_page.dart';
import 'Features/Registration/presentation/views/register_page.dart';
import 'Features/Room Management/presentation/views/add_room_page.dart';
import 'Features/Room Management/presentation/views/edit_room_page.dart';
import 'Features/Room Management/presentation/views/view_rooms_page.dart';
import 'Features/wing Management/presentation/views/add_wing_page.dart';
import 'Features/wing Management/presentation/views/edit_wing_page.dart';
import 'Features/wing Management/presentation/views/view_wings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          foregroundColor:
              Colors.black, // Color of text and icons in the AppBar
          elevation: 0,
        ),
        cardColor: Colors.white,
      ),
      routes: {
        //Registration
        LoginPage.id: (context) => const LoginPage(),
        RegisterPage.id: (context) => const RegisterPage(),
        //Block Management
        AddBlockPage.id: (context) => const AddBlockPage(),
        EditBlockPage.id: (context) => const EditBlockPage(),
        ViewBlocksPage.id: (context) => const ViewBlocksPage(),
        //Wing Management
        AddWingPage.id: (context) => const AddWingPage(),
        EditWingPage.id: (context) => const EditWingPage(),
        ViewWingsPage.id: (context) => const ViewWingsPage(),
        //Room Management
        AddRoomPage.id: (context) => const AddRoomPage(),
        EditRoomPage.id: (context) => const EditRoomPage(),
        ViewRoomsPage.id: (context) => const ViewRoomsPage(),
        //Department Management
        AddDepartmentPage.id: (context) => const AddDepartmentPage(),
        EditDepartmentPage.id: (context) => const EditDepartmentPage(),
        ViewDepartmentsPage.id: (context) => const ViewDepartmentsPage(),
        //Educational Institution Management
        AddEducationalInstitutionPage.id: (context) =>
            const AddEducationalInstitutionPage(),
        EditEducationalInstitutionPage.id: (context) =>
            const EditEducationalInstitutionPage(),
        ViewEducationalInstitutionsPage.id: (context) =>
            const ViewEducationalInstitutionsPage(),
      },
      initialRoute: LoginPage.id,
    );
  }
}
