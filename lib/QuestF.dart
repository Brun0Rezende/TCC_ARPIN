import 'dart:ui';
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
              // questfailRpT (312:67)
              width: double.infinity,
              height: 2400 * fem,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // questionarioASb (312:73)
                    left: 306 * fem,
                    top: 207 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 428 * fem,
                        height: 96 * fem,
                        child: Text(
                          'Questionario',
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
                    ),
                  ),
                  Positioned(
                    // rectangle4q2w (312:74)
                    left: 0 * fem,
                    top: 422 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 1094 * fem,
                        height: 114 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50 * fem),
                            color: Color(0x7fd9d1e4),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x8247434d),
                                offset: Offset(0 * fem, 7 * fem),
                                blurRadius: 8 * fem,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // qualosignificadodasiglaledu2o (312:75)
                    left: 71 * fem,
                    top: 443 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 826 * fem,
                        height: 72 * fem,
                        child: Text(
                          'Qual é o significado da sigla "LED"?',
                          style: GoogleFonts.poppins(
                            fontSize: 48 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // xyYT (312:76)
                    left: 932 * fem,
                    top: 219 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 58 * fem,
                        height: 72 * fem,
                        child: Text(
                          '2X',
                          style: GoogleFonts.poppins(
                            fontSize: 48 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle11fw5 (312:77)
                    left: 61 * fem,
                    top: 1696 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 919 * fem,
                        height: 124.63 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50 * fem),
                            color: Color(0xffe52043),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle12NqV (312:78)
                    left: 61 * fem,
                    top: 685 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 919 * fem,
                        height: 124.63 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50 * fem),
                            color: Color(0xff20e644),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle13tYw (312:79)
                    left: 61 * fem,
                    top: 894 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 919 * fem,
                        height: 124.63 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50 * fem),
                            color: Color(0xffdad1e4),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle14awZ (312:80)
                    left: 61 * fem,
                    top: 1103 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 919 * fem,
                        height: 124.63 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50 * fem),
                            color: Color(0xffe52043),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle15HLB (312:81)
                    left: 61 * fem,
                    top: 1312 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 919 * fem,
                        height: 124.63 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50 * fem),
                            color: Color(0xffdad1e4),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // proximaCT9 (312:82)
                    left: 435 * fem,
                    top: 1728 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 168 * fem,
                        height: 60 * fem,
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
                  ),
                  Positioned(
                    // alightemittingdiodetKy (312:83)
                    left: 91 * fem,
                    top: 711 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 541 * fem,
                        height: 72 * fem,
                        child: Text(
                          'A) Light Emitting Diode',
                          style: GoogleFonts.poppins(
                            fontSize: 48 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // blightenergydispenserkd5 (312:84)
                    left: 91 * fem,
                    top: 920 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 602 * fem,
                        height: 72 * fem,
                        child: Text(
                          'B) Light Energy Dispenser',
                          style: GoogleFonts.poppins(
                            fontSize: 48 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: Color(0x99000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // claseremittingdeviceFJw (312:85)
                    left: 91 * fem,
                    top: 1128 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 581 * fem,
                        height: 72 * fem,
                        child: Text(
                          'C) Laser Emitting Device',
                          style: GoogleFonts.poppins(
                            fontSize: 48 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // dlaseremittingdeviceYoq (312:86)
                    left: 91 * fem,
                    top: 1342 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 578 * fem,
                        height: 72 * fem,
                        child: Text(
                          'D) Laser Emitting Device',
                          style: GoogleFonts.poppins(
                            fontSize: 48 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: Color(0x99000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // respostaincorreta3kb (312:87)
                    left: 286 * fem,
                    top: 1535 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 468 * fem,
                        height: 72 * fem,
                        child: Text(
                          'Resposta Incorreta!',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 48 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: Color(0xffb31935),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle16wqy (312:88)
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 15 * fem,
                          sigmaY: 15 * fem,
                        ),
                        child: Align(
                          child: SizedBox(
                            width: 1040 * fem,
                            height: 2235 * fem,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0x7cc7c7c7),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle17EaB (312:89)
                    left: 78 * fem,
                    top: 558 * fem,
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(
                        sigmaX: 2 * fem,
                        sigmaY: 2 * fem,
                      ),
                      child: Align(
                        child: SizedBox(
                          width: 884 * fem,
                          height: 879 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35 * fem),
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // quepenawUb (312:90)
                    left: 360.5 * fem,
                    top: 637 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 317 * fem,
                        height: 96 * fem,
                        child: Text(
                          'Que pena',
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
                    ),
                  ),
                  Positioned(
                    // parecequesuaschancesacabarames (312:91)
                    left: 211 * fem,
                    top: 795 * fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 619 * fem,
                          height: 288 * fem,
                          child: Text(
                            'Parece que suas chances acabaram\nEstude um pouco mais e tente novamente!',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 62 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle18tYF (313:93)
                    left: 122 * fem,
                    top: 1187 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 793 * fem,
                        height: 125 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50 * fem),
                            color: Color(0xffe51f43),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // confirmarzrB (313:94)
                    left: 416 * fem,
                    top: 1230 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 209 * fem,
                        height: 60 * fem,
                        child: Text(
                          'Confirmar',
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
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
