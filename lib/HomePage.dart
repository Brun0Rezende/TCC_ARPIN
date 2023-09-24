import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Tutorial.dart';
import 'ModelosDIsp.dart';
import 'UserProfile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserProfile()));
              },
              icon: Image.asset('assets/images/user.png')),
        ],
        title: IconButton(onPressed: null, icon: Image.asset('assets/images/led.png')),
        centerTitle: true,
        leading: IconButton(onPressed: null, icon: Image.asset('assets/images/White.png')),
      ),
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double baseWidth = 1050;
          double fem = constraints.maxWidth / baseWidth;
          double ffem = fem * 0.97;

          return Container(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      //LIST VIEW 'BASICOS'
                      Container(
                        margin: EdgeInsets.fromLTRB(50 * fem, 100 * fem, 0 * fem, 0 * fem),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Conceitos Basicos',
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
                        margin: EdgeInsets.fromLTRB(25 * fem, 0 * fem, 0 * fem, 0 * fem),
                        height: 400 * fem,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
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
                                        'assets/images/cube.png',
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
                                        'assets/images/thunder.png',
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
                                        'assets/images/resistor.png',
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
                      //LIST VIEW 'COMPONENTE'
                      Container(
                        margin: EdgeInsets.fromLTRB(50 * fem, 100 * fem, 0 * fem, 0 * fem),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Componentes',
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
                        margin: EdgeInsets.fromLTRB(25 * fem, 0 * fem, 0 * fem, 0 * fem),
                        height: 400 * fem,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
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
                                        'assets/images/resistor.png',
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
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Tutorial()));
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
                                        'assets/images/buzzer.png',
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
                      //LIST VIEW 'CODIGO'
                      Container(
                        margin: EdgeInsets.fromLTRB(50 * fem, 100 * fem, 0 * fem, 0 * fem),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Código',
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
                        margin: EdgeInsets.fromLTRB(25 * fem, 0 * fem, 0 * fem, 0 * fem),
                        height: 400 * fem,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
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
                                        'assets/images/text.png',
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
                                        'assets/images/text.png',
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
                                        'assets/images/text.png',
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
                      //BOTÃO RA
                      Container(
                        margin: EdgeInsets.fromLTRB(0 * fem, 100 * fem, 0 * fem, 0 * fem),
                        child: SizedBox(
                          width: 200 * fem,
                          height: 200 * fem,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xffe51f43),
                              minimumSize: Size(919 * fem, 125 * fem),
                              elevation: 5,
                              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                            ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ModelDisp()));
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Color(0xffe51f43),
                              ),
                              child: Image.asset(
                                'assets/images/camera.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
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
