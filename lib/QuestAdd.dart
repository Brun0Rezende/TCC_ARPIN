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
              // questionarioalterUxo (302:2)
              padding: EdgeInsets.fromLTRB(0 * fem, 50 * fem, 0 * fem, 0 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    // questesrby (302:8)
                    'Questões',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 64 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.5 * ffem / fem,
                      fontStyle: FontStyle.italic,
                      color: Color(0xff000000),
                    ),
                  ),
                  Container(
                    // autogrouppdgbnVd (4s1mJPzYxsvhBgrusZPdGb)
                    padding: EdgeInsets.fromLTRB(
                        60 * fem, 107 * fem, 60 * fem, 0 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group9uKM (305:4)
                          margin: EdgeInsets.fromLTRB(
                              1 * fem, 0 * fem, 0 * fem, 64 * fem),
                          padding: EdgeInsets.fromLTRB(
                              0 * fem, 14 * fem, 29 * fem, 13 * fem),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/rectangle-7-Aj9.png',
                              ),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // qualosignificadodasiglaledC3Z (302:17)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 118 * fem, 0 * fem),
                                child: Text(
                                  'Qual é o significado da sigla "LED"?',
                                  style: GoogleFonts.poppins(
                                    fontSize: 36 * ffem,
                                    fontWeight: FontWeight.w300,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // edit1hW7 (304:3)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 39 * fem, 0 * fem),
                                width: 60 * fem,
                                height: 60 * fem,
                                child: Image.asset(
                                  'assets/images/edit-1-Bom.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                // bin1d8s (304:2)
                                width: 60 * fem,
                                height: 60 * fem,
                                child: Image.asset(
                                  'assets/images/bin-1-bU3.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // group10APh (305:5)
                          margin: EdgeInsets.fromLTRB(
                              1 * fem, 0 * fem, 0 * fem, 64 * fem),
                          padding: EdgeInsets.fromLTRB(
                              0 * fem, 14 * fem, 29 * fem, 13 * fem),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/rectangle-7-zUX.png',
                              ),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // qualafunodeumresistor2go (305:6)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 159 * fem, 0 * fem),
                                child: Text(
                                  'Qual é a função de um resistor...',
                                  style: GoogleFonts.poppins(
                                    fontSize: 36 * ffem,
                                    fontWeight: FontWeight.w300,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // edit1Kvo (305:9)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 39 * fem, 0 * fem),
                                width: 60 * fem,
                                height: 60 * fem,
                                child: Image.asset(
                                  'assets/images/edit-1-V8K.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                // bin1rQw (305:8)
                                width: 60 * fem,
                                height: 60 * fem,
                                child: Image.asset(
                                  'assets/images/bin-1-4d5.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // group1112w (305:10)
                          margin: EdgeInsets.fromLTRB(
                              1 * fem, 0 * fem, 0 * fem, 64 * fem),
                          padding: EdgeInsets.fromLTRB(
                              0 * fem, 14 * fem, 29 * fem, 13 * fem),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/rectangle-7-tGo.png',
                              ),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // qualdessescdigotemafunoVTu (305:12)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 105 * fem, 0 * fem),
                                child: Text(
                                  'Qual desses código tem a função...',
                                  style: GoogleFonts.poppins(
                                    fontSize: 36 * ffem,
                                    fontWeight: FontWeight.w300,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // edit1VcK (305:14)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 39 * fem, 0 * fem),
                                width: 60 * fem,
                                height: 60 * fem,
                                child: Image.asset(
                                  'assets/images/edit-1-7cj.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                // bin1DoD (305:13)
                                width: 60 * fem,
                                height: 60 * fem,
                                child: Image.asset(
                                  'assets/images/bin-1-y8b.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // group12AyM (305:15)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 1 * fem, 64 * fem),
                          padding: EdgeInsets.fromLTRB(
                              0 * fem, 14 * fem, 29 * fem, 13 * fem),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/rectangle-7-1qH.png',
                              ),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // qualafunodeumresistorao4J3 (305:17)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 102 * fem, 0 * fem),
                                child: Text(
                                  'Qual é a função de um resistor ao...',
                                  style: GoogleFonts.poppins(
                                    fontSize: 36 * ffem,
                                    fontWeight: FontWeight.w300,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // edit1NJj (305:19)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 39 * fem, 0 * fem),
                                width: 60 * fem,
                                height: 60 * fem,
                                child: Image.asset(
                                  'assets/images/edit-1-Jnj.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                // bin1JCP (305:18)
                                width: 60 * fem,
                                height: 60 * fem,
                                child: Image.asset(
                                  'assets/images/bin-1-MZy.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // group13eGF (305:20)
                          margin: EdgeInsets.fromLTRB(
                              1 * fem, 0 * fem, 0 * fem, 900 * fem),
                          padding: EdgeInsets.fromLTRB(
                              0 * fem, 14 * fem, 29 * fem, 13 * fem),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/rectangle-7.png',
                              ),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // qualdessescdigotemafunoLes (305:22)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 105 * fem, 0 * fem),
                                child: Text(
                                  'Qual desses código tem a função...',
                                  style: GoogleFonts.poppins(
                                    fontSize: 36 * ffem,
                                    fontWeight: FontWeight.w300,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // edit12nb (305:24)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 39 * fem, 0 * fem),
                                width: 60 * fem,
                                height: 60 * fem,
                                child: Image.asset(
                                  'assets/images/edit-1-htB.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                // bin1kCo (305:23)
                                width: 60 * fem,
                                height: 60 * fem,
                                child: Image.asset(
                                  'assets/images/bin-1-FpK.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupnwas5ew (4s1YqfvTf9gPuPfSVHNWas)
                          margin: EdgeInsets.fromLTRB(
                              2 * fem, 0 * fem, 0 * fem, 0 * fem),
                          width: 919 * fem,
                          height: 124.63 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffe51f43),
                            borderRadius: BorderRadius.circular(50 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'Adicionar Pergunta',
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
