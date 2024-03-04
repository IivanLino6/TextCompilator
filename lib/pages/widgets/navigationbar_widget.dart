import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:txt_compilator/controller/navigator_controller.dart';
import 'package:txt_compilator/pages/home_page.dart';



class NavigationBarPage extends StatefulWidget {


  NavigationBarPage({super.key});

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  final navigatorCtrl = Get.put(NavigatorController());

  @override
  Widget build(BuildContext context) {

    return Obx(() => NavigationView(
          appBar: const NavigationAppBar(
              leading: Center(
                  child: FlutterLogo(
            size: 25,
          ))),
          pane: NavigationPane(
            size: const NavigationPaneSize(openWidth: 200),
            header: const Text('Menu'),
            items: <NavigationPaneItem>[
              PaneItem(
                  icon: const Icon(Icons.info),
                  title: const Text('Data'),
                  body: HomePage()),
              PaneItem(
                  icon: const Icon(Icons.settings),
                  title: const Text('Settings'),
                  body: Container(
                    child: const Text('Page2'),
                  ))
            ],
            displayMode: PaneDisplayMode.auto,
            selected: navigatorCtrl.selectedIndex.value,
            onChanged: (value) {
              navigatorCtrl.changePage(value);
            },
          ),
        ));
  }
}
