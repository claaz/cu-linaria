import 'main.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  bool isLoading = false;
  final usuario = TextEditingController(text: 'emilys');
  final senha = TextEditingController(text: 'emilyspass');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(115, 10, 14, 1),
        title: Center(
          child: Image(
            image: AssetImage("/home/labin-linux/AndroidStudioProjects/apppp_storage/lib/logo.png"),
            height: AppBar().preferredSize.height * 0.8,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(115, 10, 14, 1),
              ),
            ),
            SizedBox(height: 20),
            Form(
              key: formKey,
              child: Column(
                children: [
                  _buildTextField(usuario, "Usuário", "Insira seu usuário", Icons.email, false),
                  SizedBox(height: 16.0),
                  _buildTextField(senha, "Senha", "Insira a senha", Icons.lock, true),
                  SizedBox(height: 20.0),
                  _buildLoginButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextFormField _buildTextField(TextEditingController controller, String label, String hint, IconData icon, bool obscure) {
    return TextFormField(
      controller: controller,
      obscureText: obscure,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(115, 10, 14, 1)),
        ),
      ),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return "$label não pode ser vazio.";
        }
        if (label == "Senha" && (value.length < 6 || value.length > 10)) {
          return "A senha deve ter de 6 a 10 caracteres.";
        }
        return null;
      },
    );
  }

  ElevatedButton _buildLoginButton() {
    return ElevatedButton(
      onPressed: () async {
        if (formKey.currentState!.validate()) {
          setState(() {
            isLoading = true;
          });

          final url = Uri.parse('https://dummyjson.com/auth/login');
          final response = await http.post(
            url,
            body: {
              'username': usuario.text,
              'password': senha.text,
            },
          );

          if (response.statusCode == 200) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MeuApp()),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Usuário ou senha incorretos'),
                backgroundColor: Colors.redAccent,
              ),
            );
          }
        }
      },
      child: isLoading
          ? SizedBox(height: 20, width: 20, child: CircularProgressIndicator(color: Colors.white))
          : Text('Entrar', style: TextStyle(fontSize: 16)),
      style: ElevatedButton.styleFrom(
        primary: Color.fromRGBO(115, 10, 14, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      ),
    );
  }
}