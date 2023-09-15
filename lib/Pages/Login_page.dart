import "package:flutter/material.dart";

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset("assets/login.png"),
            const SizedBox(height: 15),
            const Center(
              child: Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 38),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Username", label: Text("Username")),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Enter Password", label: Text("Password")),
                  ),
                ],
              ),
            ),
            InkWell(
              child: ElevatedButton(
                style: TextButton.styleFrom(minimumSize: const Size(150, 45)),
                onPressed: () {},
                child: const Text("Login"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
