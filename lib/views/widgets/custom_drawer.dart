import 'package:admin_dashboard/models/drawer_item_model.dart';
import 'package:admin_dashboard/models/user_info_model.dart';
import 'package:admin_dashboard/utils/app_images.dart';
import 'package:admin_dashboard/views/widgets/active_and_inactive_drawer_item.dart';
import 'package:admin_dashboard/views/widgets/drawer_item_list_view.dart';
import 'package:admin_dashboard/views/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
                userInfoModel: UserInfoModel(
                    title: "Lekan Okeowo",
                    subtitle: "demo@gmail.com",
                    image: Assets.imagesAvatar3)),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20, //minimum height
                )),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        image: Assets.imagesSettings, title: "Setting system")),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        image: Assets.imagesLogout, title: "Logout account")),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
