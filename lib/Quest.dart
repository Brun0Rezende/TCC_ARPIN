import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'HomePage.dart';
import 'UserProfile.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: Quest(),
      ),
    ),
  );
}

class Quest extends StatefulWidget {
  const Quest({super.key});

  @override
  State<Quest> createState() => _QuestState();
}

class _QuestState extends State<Quest> {
  var Resp;
  var Corre;

  Color buttonColor = const Color(0xffDAD1E4); // Cor inicial do botão
  void changeButtonColor() {
    setState(() {
      if (Corre == 1) {
        buttonColor = const Color(0xff20E644);
      } else if (Resp == 0) {
        buttonColor = const Color(0xffe51f43);
      }
    });
  }

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
            width: double.infinity,
            child: Container(
              // questionarioWqM (296:102)
              padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // autogroupugvtrAT (4s1hJm9Wnj1G9Z35XNugvT)
                    margin: EdgeInsets.fromLTRB(350 * fem, 50 * fem, 62 * fem, 100 * fem),

                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // questionarioBTd (296:116)
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 198 * fem, 0 * fem),
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
                        Text(
                          // x5ou (311:2)
                          '1X',
                          style: GoogleFonts.poppins(
                            fontSize: 48 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupa1xjRMy (4s1hRWTGmtqZCzc1JTA1xj)
                    width: double.infinity,
                    height: 114 * fem,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(114, 217, 209, 228),
                    ),
                    child: Center(
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
                  Container(
                    padding: EdgeInsets.fromLTRB(61 * fem, 149 * fem, 60 * fem, 0 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(children: [
                          //PERGUNTAS
                          Container(
                            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 75 * fem),
                  
                            child: ElevatedButton(
                              onPressed: () {
                                Resp = 1;
                                changeButtonColor();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: buttonColor, // Use a cor atual do botão
                                minimumSize: Size(919 * fem, 125 * fem),
                                elevation: 0,
                                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                              ),
                              child: Text(
                                'A) Light Emitting Diode',
                                style: GoogleFonts.poppins(
                                  fontSize: 48 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 75 * fem),
                            child: ElevatedButton(
                              onPressed: () {
                                Resp = 0;
                                changeButtonColor();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: buttonColor, // Use a cor atual do botão
                                minimumSize: Size(919 * fem, 125 * fem),
                                elevation: 0,
                                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                              ),
                              child: Text(
                                'B) Light Emitting Diode',
                                style: GoogleFonts.poppins(
                                  fontSize: 48 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 75 * fem),
                            child: ElevatedButton(
                              onPressed: () {
                                Resp = 0;

                                changeButtonColor();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: buttonColor, // Use a cor atual do botão
                                minimumSize: Size(919 * fem, 125 * fem),
                                elevation: 0,
                                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                              ),
                              child: Text(
                                'C) Light Emitting Diode',
                                style: GoogleFonts.poppins(
                                  fontSize: 48 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 75 * fem),
                            child: ElevatedButton(
                              onPressed: () {
                                Resp = 0;

                                changeButtonColor();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: buttonColor, // Use a cor atual do botão
                                minimumSize: Size(919 * fem, 125 * fem),
                                elevation: 0,
                                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                              ),
                              child: Text(
                                'D) Light Emitting Diode',
                                style: GoogleFonts.poppins(
                                  fontSize: 48 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ]),
                        Container(
                          // respostaincorretaSTR (296:145)
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1 * fem, 75 * fem),
                          child: Column(children: [
                            if (Resp == 1) ...[
                              Text(
                                'Resposta Correta!',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  fontSize: 48 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ] else if (Resp == 0) ...[
                              Text(
                                'Resposta Incorreta!',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  fontSize: 48 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xffb31935),
                                ),
                              ),
                            ]
                          ]),
                        ),
                        Container(
                          // autogroupdpcbM4b (4s1hoVpdh3FmqzA926dPCb)
                          width: double.infinity,
                          height: 125 * fem,
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
