import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'HomePage.dart';
import 'UserProfile.dart';
import 'MaterialDidatico.dart';
import 'Quest.dart';
import 'BaixarModelo.dart';

void main() {
  runApp(
    MaterialApp(
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: Tutorial(),
      ),
    ),
  );
}

class Tutorial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //HEADER
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserProfile()));
              },
              icon: Image.asset('assets/images/user.png')),
        ],
        title: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
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
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    //TUTORIAL ICON
                    margin: EdgeInsets.fromLTRB(0 * fem, 50 * fem, 0 * fem, 0 * fem),
                    height: 400 * fem,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 400 * fem,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50 * fem),
                                color: Color(0xffffffff),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x82615b69),
                                    offset: Offset(0 * fem, 7 * fem),
                                    blurRadius: 8 * fem,
                                  ),
                                ],
                              ),
                              child: Container(
                                margin: EdgeInsets.fromLTRB(100 * fem, 100 * fem, 100 * fem, 100 * fem),
                                child: Image.asset(
                                  'assets/images/led.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    //TUTORIAL NAME
                    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 25 * fem),
                    child: Text(
                      'LED',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 50 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5 * ffem / fem,
                        fontStyle: FontStyle.italic,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
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
                          //TUTORIAL DESC
                          child: Container(
                            margin: EdgeInsets.fromLTRB(13 * fem, 0 * fem, 0 * fem, 100 * fem),
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
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            //START BUTTON
                            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 100 * fem),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => MaterialDidatico()));
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
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0 * fem, 20 * fem, 0 * fem, 30 * fem),
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
                            //MATERIAL BUTTON
                            margin: EdgeInsets.fromLTRB(0 * fem, 10 * fem, 0 * fem, 0 * fem),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => MaterialDidatico()));
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
                            ),
                          ),
                          Container(
                            //QUEST BUTTON
                            margin: EdgeInsets.fromLTRB(0 * fem, 10 * fem, 0 * fem, 0 * fem),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Quest()));
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
                                    'Questionario',
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
                            //RA BUTTON
                            margin: EdgeInsets.fromLTRB(0 * fem, 10 * fem, 0 * fem, 0 * fem),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => BXModelo()));
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
                                    'Visualizar Projeto',
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
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
