import 'package:flutter/material.dart';
import 'package:flutter_side_menu/flutter_side_menu.dart';

extension on Widget {
  Widget showOrNull(bool isShow) => isShow
      ? this
      : Divider(
          color: Colors.transparent,
        );
}

class NavItemModel {
  const NavItemModel({
    required this.name,
    required this.icon,
  });

  final String name;
  final IconData icon;
}

class SideMenuWidget extends StatelessWidget {
  final String appName = "App Name";

  final _navItems = const [
    NavItemModel(name: 'Dashboard', icon: Icons.dashboard),
    NavItemModel(name: 'Profile', icon: Icons.account_box),
    NavItemModel(name: 'Wallet', icon: Icons.wallet),
    NavItemModel(name: 'Message', icon: Icons.mail_outline),
    NavItemModel(name: 'Guarantees', icon: Icons.security),
  ];
  final _accountItems = const [
    NavItemModel(name: 'Settings', icon: Icons.settings),
    NavItemModel(name: 'Sign Out', icon: Icons.login_outlined),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      child: SideMenu(
        mode: SideMenuMode.open,
        backgroundColor: Color(0xFF001E3D),
        hasResizer: false,
        hasResizerToggle: false,
        builder: (data) {
          return SideMenuData(
            header: Column(
              children: [
                Wrap(
                  alignment: WrapAlignment.spaceAround,
                  spacing: 25,
                  children: [
                    const Icon(Icons.paypal, size: 50),
                    Text(appName,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        )).showOrNull(data.isOpen),
                  ],
                ),
                SizedBox(height: 50)
              ],
            ),
            items: [
              ..._navItems
                  .map(
                    (e) => SideMenuItemDataTile(
                      title: e.name,
                      isSelected: e.name == _navItems[0].name,
                      onTap: () {},
                      borderRadius: BorderRadius.circular(12),
                      highlightSelectedColor: Color(0xff0e6d7c),
                      titleStyle: TextStyle(color: const Color(0xff23e3d9)),
                      selectedTitleStyle: TextStyle(
                        color: const Color(0xff23e3d9),
                        // fontWeight: FontWeight.bold,
                      ),
                      icon: Icon(
                        e.icon,
                        color: const Color(0xff23e3d9),
                      ),
                    ),
                  )
                  .toList(),
              const SideMenuItemDataDivider(
                divider: Divider(color: Colors.transparent, height: 50),
              ),
              const SideMenuItemDataDivider(
                  divider: Divider(
                color: const Color(0xff23e3d9),
              )),
              const SideMenuItemDataDivider(
                divider: Divider(color: Colors.transparent, height: 30),
              ),
              ..._accountItems
                  .map(
                    (e) => SideMenuItemDataTile(
                      isSelected: false,
                      onTap: () {},
                      title: e.name,
                      borderRadius: BorderRadius.circular(12),
                      highlightSelectedColor: Color(0xff0e6d7c),
                      titleStyle: TextStyle(color: const Color(0xff23e3d9)),
                      selectedTitleStyle: TextStyle(
                        color: const Color(0xff23e3d9),
                      ),
                      icon: Icon(
                        e.icon,
                        color: const Color(0xff23e3d9),
                      ),
                    ),
                  )
                  .toList(),
            ],
            footer: ListTile(
              textColor: Colors.white,
              title: const Text('Gianluca Campos').showOrNull(data.isOpen),
              // subtitle: const Text('Software Developer').showOrNull(data.isOpen),
              leading: const Icon(Icons.person_pin),
            ),
          );
        },
      ),
    );
  }
}
