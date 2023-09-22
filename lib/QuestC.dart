import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'HomePage.dart';
import 'UserProfile.dart';

void main() {
  runApp(
    MaterialApp(
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: QuestConcluido(),
      ),
    ),
  );
}

class QuestConcluido extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
            child: Column(
              children: [
                Container(
                  // questionarioBTd (296:116)
                  margin: EdgeInsets.fromLTRB(0 * fem, 75 * fem, 0 * fem, 25 * fem),
                  child: Text(
                    'Parabéns!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 70 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.5 * ffem / fem,
                      fontStyle: FontStyle.italic,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                SizedBox(
                  width: 400 * fem,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {},
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
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0 * fem, 100 * fem, 0 * fem, 100 * fem),
                    constraints: BoxConstraints(
                      maxWidth: 500 * fem,
                    ),
                    child: Text(
                      'questionario concluido com sucesso!',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 50 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
                Container(
                  // pontuaoSRu (312:57)
                  margin: EdgeInsets.fromLTRB(0 * fem, 100 * fem, 0 * fem, 50 * fem),
                  child: Text(
                    'Pontuação:',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 54 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.5 * ffem / fem,
                      fontStyle: FontStyle.italic,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Container(
                  // 9bD (312:61)
                  margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                  child: Text(
                    '4/5',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 150 * ffem,
                      fontWeight: FontWeight.w300,
                      height: 1.5 * ffem / fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Center(
                  // muitobomrkX (312:62)
                  child: Container(
                    child: Text(
                      'Muito bom!',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 52 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 50 * fem),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffe51f43),
                        minimumSize: Size(919 * fem, 125 * fem),
                        elevation: 0,
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                      },
                      child: Text(
                        'Concluido',
                        style: GoogleFonts.poppins(
                          fontSize: 48 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.5 * ffem / fem,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ))
              ],
            ),
          );
        },
      ),
    );
  }
}
