import 'package:admin_dashboard/models/user_info_model.dart';
import 'package:admin_dashboard/utils/app_images.dart';
import 'package:admin_dashboard/views/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const List<UserInfoModel> items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: "Madrani Andi",
        subtitle: "Madraniadi20@gmail"),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: "Josua Nunito",
        subtitle: "Josh Nunito@gmail.com"),
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: "Madrani Andi",
        subtitle: "Madraniadi20@gmail"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) =>
                IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)))
            .toList(),
      ),
    );
    // return SizedBox(
    //   height: 70,
    //   child: ListView.builder(
    //       itemCount: items.length,
    //       scrollDirection: Axis.horizontal,
    //       itemBuilder: (context, index) {
    //         return IntrinsicWidth(
    //           child: UserInfoListTile(
    //             userInfoModel: items[index],
    //           ),
    //         );
    //       }),
    // );
  }
}
