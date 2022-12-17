import 'package:easy_localization/easy_localization.dart';
import 'package:electricity_x_2024/generated/locale_keys.g.dart';
import 'package:electricity_x_2024/main_menu_view.dart';
import 'package:electricity_x_2024/register_view.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _passwordVisible = false;
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: backgroundSize?.width,
        height: backgroundSize?.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            image: AssetImage("assets/images/logo_opacity.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(35.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      'EnergyWise',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      controller: loginController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter E-Mail';
                        }
                        return null;
                      },
                      cursorColor: const Color.fromRGBO(0, 192, 75, .2),
                      decoration: InputDecoration(
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Color.fromRGBO(0, 192, 75, .9),
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.black12.withOpacity(0.1),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Color.fromRGBO(0, 192, 75, .6),
                            ),
                          ),
                          hintText: 'E-Mail',
                          prefixIcon: const Icon(Icons.person,
                              color: Color.fromRGBO(0, 192, 75, .6)),
                          constraints: const BoxConstraints(maxWidth: 400)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
                    child: TextFormField(
                      cursorColor: const Color.fromRGBO(0, 192, 75, .2),
                      obscureText: !_passwordVisible,
                      controller: passwordController,
                      enableSuggestions: false,
                      autocorrect: false,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 3,
                            color: Color.fromRGBO(0, 192, 75, .9),
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.black12.withOpacity(0.1),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Color.fromRGBO(0, 192, 75, .6),
                          ),
                        ),
                        hintText: 'Hasło',
                        prefixIcon: const Icon(Icons.lock,
                            color: Color.fromRGBO(0, 192, 75, .6)),
                        constraints: const BoxConstraints(maxWidth: 400),
                        suffixIcon: IconButton(
                          onPressed: () => {
                            setState(
                              () {
                                _passwordVisible = !_passwordVisible;
                              },
                            ),
                          },
                          color: const Color.fromRGBO(0, 192, 75, .6),
                          icon: const Icon(Icons.remove_red_eye_outlined),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Divider(
                      thickness: 2,
                      color: Color.fromRGBO(0, 192, 75, .9),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(0, 192, 75, .6),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: MaterialButton(
                      onPressed: () => {
                        if (_formKey.currentState!.validate() &&
                            loginController.text.toLowerCase() == 'jarosz' &&
                            passwordController.text.trim() == '')
                          {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const MainMenuView(),
                              ),
                            ),
                          }
                      },
                      child: Text(
                        LocaleKeys.Login.tr(),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2,
                            color: const Color.fromRGBO(117, 117, 117, 1)),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const RegisterView()));
                        },
                        child: Text(
                          LocaleKeys.Register.tr(),
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                        ),
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
