import 'package:ar_pin/validators/formValidators.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'HomePage.dart';
import 'Login.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double baseWidth = 1040;
          double fem = constraints.maxWidth / baseWidth;
          double ffem = fem * 0.97;

          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0 * fem, 125 * fem, 0 * fem, 0 * fem),
                  width: 250 * fem,
                  height: 250 * fem,
                  child: Image.asset(
                    'assets/images/led.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0 * fem, 20 * fem, 0 * fem, 0 * fem),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: GoogleFonts.poppins(
                              fontSize: 40,
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic,
                              color: Color(0xff000000),
                            ),
                            children: [
                              const TextSpan(
                                text: 'AR-',
                              ),
                              TextSpan(
                                text: 'PIN',
                                style: GoogleFonts.poppins(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.italic,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 600 * fem,
                        margin: EdgeInsets.fromLTRB(0 * fem, 25 * fem, 0 * fem, 0 * fem),
                        child: Text(
                          '"Porque ensinar não é apenas transmitir conhecimento!"',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 50 * ffem,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0 * fem, 75 * fem, 0 * fem, 35 * fem),
                      child: Text(
                        'Crie sua Conta',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 72 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      // autogroupuewqg9V (4s1pqsvW2wfmvBsJLtUEwq)
                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 35 * fem),
                      width: 919 * fem,
                      height: 125 * fem,
                      decoration: BoxDecoration(
                        color: Color(0x7fd9d1e4),
                        borderRadius: BorderRadius.circular(50 * fem),
                      ),
                      child: TextField(
                        maxLines: null,
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.fromLTRB(25 * fem, 0 * fem, 0 * fem, 0 * fem),
                          hintText: 'Nome de Usuario',
                          hintStyle: TextStyle(color: Color(0xff000000)),
                        ),
                        style: GoogleFonts.poppins(
                          fontSize: 48 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(30),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupuewqg9V (4s1pqsvW2wfmvBsJLtUEwq)
                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 35 * fem),
                      width: 919 * fem,
                      height: 125 * fem,
                      decoration: BoxDecoration(
                        color: Color(0x7fd9d1e4),
                        borderRadius: BorderRadius.circular(50 * fem),
                      ),
                      child: TextField(
                        maxLines: null,
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.fromLTRB(25 * fem, 0 * fem, 0 * fem, 0 * fem),
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Color(0xff000000)),
                        ),
                        inputFormatters:[
                          LengthLimitingTextInputFormatter(50),
                          EmailTextInputFormatter()
                        ],
                        style: GoogleFonts.poppins(
                          fontSize: 48 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      // autogroupuewqg9V (4s1pqsvW2wfmvBsJLtUEwq)
                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 35 * fem),
                      width: 919 * fem,
                      height: 125 * fem,
                      decoration: BoxDecoration(
                        color: Color(0x7fd9d1e4),
                        borderRadius: BorderRadius.circular(50 * fem),
                      ),
                      child: TextField(
                        maxLines: null,
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.fromLTRB(25 * fem, 0 * fem, 0 * fem, 0 * fem),
                          hintText: 'Senha',
                          hintStyle: TextStyle(color: Color(0xff000000)),
                        ),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(30),
                          PasswordTextInputFormatter()
                        ],
                        style: GoogleFonts.poppins(
                          fontSize: 48 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      // autogroupuewqg9V (4s1pqsvW2wfmvBsJLtUEwq)
                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 35 * fem),
                      width: 919 * fem,
                      height: 125 * fem,
                      decoration: BoxDecoration(
                        color: Color(0x7fd9d1e4),
                        borderRadius: BorderRadius.circular(50 * fem),
                      ),
                      child: TextField(
                        maxLines: null,
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.fromLTRB(25 * fem, 0 * fem, 0 * fem, 0 * fem),
                          hintText: 'Confirmar Senha',
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
                      margin: EdgeInsets.fromLTRB(0 * fem, 45 * fem, 0 * fem, 50 * fem),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xffe51f43),
                          minimumSize: Size(919 * fem, 125 * fem),
                          elevation: 0,
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
                        },
                        child: Text(
                          'Cadastrar-se',
                          style: GoogleFonts.poppins(
                            fontSize: 48 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0 * fem, 100 * fem, 0 * fem, 0 * fem),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Text(
                        'Já esteve aqui antes? Acesse sua conta!',
                        style: GoogleFonts.poppins(
                          fontSize: 45 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff2473ea),
                          decorationColor: const Color(0xff2473ea),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
