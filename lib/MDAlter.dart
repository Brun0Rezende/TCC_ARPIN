import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'HomePage.dart';
import 'UserProfile.dart';

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
              // materialdidaticoalterZvF (301:102)
              width: double.infinity,
              height: 2400 * fem,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // texto1HrF (301:103)
                    left: 111.5 * fem,
                    top: 50 * fem,
                    child: Align(
                      child: SizedBox(
                        child: Text(
                          'texto 1:',
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
                    // oqueumardunoMr7 (301:104)
                    left: 113 * fem,
                    top: 225 * fem,
                    child: Align(
                      child: SizedBox(
                        child: Text(
                          '1 - O que é um Arduíno?',
                          style: GoogleFonts.poppins(
                            fontSize: 52 * ffem,
                            fontWeight: FontWeight.w300,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // arduinoumaplataformadeprototip (301:105)
                    left: 111 * fem,
                    top: 375 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 859 * fem,
                        height: 1350 * fem,
                        child: Text(
                          'Arduino é uma plataforma de prototipagem eletrônica de código aberto que combina hardware e software. É composto por uma placa de desenvolvimento que possui um microcontrolador e uma interface de programação, permitindo que os usuários criem e controlem dispositivos interativos.\nA placa Arduino possui pinos de entrada e saída que podem ser conectados a uma variedade de componentes eletrônicos, como sensores, LEDs, motores e outros dispositivos. Esses componentes podem ser programados usando a linguagem de programação Arduino, que é baseada em C/C++ simplificado.\nO objetivo do Arduino é facilitar o processo de criação de projetos eletrônicos para pessoas sem um amplo conhecimento técnico. Com uma comunidade ativa e recursos online, é possível encontrar uma ampla gama de projetos, tutoriais e bibliotecas prontas para uso, facilitando o desenvolvimento de ideias criativas e inovadoras. O Arduino é amplamente utilizado em áreas como robótica, automação residencial, arte interativa, educação e muitos outros campos.',
                          style: GoogleFonts.poppins(
                            fontSize: 52 * ffem,
                            fontWeight: FontWeight.w300,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // autogroupt1p5ie3 (4s1g9DFjea4dxjQyq6t1P5)
                    left: 60 * fem,
                    top: 1800 * fem,
                    child: Container(
                      width: 919 * fem,
                      height: 124.63 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xffe51f43),
                        borderRadius: BorderRadius.circular(50 * fem),
                      ),
                      child: Center(
                        child: Text(
                          'Proximo',
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
                    // tituloB1q (301:116)
                    left: 111 * fem,
                    top: 150 * fem,
                    child: Align(
                      child: SizedBox(
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
                    ),
                  ),
                  Positioned(
                    // conteudoGJB (301:117)
                    left: 111 * fem,
                    top: 300 * fem,
                    child: Align(
                      child: SizedBox(
                        child: Text(
                          'Conteudo:',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 52 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff000000),
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
