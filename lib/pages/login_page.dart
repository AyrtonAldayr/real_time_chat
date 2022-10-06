import 'package:flutter/material.dart';
import 'package:real_time_chat/widgets/button_blue.dart';
import 'package:real_time_chat/widgets/custom_input.dart';
import 'package:real_time_chat/widgets/labels.dart';
import 'package:real_time_chat/widgets/logo.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Logo(titulo: "Message"),
                _Form(),
                Labels(
                  route: 'register',
                  messageConsult: "¿No tienes cuenta?",
                  messageLink: "Crea una ahora!",
                ),
                Text(
                  'Terminos y condiciones de uso',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  const _Form({Key? key}) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInput(
            icon: Icons.mail_outline,
            placeholder: "Ingrese el Email",
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          CustomInput(
            icon: Icons.password,
            placeholder: "Password",
            keyboardType: TextInputType.text,
            textController: passCtrl,
            isPassword: true,
          ),
          ButtonBlue(text: "text", onPressed: () {})
        ],
      ),
    );
  }
}
