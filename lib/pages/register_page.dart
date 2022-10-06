import 'package:flutter/material.dart';
import 'package:real_time_chat/widgets/button_blue.dart';
import 'package:real_time_chat/widgets/custom_input.dart';
import 'package:real_time_chat/widgets/labels.dart';
import 'package:real_time_chat/widgets/logo.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Logo(titulo: 'Register'),
                _Form(),
                Labels(
                  route: 'login',
                  messageConsult: '¿Ya tienes cuenta?',
                  messageLink: 'Inicia Sesion',
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
  final nameCtrl = TextEditingController();
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
            icon: Icons.person,
            placeholder: "Ingrese tu Nombre",
            keyboardType: TextInputType.text,
            textController: nameCtrl,
          ),
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
          ButtonBlue(
              text: "Registrar",
              onPressed: () {
                print("emailCtrl:" + emailCtrl.text);
                print("passCtrl:" + passCtrl.text);
              })
        ],
      ),
    );
  }
}
