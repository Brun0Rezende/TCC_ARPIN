import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'HomePage.dart';
import 'Login.dart';
import 'UserProfile.dart';

void main() {
  runApp(
    MaterialApp(
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: Home(),
      ),
    ),
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => UserProfile()));
              },
              icon: Image.asset('assets/images/user.png')),
        ],
        title: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePage()));
            },
            icon: Image.asset('assets/images/led.png')),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset('assets/images/arrow.png')),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double baseWidth = 1040;
          double fem = constraints.maxWidth / baseWidth;
          double ffem = fem * 0.97;

          return Container(
            width: double.infinity,
            child: Container(
              // tutorialabertonPh (255:3)
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupuxnktBq (4s1Y7C9Ew7vFJqa3fnUxnK)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 100 * fem),
                    width: double.infinity,
                    height: 500 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // group2CyD (255:6)
                          left: 345 * fem,
                          top: 50 * fem,
                          child: Container(
                            width: 350 * fem,
                            height: 452 * fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupjhpbB2X (4s1YDwSzvHkYNH8ySrjHpb)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 30 * fem),
                                  padding: EdgeInsets.fromLTRB(119 * fem,
                                      113 * fem, 106 * fem, 112 * fem),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(50 * fem),
                                    gradient: const LinearGradient(
                                      begin: Alignment(0, -1),
                                      end: Alignment(0, 1),
                                      colors: <Color>[Color(0xffffffff)],
                                      stops: <double>[1],
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x82615b69),
                                        offset: Offset(0 * fem, 7),
                                        blurRadius: 8 * fem,
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    // led37yh (264:36)
                                    child: SizedBox(
                                      width: 125 * fem,
                                      height: 125 * fem,
                                      child: Image.asset(
                                        'assets/images/led-3.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  // led3sM (255:9)
                                  'LED',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    fontSize: 48 * ffem,
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
                      ],
                    ),
                  ),
                  Container(
                    // descrioHHq (255:13)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 2 * fem, 11 * fem),
                    child: Text(
                      'Descrição:',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 40 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Center(
                    // aprendaacontrolarledscomfacili (255:12)
                    child: Container(
                      margin: EdgeInsets.fromLTRB(
                          13 * fem, 0 * fem, 0 * fem, 100 * fem),
                      constraints: BoxConstraints(
                        maxWidth: 837 * fem,
                      ),
                      child: Text(
                        'Aprenda a controlar LEDs com facilidade neste tutorial Arduino. Desde o básico até conceitos avançados, você vai dominar o uso de LEDs como componentes de saída. Ilumine seu caminho para o sucesso com Arduino!',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 40 * ffem,
                          fontWeight: FontWeight.w300,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // autogroup1whmAkw (4s1YWgU6xXQkdG941E1WhM)
                    margin:
                        EdgeInsets.fromLTRB(8 * fem, 0 * fem, 0 * fem, 0 * fem),
                    width: double.infinity,
                    height: 862.63 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // group6VHR (255:14)
                          left: 58 * fem,
                          top: 0 * fem,
                          child: Container(
                            width: 921 * fem,
                            height: 862.63 * fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupwmdhCBq (4s1Yk6FReQTf9jL5dpwmdH)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 2 * fem, 135 * fem),
                                  width: 919 * fem,
                                  height: 124.63 * fem,
                                  decoration: BoxDecoration(
                                    color: Color(0xffe51f43),
                                    borderRadius:
                                        BorderRadius.circular(50 * fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Iniciar',
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
                                Container(
                                  // selecioneaetapadesejadaNkX (256:29)
                                  margin: EdgeInsets.fromLTRB(
                                      2 * fem, 0 * fem, 0 * fem, 28 * fem),
                                  child: Text(
                                    'Selecione a Etapa Desejada:',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                      fontSize: 48 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.5 * ffem / fem,
                                      fontStyle: FontStyle.italic,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  // autogroupnwas5ew (4s1YqfvTf9gPuPfSVHNWas)
                                  margin: EdgeInsets.fromLTRB(
                                      2 * fem, 0 * fem, 0 * fem, 43.37 * fem),
                                  width: 919 * fem,
                                  height: 124.63 * fem,
                                  decoration: BoxDecoration(
                                    color: Color(0xffe51f43),
                                    borderRadius:
                                        BorderRadius.circular(50 * fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Material Didatico',
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
                                Container(
                                  // autogroupnwas5ew (4s1YqfvTf9gPuPfSVHNWas)
                                  margin: EdgeInsets.fromLTRB(
                                      2 * fem, 0 * fem, 0 * fem, 43.37 * fem),
                                  width: 919 * fem,
                                  height: 124.63 * fem,
                                  decoration: BoxDecoration(
                                    color: Color(0xffb31935),
                                    borderRadius:
                                        BorderRadius.circular(50 * fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Questionario',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        fontSize: 40 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0x99ffffff),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // autogroupnwas5ew (4s1YqfvTf9gPuPfSVHNWas)
                                  margin: EdgeInsets.fromLTRB(
                                      2 * fem, 0 * fem, 0 * fem, 43.37 * fem),
                                  width: 919 * fem,
                                  height: 124.63 * fem,
                                  decoration: BoxDecoration(
                                    color: Color(0xffb31935),
                                    borderRadius:
                                        BorderRadius.circular(50 * fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Visualizar Projeto',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        fontSize: 40 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0x99ffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // line4ETH (264:60)
                          left: 0 * fem,
                          top: 250 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 1040 * fem,
                              height: 1 * fem,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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
