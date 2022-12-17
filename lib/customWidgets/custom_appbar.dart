import 'package:electricity_x_2024/login_view.dart';
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
              Color.fromRGBO(0, 192, 75, .8),
              Color.fromRGBO(0, 192, 75, .7),
              Color.fromRGBO(0, 180, 75, .5),
              Color.fromRGBO(0, 145, 75, .3),
              Color.fromRGBO(0, 120, 75, .2),
            ],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.0, 1.0),
            stops: [0.0, .20, .50, .80, 1],
            tileMode: TileMode.clamp,
          ),
        ),
      ),
      toolbarHeight: 70,
      title: Text(
        title,
        style: const TextStyle(fontSize: 20, color: Colors.white),
      ),
      titleSpacing: 0,
      leadingWidth: 70,
      leading: const Padding(
        padding: EdgeInsets.all(8.0),
        child: SizedBox(
          height: 48,
          width: 48,
          child: Image(image: AssetImage('assets/images/logo.png')),
        ),
      ),
      actions: settingVisible
          ? [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: IconButton(
                  alignment: Alignment.center,
                  onPressed: () => {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const LoginView(),
                      ),
                    )
                  },
                  color: Colors.white,
                  icon: const Icon(Icons.logout),
                ),
              ),
            ]
          : null,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(70);
}
