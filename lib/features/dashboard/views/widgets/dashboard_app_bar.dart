import 'package:adaptive_dashboard/common/helpers/size_config.dart';
import 'package:flutter/material.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;

    return Visibility(
      visible: width < SizeConfig.mobileBreakPoint,
      child: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
      ),
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
