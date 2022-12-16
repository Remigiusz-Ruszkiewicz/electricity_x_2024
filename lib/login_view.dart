import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:electricity_x_2024/generated/locale_keys.g.dart';
import 'package:electricity_x_2024/register_view.dart';
//import 'package:electricity_x_2024/views/groups_view.dart';

//import 'package:electricity_x_2024/views/settings_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _passwordVisible = false;
  final loginTextEditingController = TextEditingController();
  final passwordTextEditingController = TextEditingController();
  //final APIBloc apiBloc = APIBloc();
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
                          color: Colors.white,
                          margin: const EdgeInsets.all(10),
                          child: const Image(image: AssetImage('assets/images/ratmon_icon.png')),
                        ),
                      ),
                      SizedBox(
                        height: 48,
                        width: 48,
                        child: Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          elevation: 5,
                          color: Colors.blue,
                          child: IconButton(
                            alignment: Alignment.center,
                            style: IconButton.styleFrom(backgroundColor: Colors.blueAccent),
                            onPressed: () => {
                              //Navigator.push(context, MaterialPageRoute(builder: (_) => const SettingsView())),
                            },
                            color: Colors.white,
                            icon: const Icon(Icons.settings),
                          ),
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
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: loginTextEditingController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter E-Mail';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Color.fromRGBO(54, 53, 53, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
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
                    //padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: passwordTextEditingController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Password';
                        }
                        return null;
                      },
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
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          if (await InternetConnectionChecker().hasConnection) {
                            if (true
                            //await apiBloc.login('serwis@ratmon.com', 'Password1!'
                              //loginTextEditingController.value.text,
                              //passwordTextEditingController.value.text,
                            //)
                              ) {
                              //Navigator.pushReplacement(
                               // context,
                                //MaterialPageRoute(
                                //  builder: (_) => const GroupsView(),
                               // ),
                             // );
                            }
                          } else {
                            showDialog(
                              context: context,
                              builder: (_) => AlertDialog(
                                title: const Text('Połączenie Internetowe'),
                                content: const Text('Proszę włączyć połączenie internetowe.'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text(
                                      'Ok',
                                      style: TextStyle(fontSize: 20, color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                        }
                      },
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
                  const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
                  const Divider(
                    height: 20,
                    thickness: 2,
                    indent: 45,
                    endIndent: 45,
                    color: Color.fromRGBO(95, 94, 94, 1),
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
                  Text(
                    LocaleKeys.RecoverPassword.tr(),
                    style: const TextStyle(
                      color: Color.fromRGBO(186, 186, 186, 1),
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
                  Text(
                    LocaleKeys.PrivacyPolicy.tr(),
                    style: const TextStyle(
                      color: Color.fromRGBO(186, 186, 186, 1),
                      fontSize: 16,
                      decoration: TextDecoration.underline,
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
