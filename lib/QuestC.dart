import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'HomePage.dart';
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
              // questconcluidoeBH (311:3)
              padding: EdgeInsets.fromLTRB(0 * fem, 18 * fem, 0 * fem, 0 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // parabnsPRh (311:24)
                    margin: EdgeInsets.fromLTRB(
                        1 * fem, 25 * fem, 0 * fem, 0 * fem),
                    child: Text(
                      'Parabéns!',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 64 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.5 * ffem / fem,
                        fontStyle: FontStyle.italic,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupghafVUj (4s1ja2i81vb7ECoGSuGhAf)
                    padding: EdgeInsets.fromLTRB(
                        59 * fem, 55 * fem, 62 * fem, 193.37 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupn2ak1T5 (4s1jMNQYtB5M3T7g8CN2aK)
                          margin: EdgeInsets.fromLTRB(
                              311 * fem, 0 * fem, 308 * fem, 65.63 * fem),
                          padding: EdgeInsets.fromLTRB(
                              88 * fem, 86 * fem, 87 * fem, 84.37 * fem),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50 * fem),
                            gradient: LinearGradient(
                              begin: Alignment(0, -1),
                              end: Alignment(0, 1),
                              colors: <Color>[Color(0xffffffff)],
                              stops: <double>[1],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x82615b69),
                                offset: Offset(0 * fem, 7 * fem),
                                blurRadius: 8 * fem,
                              ),
                            ],
                          ),
                          child: Center(
                            // led3dzF (312:58)
                            child: SizedBox(
                              width: 125 * fem,
                              height: 125 * fem,
                              child: Image.asset(
                                'assets/images/led-3-MoV.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          // questionarioconcluidocomsucess (311:26)
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                3 * fem, 0 * fem, 0 * fem, 85 * fem),
                            constraints: BoxConstraints(
                              maxWidth: 674 * fem,
                            ),
                            child: Text(
                              'questionario concluido com\n sucesso!',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 48 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // pontuaoSRu (312:57)
                          margin: EdgeInsets.fromLTRB(
                              3 * fem, 0 * fem, 0 * fem, 56 * fem),
                          child: Text(
                            'Pontuação:',
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
                          // 9bD (312:61)
                          margin: EdgeInsets.fromLTRB(
                              3 * fem, 0 * fem, 0 * fem, 34 * fem),
                          child: Text(
                            '4/5',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 128 * ffem,
                              fontWeight: FontWeight.w300,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // muitobomrkX (312:62)
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                1 * fem, 0 * fem, 0 * fem, 640 * fem),
                            child: Text(
                              'Muito bom!',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 48 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupenu5ND5 (4s1jS2wSmsXaGa3wpfeNu5)
                          width: double.infinity,
                          height: 124.63 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffe51f43),
                            borderRadius: BorderRadius.circular(50 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'Concluido',
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
