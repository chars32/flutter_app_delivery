import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // Posicionar elementos uno encima del otro
        children: [
          _backgroundCover(context),
          _boxForm(context),
          _imageUser(),
          _buttonBack()
        ],
      ),
    );
  }
}

Widget _backgroundCover(BuildContext context) {
  return Container(
    width: double.infinity,
    height: MediaQuery.of(context).size.height * 0.30,
    color: Colors.amber,
  );
}

Widget _boxForm(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(
      top: MediaQuery.of(context).size.height * 0.25,
      right: 50,
      left: 50,
    ),
    decoration: const BoxDecoration(
      color: Colors.white,
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black54,
          blurRadius: 15,
          offset: Offset(0, 0.75),
        )
      ],
    ),
    height: MediaQuery.of(context).size.height * 0.70,
    child: SingleChildScrollView(
      child: Column(
        children: [
          _textYourInfo(),
          _textFieldEmail(),
          _textFieldName(),
          _textFieldLastName(),
          _textFieldPhone(),
          _textFieldPassword(),
          _textFieldConfirmPassword(),
          _buttonRegister(),
        ],
      ),
    ),
  );
}

Widget _textYourInfo() {
  return Container(
    margin: const EdgeInsets.only(top: 40, bottom: 30),
    child: const Text(
      'INGRESA TU INFORMACION',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    ),
  );
}

Widget _textFieldEmail() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 40),
    child: const TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Correo electronico',
        prefixIcon: Icon(Icons.email),
      ),
    ),
  );
}

Widget _textFieldName() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 40),
    child: const TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Nombre',
        prefixIcon: Icon(Icons.person),
      ),
    ),
  );
}

Widget _textFieldLastName() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 40),
    child: const TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          hintText: 'Apellido', prefixIcon: Icon(Icons.person_outline)),
    ),
  );
}

Widget _textFieldPhone() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 40),
    child: const TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        hintText: 'Telefono',
        prefixIcon: Icon(Icons.phone),
      ),
    ),
  );
}

Widget _textFieldPassword() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 40),
    child: const TextField(
      obscureText: true,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Contraseña',
        prefixIcon: Icon(Icons.lock),
      ),
    ),
  );
}

Widget _textFieldConfirmPassword() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 40),
    child: const TextField(
      obscureText: true,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Confirmar Contraseña',
        prefixIcon: Icon(Icons.lock_outline),
      ),
    ),
  );
}

Widget _buttonRegister() {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15)),
      child: const Text(
        'REGISTRARSE',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    ),
  );
}

Widget _imageUser() {
  return SafeArea(
    child: Container(
      alignment: Alignment.topCenter,
      margin: const EdgeInsets.only(top: 15),
      child: GestureDetector(
        onTap: () {},
        child: const CircleAvatar(
          backgroundImage: AssetImage('assets/images/user_profile.png'),
          radius: 60,
          backgroundColor: Colors.white,
        ),
      ),
    ),
  );
}

Widget _buttonBack() {
  return SafeArea(
    child: Container(
      margin: const EdgeInsets.only(left: 10),
      child: IconButton(
        onPressed: () => Get.back(),
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          size: 30,
        ),
      ),
    ),
  );
}
