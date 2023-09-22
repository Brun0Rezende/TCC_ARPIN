import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'HomePage.dart';

void main() {
  runApp(
    MaterialApp(
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: UserProfile(),
      ),
    ),
  );
}

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[],
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
              // perfildeusuarioAh5 (207:58)
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupn3ovcBh (4s1oD6K76jYviN91mgn3oV)
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // user1hyq (207:59)
                          margin: EdgeInsets.fromLTRB(0 * fem, 50 * fem, 0 * fem, 40 * fem),
                          width: 350 * fem,
                          height: 350 * fem,
                          child: Image.asset(
                            'assets/images/user.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          // autogrouphdg3Ruq (4s1ncGynUvPaho1dtFHDg3)
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              'Usuario1011',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 54 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.5 * ffem / fem,
                                fontStyle: FontStyle.italic,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(50 * fem, 100 * fem, 0 * fem, 0 * fem),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Feitos:',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 54 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.5 * ffem / fem,
                                fontStyle: FontStyle.italic,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(25 * fem, 0 * fem, 0 * fem, 50 * fem),
                          height: 400 * fem,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              SizedBox(
                                width: 400 * fem,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return Dialog(
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)), //this right here
                                                child: Container(
                                                  height: 800 * fem,
                                                  width: 800 * fem,
                                                  child: ListView(children: [
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(0 * fem, 50 * fem, 0 * fem, 0 * fem),
                                                      child: Text(
                                                        'Somente o Necessario',
                                                        textAlign: TextAlign.center,
                                                        style: GoogleFonts.poppins(
                                                          fontSize: 64 * ffem,
                                                          fontWeight: FontWeight.w600,
                                                          height: 1.5 * ffem / fem,
                                                          fontStyle: FontStyle.italic,
                                                          color: Color(0xff000000),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(200 * fem, 50 * fem, 0 * fem, 25 * fem),
                                                      height: 400 * fem,
                                                      child: ListView(
                                                        scrollDirection: Axis.horizontal,
                                                        children: [
                                                          SizedBox(
                                                            width: 400 * fem,
                                                            child: Padding(
                                                              padding: const EdgeInsets.all(8.0),
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
                                                                    'assets/images/layers.png',
                                                                    fit: BoxFit.cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Center(
                                                      // aprendaacontrolarledscomfacili (255:12)
                                                      child: Container(
                                                        margin: EdgeInsets.fromLTRB(13 * fem, 0 * fem, 0 * fem, 100 * fem),
                                                        constraints: BoxConstraints(
                                                          maxWidth: 400 * fem,
                                                        ),
                                                        child: Text(
                                                          'Conclua todos os tutoriais de Conceitos Basicos',
                                                          textAlign: TextAlign.center,
                                                          style: GoogleFonts.poppins(
                                                            fontSize: 45 * ffem,
                                                            fontWeight: FontWeight.w300,
                                                            height: 1.5 * ffem / fem,
                                                            color: Color(0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ]),
                                                ));
                                          });
                                    },
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
                                          'assets/images/layers.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 400 * fem,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return Dialog(
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)), //this right here
                                                child: Container(
                                                  height: 800 * fem,
                                                  width: 800 * fem,
                                                  child: ListView(children: [
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(0 * fem, 50 * fem, 0 * fem, 0 * fem),
                                                      child: Text(
                                                        'Que Haja Luz',
                                                        textAlign: TextAlign.center,
                                                        style: GoogleFonts.poppins(
                                                          fontSize: 64 * ffem,
                                                          fontWeight: FontWeight.w600,
                                                          height: 1.5 * ffem / fem,
                                                          fontStyle: FontStyle.italic,
                                                          color: Color(0xff000000),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(200 * fem, 50 * fem, 0 * fem, 25 * fem),
                                                      height: 400 * fem,
                                                      child: ListView(
                                                        scrollDirection: Axis.horizontal,
                                                        children: [
                                                          SizedBox(
                                                            width: 400 * fem,
                                                            child: Padding(
                                                              padding: const EdgeInsets.all(8.0),
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
                                                        ],
                                                      ),
                                                    ),
                                                    Center(
                                                      // aprendaacontrolarledscomfacili (255:12)
                                                      child: Container(
                                                        margin: EdgeInsets.fromLTRB(13 * fem, 0 * fem, 0 * fem, 100 * fem),
                                                        constraints: BoxConstraints(
                                                          maxWidth: 400 * fem,
                                                        ),
                                                        child: Text(
                                                          'Conclua o tutorial do LED',
                                                          textAlign: TextAlign.center,
                                                          style: GoogleFonts.poppins(
                                                            fontSize: 45 * ffem,
                                                            fontWeight: FontWeight.w300,
                                                            height: 1.5 * ffem / fem,
                                                            color: Color(0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ]),
                                                ));
                                          });
                                    },
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
                            ],
                          ),
                        ),
                        Container(
                          // line3nxf (264:59)
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 28 * fem),
                          width: 1040 * fem,
                          height: 1 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xff000000),
                          ),
                        ),
                        Container(
                          // configuraes7zw (264:57)
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 35 * fem),
                          child: Center(
                            child: Text(
                              'Configurações',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 48 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.5 * ffem / fem,
                                fontStyle: FontStyle.italic,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupfwm9pPZ (4s1njwRgb8zPHmyepJfwM9)
                          margin: EdgeInsets.fromLTRB(72 * fem, 0 * fem, 74 * fem, 35 * fem),
                          width: double.infinity,
                          height: 114 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffe51f43),
                            borderRadius: BorderRadius.circular(50 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'Conta',
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
                          // autogroupufy35aP (4s1nrmZdrmSMwdVQWvUfY3)
                          margin: EdgeInsets.fromLTRB(72 * fem, 0 * fem, 74 * fem, 50 * fem),
                          width: double.infinity,
                          height: 114 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffe51f43),
                            borderRadius: BorderRadius.circular(50 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'Armazenamento',
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
                          // autogroupsdjfkAj (4s1nwgb7bqjdwzG9z2SDJf)
                          margin: EdgeInsets.fromLTRB(72 * fem, 0 * fem, 74 * fem, 35 * fem),
                          width: double.infinity,
                          height: 114 * fem,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffe52043)),
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(50 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'Sair da Conta',
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
                        Container(
                          // autogrouprxgfPjV (4s1o3GG9caxNhebWqUrxGF)
                          margin: EdgeInsets.fromLTRB(72 * fem, 0 * fem, 74 * fem, 0 * fem),
                          width: double.infinity,
                          height: 114 * fem,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffe52043)),
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(50 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'Excluir Conta',
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
