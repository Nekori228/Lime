// import 'package:flutter/material.dart';
// import 'user.dart';  // Подключите файл с моделью пользователя
//
// class ProfileScreen extends StatelessWidget {
//   final User user;
//
//   ProfileScreen({required this.user});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Профиль пользователя'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             CircleAvatar(
//               radius: 50,
//               backgroundImage: NetworkImage(user.avatarUrl),
//             ),
//             SizedBox(height: 16),
//             Text(
//               user.name,
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 8),
//             Text(
//               user.email,
//               style: TextStyle(fontSize: 16, color: Colors.grey),
//             ),
//             SizedBox(height: 32),
//             ElevatedButton(
//               onPressed: () {
//                 // Действие при нажатии на кнопку "Редактировать профиль"
//                 print('Редактировать профиль');
//               },
//               child: Text('Редактировать профиль'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
