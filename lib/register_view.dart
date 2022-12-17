import 'package:easy_localization/easy_localization.dart';
import 'package:electricity_x_2024/generated/locale_keys.g.dart';
import 'package:electricity_x_2024/login_view.dart';
import 'package:flutter/material.dart';
//import 'package:samalert/views/settings_view.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            image: AssetImage("assets/images/logo.png"),
            fit: BoxFit.cover,
            opacity: 0.1,
          ),
        ),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Padding(
            padding: const EdgeInsets.all(35.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 50,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  ),
                  const Text(
                    'TU BĘDZIE NAZWA',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
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
                          prefixIcon: const Icon(Icons.person, color: Color.fromRGBO(0, 192, 75, .6)),
                          constraints: const BoxConstraints(maxWidth: 400)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
                    child: TextFormField(
                      cursorColor: const Color.fromRGBO(0, 192, 75, .2),
                      obscureText: !_passwordVisible,
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
                            color: Color.fromRGBO(0, 192, 75, .7),
                          ),
                        ),
                        hintText: 'Hasło',
                        prefixIcon: const Icon(Icons.lock, color: Color.fromRGBO(0, 192, 75, .6)),
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
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
                    child: TextFormField(
                      cursorColor: const Color.fromRGBO(0, 192, 75, .2),
                      obscureText: !_passwordVisible,
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
                        hintText: 'Potwierdź hasło',
                        prefixIcon: const Icon(Icons.lock, color: Color.fromRGBO(0, 192, 75, .6)),
                        constraints: const BoxConstraints(maxWidth: 400),
                        suffixIcon: IconButton(
                          onPressed: () => setState(() => _passwordVisible = !_passwordVisible),
                          color: const Color.fromRGBO(0, 192, 75, .6),
                          icon: const Icon(Icons.remove_red_eye_outlined),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Divider(
                      thickness: 2,
                      color: Color.fromRGBO(0, 192, 75, .9),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(0, 192, 75, .6),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        LocaleKeys.Register.tr(),
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
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginView()));
                      },
                      child: Text(
                        LocaleKeys.BackToLogin.tr(),
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
