import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../home_page.dart';
import '../../user_profile.dart';
import 'material_didatico_led.dart';
import 'quest_led.dart';
import '../../baixar_modelo.dart';

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

class Tutorial extends StatefulWidget {
  @override
  State<Tutorial> createState() => _TutorialState();
}

class _TutorialState extends State<Tutorial> {

  @override
  void initState() {
    // TODO: implement initState
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //HEADER
            appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserProfile()));
              },
              icon: Image.asset('assets/images/user.png')),
        ],
        title: IconButton(
            iconSize: 40,
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const HomePage()));
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

          return SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xffffffff),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
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
                                  color: const Color(0xffffffff),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x82615b69),
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
                          fontSize: 60 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          fontStyle: FontStyle.italic,
                          color: const Color(0xff000000),
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
                                fontSize: 45 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.5 * ffem / fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ),
                          Center(
                            //TUTORIAL DESC
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 100 * fem),
                              constraints: BoxConstraints(
                                maxWidth: 837 * fem,
                              ),
                              child: Text(
                                'Aprenda a controlar LEDs com facilidade neste tutorial Arduino. Desde o básico até conceitos avançados, você vai dominar o uso de LEDs como componentes de saída. Ilumine seu caminho para o sucesso com Arduino!',
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.poppins(
                                  fontSize: 44 * ffem,
                                  fontWeight: FontWeight.w300,
                                  height: 1.5 * ffem / fem,
                                  color: const Color(0xff000000),
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
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xffe51f43),
                                  minimumSize: Size(919 * fem, 125 * fem),
                                  elevation: 0,
                                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                                ),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MaterialDidatico()));
                                },
                                child: Text(
                                  'Iniciar',
                                  style: GoogleFonts.poppins(
                                    fontSize: 48 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5 * ffem / fem,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20 * fem),
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
                            Container(
                              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 30 * fem),
                              child: Text(
                                'Selecione a Etapa Desejada:',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  fontSize: 52 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5 * ffem / fem,
                                  fontStyle: FontStyle.italic,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              //MATERIAL BUTTON
                              margin: EdgeInsets.fromLTRB(0 * fem, 35 * fem, 0 * fem, 0 * fem),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffe51f43),
                                  minimumSize: Size(919 * fem, 125 * fem),
                                  elevation: 0,
                                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                                ),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MaterialDidatico()));
                                },
                                child: Text(
                                  'Material Didático',
                                  style: GoogleFonts.poppins(
                                    fontSize: 48 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5 * ffem / fem,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              //QUEST BUTTON
                              margin: EdgeInsets.fromLTRB(0 * fem, 35 * fem, 0 * fem, 0 * fem),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xffe51f43),
                                  minimumSize: Size(919 * fem, 125 * fem),
                                  elevation: 0,
                                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                                ),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Quest()));
                                },
                                child: Text(
                                  'Questionário',
                                  style: GoogleFonts.poppins(
                                    fontSize: 48 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5 * ffem / fem,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              //RA BUTTON
                              margin: EdgeInsets.fromLTRB(0 * fem, 35 * fem, 0 * fem, 0 * fem),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xffe51f43),
                                  minimumSize: Size(919 * fem, 125 * fem),
                                  elevation: 0,
                                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                                ),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const BXModelo()));
                                },
                                child: Text(
                                  'Visualizar Projeto',
                                  style: GoogleFonts.poppins(
                                    fontSize: 48 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5 * ffem / fem,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
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
