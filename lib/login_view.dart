import 'package:electricity_x_2024/register_view.dart';
import 'package:flutter/material.dart';

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
                            color: Colors.white,
                            icon: const Icon(Icons.settings),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
                  const Text(
                    'Zaloguj się \n do aplikacji RATMON',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 30, bottom: 15),
                        child: Text(
                          'E-Mail',
                          style: TextStyle(
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
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
                        child: Text(
                          'Hasło',
                          style: TextStyle(
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
                      onPressed: () async {},
                      child: const Text(
                        'Zaloguj się do aplikacji',
                        style: TextStyle(color: Colors.white, fontSize: 16),
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
                      child: const Text(
                        'Zarejestruj konto',
                        style: TextStyle(color: Colors.white, fontSize: 16),
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
                  const Text(
                    'Przypomnij Hasło',
                    style: TextStyle(
                      color: Color.fromRGBO(186, 186, 186, 1),
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
                  const Text(
                    'Polityka prywatności',
                    style: TextStyle(
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
