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
              // tutorialalteram5 (301:55)
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupvnzsisH (4s1cvPTN9J8U8i9g9evnzs)
                    padding: EdgeInsets.fromLTRB(
                        0 * fem, 18 * fem, 0 * fem, 7 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          // informaesdotutorialTbu (301:101)
                          'Informações do Tutorial\n',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 48 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5 * ffem / fem,
                            fontStyle: FontStyle.italic,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroup9somAFR (4s1dm2iysHR8dpCDHR9soM)
                    padding: EdgeInsets.fromLTRB(
                        8 * fem, 58 * fem, 0 * fem, 0 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // autogroup5mgbsQj (4s1dJdKJupPjYwYHdw5Mgb)
                          margin: EdgeInsets.fromLTRB(
                              50 * fem, 0 * fem, 0 * fem, 26 * fem),
                          width: double.infinity,
                          alignment: Alignment.centerLeft,
                          height: 350 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // iconeNsH (301:84)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 175 * fem, 0 * fem),
                                child: Text(
                                  'Icone:',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    fontSize: 52 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // autogroupqtgxHDZ (4s1dQnohumvFTVVRxCQtgX)
                                padding: EdgeInsets.fromLTRB(
                                    112 * fem, 112 * fem, 113 * fem, 113 * fem),
                                height: double.infinity,
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
                                  // led3KAF (301:59)
                                  child: SizedBox(
                                    width: 125 * fem,
                                    height: 125 * fem,
                                    child: Image.asset(
                                      'assets/images/led-3-uVq.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // titulodAw (301:58)
                          margin: EdgeInsets.fromLTRB(
                              50 * fem, 0 * fem, 0 * fem, 26 * fem),
                          width: double.infinity,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Titulo:',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 52 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // ledX1R (301:83)
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 59 * fem),
                            width: double.infinity,
                            child: Text(
                              'LED',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 52 * ffem,
                                fontWeight: FontWeight.w300,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // descriopFR (301:61)
                          margin: EdgeInsets.fromLTRB(
                              50 * fem, 0 * fem, 0 * fem, 26 * fem),
                          width: double.infinity,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Descrição:',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 52 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // aprendaacontrolarledscomfacili (301:60)
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 100 * fem),
                            width: double.infinity,
                            constraints: BoxConstraints(
                              maxWidth: 837 * fem,
                            ),
                            child: Text(
                              'Aprenda a controlar LEDs com facilidade neste tutorial Arduino. Desde o básico até conceitos avançados, você vai dominar o uso de LEDs como componentes de saída. Ilumine seu caminho para o sucesso com Arduino!',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 52 * ffem,
                                fontWeight: FontWeight.w300,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // group7wDZ (301:91)
                          margin: EdgeInsets.fromLTRB(
                              53 * fem, 0 * fem, 60 * fem, 60.73 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupmcdms7D (4s1eDbo3PfftuWjnmzMCDM)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 43 * fem),
                                padding: EdgeInsets.fromLTRB(
                                    39 * fem, 28 * fem, 31 * fem, 32.63 * fem),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xffe51f43),
                                  borderRadius: BorderRadius.circular(50 * fem),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // materialdidatico9aX (301:99)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 4 * fem, 350 * fem, 0 * fem),
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
                                    Container(
                                      // edit112uD (313:101)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 39 * fem, 4 * fem),
                                      width: 60 * fem,
                                      height: 60 * fem,
                                      child: Image.asset(
                                        'assets/images/edit-1-1.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      // bin11kaK (313:102)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 4 * fem),
                                      width: 60 * fem,
                                      height: 60 * fem,
                                      child: Image.asset(
                                        'assets/images/bin-1-1.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogroupwv9mUWK (4s1eLr5y5bCHXRyg6Kwv9M)
                                padding: EdgeInsets.fromLTRB(
                                    39 * fem, 32.37 * fem, 31 * fem, 35 * fem),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xffe52043),
                                  borderRadius: BorderRadius.circular(50 * fem),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // questionarioa3Z (301:95)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 427 * fem, 0 * fem),
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
                                    Container(
                                      // edit12gcP (313:105)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 39 * fem, 0 * fem),
                                      width: 60 * fem,
                                      height: 60 * fem,
                                      child: Image.asset(
                                        'assets/images/edit-1-2.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      // bin12CKq (313:106)
                                      width: 60 * fem,
                                      height: 60 * fem,
                                      child: Image.asset(
                                        'assets/images/bin-1-2.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupvekpvFq (4s1dVsVaDmSteg9qGPVEkP)
                          margin: EdgeInsets.fromLTRB(
                              60 * fem, 0 * fem, 53 * fem, 53.37 * fem),
                          width: double.infinity,
                          height: 124.63 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffe51f43),
                            borderRadius: BorderRadius.circular(50 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'Salvar Alterações',
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
                          margin: EdgeInsets.fromLTRB(
                              60 * fem, 0 * fem, 53 * fem, 53.37 * fem),
                          width: double.infinity,
                          height: 124.63 * fem,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffe52043)),
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(50 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'Desativar Tutorial',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 40 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.5 * ffem / fem,
                                color: Color(0xffe52043),
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
