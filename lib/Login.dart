import 'package:ar_pin/Cadastro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'HomePage.dart';

void main() {
  runApp(
    MaterialApp(
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: Login(),
      ),
    ),
  );
}

class Login extends StatelessWidget {
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
                          hintText: 'Email ou nome de usuário',
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
                      // autogroupkbgbu2F (4s1pvYTPve819Joa3MkbGb)
                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 65 * fem),
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
                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 25 * fem),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
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
                              'Entrar',
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
                    Container(
                      margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 0 * fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 893 * fem,
                          height: 114 * fem,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffe52043)),
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(50 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'Esqueceu sua senha?',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 40 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.5 * ffem / fem,
                                color: Color(0xffe51f43),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0 * fem, 200 * fem, 0 * fem, 0 * fem),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Cadastro()));
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Text(
                          'Novo por aqui? Crie uma conta!',
                          style: GoogleFonts.poppins(
                            fontSize: 40 * ffem,
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
