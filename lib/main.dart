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
            width: double.infinity,
            child: Container(
              // cadastrarQRV (108:15)
              padding: EdgeInsets.fromLTRB(73 * fem, 150 * fem, 73 * fem, 40 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // led36p7 (108:17)
                    width: 250 * fem,
                    height: 250 * fem,
                    child: Image.asset(
                      'assets/images/led-3.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // autogroupbwnsdp3 (4s1qNcYHkGgfrXgBzfbWns)
                    margin: EdgeInsets.fromLTRB(158 * fem, 0 * fem, 162 * fem, 0 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(20 * fem, 0 * fem, 15 * fem, 20 * fem),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: GoogleFonts.poppins(
                                fontSize: 40,
                                fontWeight: FontWeight.w300,
                                height: 1,
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
                                    fontSize: 40,
                                    fontWeight: FontWeight.w600,
                                    height: 1,
                                    fontStyle: FontStyle.italic,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          // porqueensinarnoapenastransmiti (108:40)
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 50 * fem),
                          child: Text(
                            'Porque ensinar não é apenas transmitir conhecimento!',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 40 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group3Aqu (108:39)
                    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 51 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50 * fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // criesuacontaGe3 (109:42)
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 34 * fem),
                          child: Text(
                            'Crie sua Conta',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 72 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // autogroup7lg7Nwy (4s1qfgtAvLocVATaFD7LG7)
                          margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 18 * fem),
                          width: 893 * fem,
                          height: 114 * ffem,
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
                              contentPadding: EdgeInsets.fromLTRB(25 * fem, 0 * fem, 0 * fem, 15 * fem),
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
                          // autogroup7lg7Nwy (4s1qfgtAvLocVATaFD7LG7)
                          margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 18 * fem),
                          width: 893 * fem,
                          height: 114 * ffem,
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
                              contentPadding: EdgeInsets.fromLTRB(25 * fem, 0 * fem, 0 * fem, 15 * fem),
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
                          // autogroup7lg7Nwy (4s1qfgtAvLocVATaFD7LG7)
                          margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 18 * fem),
                          width: 893 * fem,
                          height: 114 * ffem,
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
                              contentPadding: EdgeInsets.fromLTRB(25 * fem, 0 * fem, 0 * fem, 15 * fem),
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
                          // autogroup7lg7Nwy (4s1qfgtAvLocVATaFD7LG7)
                          margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 18 * fem),
                          width: 893 * fem,
                          height: 114 * ffem,
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
                              contentPadding: EdgeInsets.fromLTRB(25 * fem, 0 * fem, 0 * fem, 15 * fem),
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
                          // autogrouppj3mEZd (4s1r1BKhKimMKmevGXpj3M)
                          margin: EdgeInsets.fromLTRB(1 * fem, 10 * fem, 0 * fem, 0 * fem),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
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
                  ),
                  Container(
                    // aosecadastrarvocconcordacomnos (109:44)
                    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 150 * fem),
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
                    // jatemumacontaentrarBn7 (108:38)
                    child: Container(
                      margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 0 * fem),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: GoogleFonts.poppins(
                              fontSize: 40 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                            children: [
                              TextSpan(
                                text: 'Ja tem uma conta? ',
                              ),
                              TextSpan(
                                text: 'Entrar',
                                style: GoogleFonts.poppins(
                                  fontSize: 40 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5 * ffem / fem,
                                  decoration: TextDecoration.underline,
                                  color: Color(0xff2473ea),
                                  decorationColor: Color(0xff2473ea),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
 