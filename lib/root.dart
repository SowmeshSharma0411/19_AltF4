import 'package:altf4/BottomBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'MainFncs/compareit.dart';
import 'MainFncs/custconnect.dart';
import 'MainFncs/drivethru.dart';
import 'MainFncs/profilepage.dart';

class Root extends StatelessWidget {
  final _tab1navigatorKey = GlobalKey<NavigatorState>();
  final _tab2navigatorKey = GlobalKey<NavigatorState>();
  final _tab3navigatorKey = GlobalKey<NavigatorState>();
  final _tab4navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return PersistentBottomBarScaffold(
      items: [
        PersistentTabItem(
          tab: CompareIt(),
          icon: Icons.home,
          title: 'Home',
          color: Color(0xffB58BFF),
          navigatorkey: _tab1navigatorKey,
        ),
        PersistentTabItem(
          tab: DriveThru(),
          icon: Icons.search,
          title: 'Search',
          color: Color(0xffB58BFF),
          navigatorkey: _tab2navigatorKey,
        ),
        PersistentTabItem(
          tab: CustomerConnect(),
          icon: Icons.chat_rounded,
          title: 'Chat',
          color: Color(0xffB58BFF),
          navigatorkey: _tab3navigatorKey,
        ),
        PersistentTabItem(
          tab: ProfilePage(),
          icon: Icons.person,
          title: 'Profile',
          color: Color(0xffB58BFF),
          navigatorkey: _tab4navigatorKey,
        ),
      ],
    );
  }
}
