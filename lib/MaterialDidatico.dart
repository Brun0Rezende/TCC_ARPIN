import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'HomePage.dart';
import 'Quest.dart';
import 'UserProfile.dart';

class MaterialDidatico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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

          return Container(
            child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                  decoration: const BoxDecoration(
                    color: Color(0xffffffff),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        //TITULO
                        margin: EdgeInsets.fromLTRB(0 * fem, 25 * fem, 0 * fem, 25 * fem),
                        child: Text(
                          'LED',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 112 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            fontStyle: FontStyle.italic,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      StickyHeader(
                        //StickyHeader FIXA A HEADER NO TOPO DA TELA DURANTE O SCROLL DE UM CONTEUDO
                        header: Container(
                          //SUBTITULO
                          color: const Color(0xffffffff),
                          height: 150 * fem,
                          width: 860 * fem,
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 25 * fem),
                          child: Center(
                            child: Text(
                              '1 - O que é um Arduíno?',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 64 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        content: Container(
                          //CONTEUDO
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 50 * fem),
                          width: 859 * fem,
                          child: Text(
                            'Arduino é uma plataforma de prototipagem eletrônica de código aberto que combina hardware e software. É composto por uma placa de desenvolvimento que possui um microcontrolador e uma interface de programação, permitindo que os usuários criem e controlem dispositivos interativos.\nA placa Arduino possui pinos de entrada e saída que podem ser conectados a uma variedade de componentes eletrônicos, como sensores, LEDs, motores e outros dispositivos. Esses componentes podem ser programados usando a linguagem de programação Arduino, que é baseada em C/C++ simplificado.\nO objetivo do Arduino é facilitar o processo de criação de projetos eletrônicos para pessoas sem um amplo conhecimento técnico. Com uma comunidade ativa e recursos online, é possível encontrar uma ampla gama de projetos, tutoriais e bibliotecas prontas para uso, facilitando o desenvolvimento de ideias criativas e inovadoras. O Arduino é amplamente utilizado em áreas como robótica, automação residencial, arte interativa, educação e muitos outros campos.',
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.poppins(
                              fontSize: 56 * ffem,
                              fontWeight: FontWeight.w300,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      StickyHeader(
                        header: Container(
                          //SUBTITULO
                          color: const Color(0xffffffff),
                          height: 150 * fem,
                          width: 860 * fem,
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 25 * fem),
                          child: Center(
                            child: Text(
                              '2 - Comunidade Arduino',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 64 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        content: Container(
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 50 * fem),
                          width: 900 * fem,
                          child: Text(
                            'Uma das características marcantes do Arduino é a sua acessibilidade. Desde estudantes e entusiastas até profissionais experientes, todos podem se beneficiar da plataforma. As escolas têm adotado o Arduino como uma ferramenta educacional, introduzindo os conceitos de eletrônica e programação de maneira intuitiva e prática. Isso desempenhou um papel crucial no desenvolvimento das habilidades técnicas das gerações mais jovens e no fomento à criatividade.\nA comunidade Arduino continua a ser um dos pilares da plataforma. Fóruns online, grupos de discussão e redes sociais são locais onde os desenvolvedores podem compartilhar suas ideias, solucionar problemas e colaborar em projetos conjuntos. A vasta coleção de bibliotecas e exemplos disponíveis online simplifica a criação de protótipos, permitindo que os criadores explorem novos territórios da eletrônica sem ter que começar do zero.',
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.poppins(
                              fontSize: 56 * ffem,
                              fontWeight: FontWeight.w300,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              //QUEST BUTTON
                              margin: EdgeInsets.fromLTRB(0 * fem, 35 * fem, 0 * fem, 50 * fem),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xffe51f43),
                                  minimumSize: Size(919 * fem, 125 * fem),
                                  elevation: 0,
                                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                                ),
                                onPressed: () {
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Quest()));
                                },
                                child: Text(
                                  'Proximo',
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
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
