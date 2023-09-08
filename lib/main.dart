import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'HomePage.dart';
import 'Login.dart';

void main() {
  runApp(
    MaterialApp(
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: Cadastro(),
      ),
    ),
  );
}

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
                        width: 550 * fem,
                        margin: EdgeInsets.fromLTRB(0 * fem, 25 * fem, 0 * fem, 0 * fem),
                        child: Text(
                          'Porque ensinar não é apenas transmitir conhecimento!',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 45 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
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
                      margin: EdgeInsets.fromLTRB(0 * fem, 75 * fem, 0 * fem, 34 * fem),
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
                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
                      width: 893 * fem,
                      decoration: BoxDecoration(
                        color: Color(0x7fd9d1e4),
                        borderRadius: BorderRadius.circular(50 * fem),
                      ),
                      child: TextField(
                        maxLines: null,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.fromLTRB(25 * fem, 0 * fem, 0 * fem, 0 * fem),
                          hintText: 'Nome de Usuario',
                          hintStyle: TextStyle(color: Color(0xff000000)),
                        ),
                        style: GoogleFonts.poppins(
                          fontSize: 40 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      // autogroupuewqg9V (4s1pqsvW2wfmvBsJLtUEwq)
                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
                      width: 893 * fem,
                      decoration: BoxDecoration(
                        color: Color(0x7fd9d1e4),
                        borderRadius: BorderRadius.circular(50 * fem),
                      ),
                      child: TextField(
                        maxLines: null,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.fromLTRB(25 * fem, 0 * fem, 0 * fem, 0 * fem),
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Color(0xff000000)),
                        ),
                        style: GoogleFonts.poppins(
                          fontSize: 40 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      // autogroupuewqg9V (4s1pqsvW2wfmvBsJLtUEwq)
                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
                      width: 893 * fem,
                      decoration: BoxDecoration(
                        color: Color(0x7fd9d1e4),
                        borderRadius: BorderRadius.circular(50 * fem),
                      ),
                      child: TextField(
                        maxLines: null,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.fromLTRB(25 * fem, 0 * fem, 0 * fem, 0 * fem),
                          hintText: 'Senha',
                          hintStyle: TextStyle(color: Color(0xff000000)),
                        ),
                        style: GoogleFonts.poppins(
                          fontSize: 40 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      // autogroupuewqg9V (4s1pqsvW2wfmvBsJLtUEwq)
                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
                      width: 893 * fem,
                      decoration: BoxDecoration(
                        color: Color(0x7fd9d1e4),
                        borderRadius: BorderRadius.circular(50 * fem),
                      ),
                      child: TextField(
                        maxLines: null,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.fromLTRB(25 * fem, 0 * fem, 0 * fem, 0 * fem),
                          hintText: 'Confirmar Senha',
                          hintStyle: TextStyle(color: Color(0xff000000)),
                        ),
                        style: GoogleFonts.poppins(
                          fontSize: 40 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0 * fem, 45 * fem, 0 * fem, 0 * fem),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                        },
                        child: Container(
                          width: 893 * fem,
                          height: 114 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffe51f43),
                            borderRadius: BorderRadius.circular(50 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'Criar Conta',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 40 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.5 * ffem / fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  // aosecadastrarvocconcordacomnos (109:44)
                  margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 100 * fem),
                  constraints: BoxConstraints(
                    maxWidth: 649 * fem,
                  ),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: GoogleFonts.poppins(
                        fontSize: 32 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                      children: [
                        TextSpan(
                          text: 'Ao se cadastrar, você concorda com nossos ',
                        ),
                        TextSpan(
                          text: 'Termos',
                          style: GoogleFonts.poppins(
                            fontSize: 32 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            decoration: TextDecoration.underline,
                            color: Color(0xff2473ea),
                            decorationColor: Color(0xff2473ea),
                          ),
                        ),
                        TextSpan(
                          text: ', ',
                        ),
                        TextSpan(
                          text: 'Política de Privacidade',
                          style: GoogleFonts.poppins(
                            fontSize: 32 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            decoration: TextDecoration.underline,
                            color: Color(0xff2473ea),
                            decorationColor: Color(0xff2473ea),
                          ),
                        ),
                        TextSpan(
                          text: ' e ',
                        ),
                        TextSpan(
                          text: 'Política de Cookies',
                          style: GoogleFonts.poppins(
                            fontSize: 32 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            decoration: TextDecoration.underline,
                            color: Color(0xff2473ea),
                            decorationColor: Color(0xff2473ea),
                          ),
                        ),
                        TextSpan(
                          text: '.',
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Container(
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
                          fontSize: 40 * ffem,
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
