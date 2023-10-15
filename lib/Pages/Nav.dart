// // ignore_for_file: file_names

// import 'package:eva_icons_flutter/eva_icons_flutter.dart';
// import 'package:masterbagasi/Pages/HomePage.dart';
// import 'package:masterbagasi/Pages/SuguhanPage.dart';
// //import 'package:ngegym/Pages/ExercisesPages/HomeExercisesPage.dart';

// import 'package:flutter/material.dart';

// // ignore: must_be_immutable
// class Nav extends StatefulWidget {
//   Nav({Key? key, required this.selectedItemIndex}) : super(key: key);
//   int selectedItemIndex;
//   @override
//   State<Nav> createState() => _Nav();
// }

// class _Nav extends State<Nav> {
//   List bottomNavigationBarWidget = [
//     const HomePage(),
//     const SuguhanPage(),
//     //const HomeExercisesPage(),
//     // const HomeExercisesHavePlanPage(),
//     // const MentorPage(),
//     // const AccountPage(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: Container(
//         color: Colors.white,
//         padding: const EdgeInsets.symmetric(vertical: 5),
//         child: BottomNavigationBar(
//           elevation: 0,
//           backgroundColor: const Color(0xff9B9B9B),
//           landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
//           type: BottomNavigationBarType.fixed,
//           selectedItemColor: const Color(0xffFF4200),
//           unselectedItemColor: const Color(0xff6E6E6E),
//           selectedLabelStyle: const TextStyle(
//             color: Color(0xffFF4200),
//           ),
//           unselectedLabelStyle: const TextStyle(
//             color: Color(0xff6E6E6E),
//           ),
//           items: [
//             BottomNavigationBarItem(
//               icon: Icon(
//                 EvaIcons.homeOutline,
//                 size: 20,
//                 color: 0 == widget.selectedItemIndex
//                     ? const Color(0xffFF4200)
//                     : const Color(0xff6E6E6E),
//               ),
//               label: 'Home',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(
//                 EvaIcons.imageOutline,
//                 size: 20,
//                 color: 0 == widget.selectedItemIndex
//                     ? const Color(0xffFF4200)
//                     : const Color(0xff6E6E6E),
//               ),
//               label: 'Suguhan',
//             ),
//             // BottomNavigationBarItem(
//             //     icon: SvgPicture.asset(
//             //         "assets/images/svg/iconNavbar_olahraga.svg",
//             //         color: 2 == widget.selectedItemIndex
//             //             ? primary500
//             //             : neutral400),
//             //     label: 'Olahraga'),
//             // BottomNavigationBarItem(
//             //     icon: SvgPicture.asset(
//             //         "assets/images/svg/iconNavbar_mentor.svg",
//             //         color: 3 == widget.selectedItemIndex
//             //             ? primary500
//             //             : neutral400),
//             //     label: 'Mentor'),
//             // BottomNavigationBarItem(
//             //     icon: SvgPicture.asset("assets/images/svg/iconNavbar_akun.svg",
//             //         color: 4 == widget.selectedItemIndex
//             //             ? primary500
//             //             : neutral400),
//             //     label: 'Akun'),
//           ],
//           currentIndex: widget.selectedItemIndex,
//           onTap: (int index) {
//             setState(() {
//               widget.selectedItemIndex = index;
//             });
//           },
//         ),
//       ),
//       backgroundColor: Colors.red,
//       body: bottomNavigationBarWidget.elementAt(widget.selectedItemIndex),
//     );
//   }
// }
