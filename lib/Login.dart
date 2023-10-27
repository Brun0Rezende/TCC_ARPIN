import 'package:ar_pin/Cadastro.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'HomePage.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double baseWidth = 1040;
          double fem = constraints.maxWidth / baseWidth;
          double ffem = fem * 0.97;

          return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0 * fem, 250 * fem, 0 * fem, 25 * fem),
                      width: double.infinity,
                      child: Center(
                        // led3ji7 (440:10)
                        child: SizedBox(
                          width: 250 * fem,
                          height: 250 * fem,
                          child: Image.asset(
                            'assets/images/led.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // arpin4kP (107:37)
                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 25 * fem),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: GoogleFonts.poppins(
                            fontSize: 96 * ffem,
                            fontWeight: FontWeight.w300,
                            height: 1.5 * ffem / fem,
                            fontStyle: FontStyle.italic,
                            color: Color(0xff000000),
                          ),
                          children: [
                            TextSpan(
                              text: 'AR-',
                            ),
                            TextSpan(
                              text: 'PIN\n',
                              style: GoogleFonts.poppins(
                                fontSize: 96 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.5 * ffem / fem,
                                fontStyle: FontStyle.italic,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 35 * fem),
                      width: 919 * fem,
                      height: 125 * fem,
                      decoration: BoxDecoration(
                        color: Color(0x7fd9d1e4),
                        borderRadius: BorderRadius.circular(50 * fem),
                      ),
                      child: TextField(
                        controller: _emailTextController,
                        maxLines: null,
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.fromLTRB(25 * fem, 0 * fem, 0 * fem, 0 * fem),
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Color(0xff000000)),
                        ),
                        style: GoogleFonts.poppins(
                          fontSize: 48 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 35 * fem),
                      width: 919 * fem,
                      height: 125 * fem,
                      decoration: BoxDecoration(
                        color: Color(0x7fd9d1e4),
                        borderRadius: BorderRadius.circular(50 * fem),
                      ),
                      child: TextField(
                        controller: _passwordTextController,
                        maxLines: null,
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.fromLTRB(25 * fem, 0 * fem, 0 * fem, 0 * fem),
                          hintText: 'Senha',
                          hintStyle: TextStyle(color: Color(0xff000000)),
                        ),
                        style: GoogleFonts.poppins(
                          fontSize: 48 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0 * fem, 45 * fem, 0 * fem, 25 * fem),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xffe51f43),
                          minimumSize: Size(919 * fem, 125 * fem),
                          elevation: 0,
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                        ),
                        onPressed: () {
                          FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailTextController.text, password: _passwordTextController.text).then((value){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage())).onError((error, stackTrace) {
                              print(error);
                            });
                          });
                        },
                        child: Text(
                          'Entrar',
                          style: GoogleFonts.poppins(
                            fontSize: 48 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 50 * fem),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          primary: Color(0xffe51f43),
                          side: BorderSide(color: Color(0xffe51f43), width: 1),
                          minimumSize: Size(919 * fem, 125 * fem),
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
                        },
                        child: Text(
                          'Esqueceu sua senha?',
                          style: GoogleFonts.poppins(
                            fontSize: 48 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: Color(0xffe51f43),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0 * fem, 200 * fem, 0 * fem, 0 * fem),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Cadastro()));
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Text(
                          'Novo por aqui? Crie uma conta!',
                          style: GoogleFonts.poppins(
                            fontSize: 45 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff2473ea),
                            decorationColor: Color(0xff2473ea),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

