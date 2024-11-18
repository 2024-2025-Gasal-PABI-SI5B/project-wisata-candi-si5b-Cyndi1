import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  //TODO : 1. Deklarasikan variabel
  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  String _errorText = '';

  bool _isSignIn = false;

  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO : 2. Pasang Appbar
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      //TODO : 3. Pasang Body
      body: Center(
        child: SingleChildScrollView (
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
                child: Column(
              //TODO : 4. Atur mainAxisAlignment dan crossAxisAlignment
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //TODO : 5. Buat Textformfield untuk Nama Pengguna
                TextFormField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: 'Nama Pengguna',
                      hintText: 'Masukkan Nama Pengguna',
                      border: OutlineInputBorder(),
                    )),
                //TODO : 6. Buat Textformfield untuk Kata Sandi
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Kata Sandi',
                    hintText: 'Masukkan Kata Sandi',
                    errorText: _errorText.isNotEmpty ? _errorText : null,
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                      icon: Icon(_obscurePassword
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                  ),
                  obscureText: _obscurePassword,
                ),
                //TODO : 7. Buat ElevatedButton untuk Sign In
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Sign In'),
                ),
                //TODO : 8. Buat TextButton untuk Sign Up
                const SizedBox(
                  height: 10,
                ),
                // TextButton(
                //   onPressed: (){},
                //   child: const Text('Belum punya akun ? Daftar di sini'),
                // ),
                RichText(
                  text: TextSpan(
                    text: 'Belum punya akun ? ',
                    style: TextStyle(fontSize: 16, color: Colors.deepPurple),
                    children: [
                      TextSpan(
                        text: 'Daftar di sini',
                        style: const TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
