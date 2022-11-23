import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:github_user_flutter/infrastructure/navigation/routes.dart';

import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'HomeScreen is working',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(onPressed: (){
              Get.toNamed(Routes.NAVIGATION);
              // openBottomSheet();
            }, child: Text("Cus")),
          ],
        ),
      ),
    );
  }

  void openBottomSheet() {
    Get.bottomSheet(
        const NewWidget()
    );
    // Get.bottomSheet(BottomSheetView(), isDismissible: false);
  }

}

class NewWidget extends StatelessWidget {
  const NewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: <Widget>[
          ListTile(
              leading: Icon(Icons.music_note),
              title: Text('Music'),
              onTap: () {}
          ),
          ListTile(
            leading: Icon(Icons.videocam),
            title: Text('Video'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

// class BottomSheetView extends GetView<AController> {
//   const BottomSheetView({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Obx(() => SizedBox(
//       height: 145,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, index) {
//           final image = controller.rxData[index];
//           return Padding(
//             padding: const EdgeInsets.only(right: kHorizontalSpaceSmall),
//             child: PickImageView(
//                 title: "",
//                 canRemoveFileSelected: !image.isNewTakePicture,
//                 fileSelected: image.filePath,
//                 onRemoveTapped: () {},
//                 onPressed: () {
//                   Get.toNamed(Routes.TAKE_CAMERA);
//                 },
//                 type: EPickImageViewType.gallary),
//           );
//         },
//         itemCount: controller.rxData.length,
//       ),
//     ));
//   }
// }
