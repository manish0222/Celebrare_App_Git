// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_cropper/image_cropper.dart';
// import 'package:image_picker/image_picker.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Image Cropping Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomeScreen(),
//     );
//   }
// }

// enum ShapeType {
//   circle,
//   heart,
// }

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   File? imageFile;
//   ShapeType selectedShape = ShapeType.heart;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Image Cropping & Shapes'),
//       ),
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             children: [
//               ElevatedButton(
//                 onPressed: () async {
//                   await _imgFromGallery();
//                 },
//                 child: Text('Choose Image'),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Radio(
//                     value: ShapeType.circle,
//                     groupValue: selectedShape,
//                     onChanged: (value) {
//                       setState(() {
//                         selectedShape = value as ShapeType;
//                       });
//                     },
//                   ),
//                   Text('Circle'),
//                   Radio(
//                     value: ShapeType.heart,
//                     groupValue: selectedShape,
//                     onChanged: (value) {
//                       setState(() {
//                         selectedShape = value as ShapeType;
//                       });
//                     },
//                   ),
//                   Text('Heart'),
//                 ],
//               ),
//               SizedBox(height: 20),
//               _buildShapeWidget(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Future<void> _imgFromGallery() async {
//     final pickedFile = await ImagePicker().getImage(source: ImageSource.gallery);
//     if (pickedFile != null) {
//       final croppedFile = await ImageCropper().cropImage(
//         sourcePath: pickedFile.path,
//         aspectRatioPresets: [CropAspectRatioPreset.square],
//         androidUiSettings: AndroidUiSettings(
//           toolbarTitle: 'Crop Image',
//           toolbarColor: Colors.blue,
//           toolbarWidgetColor: Colors.white,
//           initAspectRatio: CropAspectRatioPreset.square,
//           lockAspectRatio: true,
//         ),
//       );

//       if (croppedFile != null) {
//         setState(() {
//           imageFile = croppedFile;
//         });
//       }
//     }
//   }

//   Widget _buildShapeWidget() {
//     switch (selectedShape) {
//       case ShapeType.circle:
//         return Container(
//           width: 150,
//           height: 150,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             image: imageFile != null
//                 ? DecorationImage(
//                     image: FileImage(imageFile!),
//                     fit: BoxFit.cover,
//                   )
//                 : null,
//           ),
//         );
//       case ShapeType.heart:
//         // You can replace this with a custom heart-shaped widget
//         return Icon(
//           Icons.favorite,
//           size: 150,
//           color: Colors.red,
//         );
//     }
//   }
// }
