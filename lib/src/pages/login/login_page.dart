import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 50,
        child: _textDontHaveAccount(),
      ),
      body: Stack(
        // Posicionar elementos uno encima del otro
        children: [
          _backgroundCover(context),
          Column(
            // Posicionar elementos uno debajo del otro
            children: [_imageCover(), _textAppName()],
          )
        ],
      ),
    );
  }
}

// _PRIVATE
Widget _imageCover() {
  return SafeArea(
    child: Container(
      margin: const EdgeInsets.only(top: 20.0, bottom: 15.0),
      alignment: Alignment.topCenter,
      child: Image.asset(
        'assets/images/delivery.png',
        height: 130,
        width: 130,
      ),
    ),
  );
}

Widget _textAppName() {
  return const Text(
    'DELIVERY MYSQL',
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  );
}

Widget _backgroundCover(BuildContext context) {
  return Container(
    width: double.infinity,
    height: MediaQuery.of(context).size.height * 0.4,
    color: Colors.amber,
  );
}

Widget _textDontHaveAccount() {
  return Row(
    // Ubicar elementos uno al lado de otro
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      Text(
        '¿No tienes cuenta?',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
      SizedBox(width: 7),
      Text(
        'Registrate Aqui',
        style: TextStyle(
          color: Colors.amber,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    ],
  );
}
