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
              // perguntaalterQsq (301:118)
              padding: EdgeInsets.fromLTRB(0 * fem, 18 * fem, 0 * fem, 0 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // perguntaQoH (301:138)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 50 * fem, 0 * fem, 40 * fem),
                    width: double.infinity,
                    child: Text(
                      'Pergunta 1:',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 64 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // qualosignificadodasiglaledWbR (301:126)
                    margin: EdgeInsets.fromLTRB(
                        111 * fem, 0 * fem, 0 * fem, 66 * fem),
                    child: Text(
                      'Qual é o significado da sigla "LED"?',
                      style: GoogleFonts.poppins(
                        fontSize: 52 * ffem,
                        fontWeight: FontWeight.w300,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // respostasRCb (301:139)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 50 * fem),
                    width: double.infinity,
                    child: Text(
                      'Respostas:',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 64 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // alightemittingdiode8co (301:133)
                    margin: EdgeInsets.fromLTRB(
                        111 * fem, 0 * fem, 0 * fem, 50 * fem),
                    child: Text(
                      'A) Light Emitting Diode',
                      style: GoogleFonts.poppins(
                        fontSize: 52 * ffem,
                        fontWeight: FontWeight.w300,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // blightenergydispenserdpT (301:134)
                    margin: EdgeInsets.fromLTRB(
                        111 * fem, 0 * fem, 0 * fem, 50 * fem),
                    child: Text(
                      'B) Light Energy Dispenser',
                      style: GoogleFonts.poppins(
                        fontSize: 52 * ffem,
                        fontWeight: FontWeight.w300,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // claseremittingdeviceLD5 (301:135)
                    margin: EdgeInsets.fromLTRB(
                        111 * fem, 0 * fem, 0 * fem, 50 * fem),
                    child: Text(
                      'C) Laser Emitting Device',
                      style: GoogleFonts.poppins(
                        fontSize: 52 * ffem,
                        fontWeight: FontWeight.w300,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // dlaseremittingdeviceq9q (301:136)
                    margin: EdgeInsets.fromLTRB(
                        111 * fem, 0 * fem, 0 * fem, 0 * fem),
                    child: Text(
                      'D) Laser Emitting Device',
                      style: GoogleFonts.poppins(
                        fontSize: 52 * ffem,
                        fontWeight: FontWeight.w300,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupoidvjm1 (4s1kW5zPBjs9J9HWb2oidV)
                    padding: EdgeInsets.fromLTRB(
                        61 * fem, 93 * fem, 60 * fem, 0 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogrouprrrb4HV (4s1kGm3FnKRvN63JsyRrrB)
                          margin: EdgeInsets.fromLTRB(
                              158 * fem, 0 * fem, 159 * fem, 800 * fem),
                          width: double.infinity,
                          height: 87 * fem,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/rectangle-7-7pB.png',
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Adicionar Resposta',
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
                          // autogroupebysi79 (4s1kNksGDMj55p6oM9ebYs)
                          width: double.infinity,
                          height: 124.63 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffe52043),
                            borderRadius: BorderRadius.circular(50 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'Proxima',
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
