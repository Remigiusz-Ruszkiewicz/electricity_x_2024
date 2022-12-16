import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
    required this.settingVisible,
  }) : super(key: key);
  final String title;
  final bool settingVisible;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color.fromRGBO(63, 62, 62, 1),
                Color.fromRGBO(40, 40, 40, 1),
              ],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(0.0, 1.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
      ),
      toolbarHeight: 70,
      title: Text(
        title,
        style: const TextStyle(fontSize: 16, color: Color.fromRGBO(186, 186, 186, 1)),
      ),
      titleSpacing: 0,
      leadingWidth: 70,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 48,
          width: 48,
          child: Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            elevation: 5,
            color: Colors.white,
            child: const Image(image: AssetImage('assets/images/app_icon.png')),
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 48,
            width: 55,
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
              elevation: 5,
              color: Colors.blue,
              child: IconButton(
                alignment: Alignment.center,
                color: Colors.blueAccent,
                onPressed: () => {},
                icon: const Icon(Icons.settings),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(70);
}
