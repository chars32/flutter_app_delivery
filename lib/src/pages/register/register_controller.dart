import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  void register() {
    String email = emailController.text.trim();
    String name = nameController.text;
    String lastname = lastnameController.text;
    String phone = phoneController.text;
    String password = passwordController.text.trim();
    String confirmPassword = confirmPasswordController.text.trim();

    if (isValidForm(email, name, lastname, phone, password, confirmPassword)) {
      Get.snackbar(
          "Formulario valido", "Estas listo para enviar la petición Http");
    }
  }

  bool isValidForm(String email, String name, String lastname, String phone,
      String password, String confirmPassword) {
    if (email.isEmpty) {
      Get.snackbar("Formulario no valido", "Debes ingresar el email");
      return false;
    }

    if (!GetUtils.isEmail(email)) {
      Get.snackbar("Formulario no valido", "El email es no valido");
      return false;
    }

    if (name.isEmpty) {
      Get.snackbar("Formulario no valido", "Debes ingresar el nombre");
      return false;
    }

    if (lastname.isEmpty) {
      Get.snackbar("Formulario no valido", "Debes ingresar el apellido");
      return false;
    }

    if (phone.isEmpty) {
      Get.snackbar("Formulario no valido", "Debes ingresar el telefono");
      return false;
    }

    if (password.isEmpty) {
      Get.snackbar("Formulario no valido", "Debes ingresar el password");
      return false;
    }

    if (confirmPassword.isEmpty) {
      Get.snackbar("Formulario no valido", "Debes confirmar el password");
      return false;
    }
    if (password != confirmPassword) {
      Get.snackbar("Formulario no valido", "Los password deben coincidir");
      return false;
    }

    return true;
  }
}
