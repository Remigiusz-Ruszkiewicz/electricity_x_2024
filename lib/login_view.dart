import 'package:easy_localization/easy_localization.dart';
import 'package:electricity_x_2024/generated/locale_keys.g.dart';
import 'package:electricity_x_2024/main_menu_view.dart';
import 'package:electricity_x_2024/register_view.dart';
import 'package:flutter/material.dart';
//import 'package:electricity_x_2024/views/groups_view.dart';

//import 'package:electricity_x_2024/views/settings_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _passwordVisible = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(35.0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 120,
                        width: 120,
                        child: Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          elevation: 5,
                          margin: const EdgeInsets.all(10),
                          child: const Image(image: AssetImage('assets/images/logo.png')),
                        ),
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
                  Text(
                    LocaleKeys.LoginTitle.tr(),
                    style: const TextStyle(color: Colors.white, fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 30, bottom: 15),
                        child: Text(
                          LocaleKeys.Email.tr(),
                          style: const TextStyle(
                            color: Color.fromRGBO(186, 186, 186, 1),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 2,
                              color: Color.fromRGBO(54, 53, 53, 1),
                            ),
                          ),
                          constraints: BoxConstraints(maxWidth: 400)),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
                        child: Text(
                          LocaleKeys.Password.tr(),
                          style: const TextStyle(
                            color: Color.fromRGBO(186, 186, 186, 1),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 15),
                    child: TextFormField(
                      obscureText: !_passwordVisible,
                      enableSuggestions: false,
                      autocorrect: false,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Color.fromRGBO(54, 53, 53, 1),
                          ),
                        ),
                        constraints: const BoxConstraints(maxWidth: 400),
                        suffixIcon: IconButton(
                          onPressed: () => {
                            setState(
                              () {
                                _passwordVisible = !_passwordVisible;
                              },
                            ),
                          },
                          color: Colors.blue,
                          icon: const Icon(Icons.remove_red_eye_outlined),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: MaterialButton(
                      onPressed: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const MainMenuView(),
                        ),
                      ),
                      child: Text(
                        LocaleKeys.Login.tr(),
                        style: const TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
                  Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: const Color.fromRGBO(117, 117, 117, 1)),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const RegisterView()));
                      },
                      child: Text(
                        LocaleKeys.Register.tr(),
                        style: const TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
