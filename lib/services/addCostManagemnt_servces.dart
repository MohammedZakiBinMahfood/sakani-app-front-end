// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class AddCostManagementService {
//   final String baseUrl;

//   AddCostManagementService({required this.baseUrl});

//   Future<bool> addCostManagement(Map<String, dynamic> costData) async {
//     final url = Uri.parse('$baseUrl/cost-management');
//     try {
//       final response = await http.post(
//         url,
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode(costData),
//       );

//       if (response.statusCode == 200 || response.statusCode == 201) {
//         return true;
//       } else {
//         print('Failed to add cost management: ${response.body}');
//         return false;
//       }
//     } catch (e) {
//       print('Error adding cost management: $e');
//       return false;
//     }
//   }
// }