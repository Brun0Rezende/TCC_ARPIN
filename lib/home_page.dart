import 'package:ar_pin/baixar_modelo.dart';
import 'package:ar_pin/codigo.dart';
import 'package:ar_pin/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'tutoriais/tutorial.dart';
import 'modelos_disponiveis.dart';
import 'user_profile.dart';
import 'admin/tutorial/tutorial_alter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AdminPermissions admin = AdminPermissions();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FutureBuilder(
          future: admin.checkUserPermissions(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const ScaffoldMessenger(child: Text("Carregando..."));
            }
            if (snapshot.data == true) {
              return admin.adminFloatingActionButton(
                context,
              );
            }
            return const SizedBox();
          }),
      appBar: AppBar(
        elevation: 1,
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
            iconSize: 40,
            onPressed: null,
            icon: Image.asset('assets/images/led.png')),
        centerTitle: true,
        leading: IconButton(
            onPressed: null, icon: Image.asset('assets/images/White.png')),
      ),
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double baseWidth = 1050;
          double fem = constraints.maxWidth / baseWidth;
          double ffem = fem * 0.97;

          return SingleChildScrollView(
            child: Column(children: [
              _basicos(fem, ffem),
              _componentes(fem, ffem),
              //_codigo(fem, ffem),
              _button(fem, ffem),
            ]),
          );
        },
      ),
    );
  }

  _basicos(double fem, double ffem) {
    return Column(
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
                color: const Color(0xff000000),
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
                        margin: EdgeInsets.fromLTRB(
                            100 * fem, 100 * fem, 100 * fem, 100 * fem),
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
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Tutorial(
                                idTutorial: "eletricidade",
                              )));
                    },
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
                        margin: EdgeInsets.fromLTRB(
                            100 * fem, 100 * fem, 100 * fem, 100 * fem),
                        child: Image.asset(
                          'assets/images/eletricidade.png',
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
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Tutorial(
                                idTutorial: "cabos",
                              )));
                    },
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
                        margin: EdgeInsets.fromLTRB(
                            100 * fem, 100 * fem, 100 * fem, 100 * fem),
                        child: Image.asset(
                          'assets/images/cabos.png',
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
      ],
    );
  }

  _componentes(double fem, double ffem) {
    return Column(
      children: [
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
                color: const Color(0xff000000),
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
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x82615b69),
                            offset: Offset(0 * fem, 7 * fem),
                            blurRadius: 8 * fem,
                          ),
                        ],
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Tutorial(
                                    idTutorial: "resistor",
                                  )));
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(
                              100 * fem, 100 * fem, 100 * fem, 100 * fem),
                          child: Image.asset(
                            'assets/images/resistor.png',
                            fit: BoxFit.cover,
                          ),
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
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Tutorial(
                                idTutorial: "led",
                              )));
                    },
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
                        margin: EdgeInsets.fromLTRB(
                            100 * fem, 100 * fem, 100 * fem, 100 * fem),
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
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Tutorial(
                                idTutorial: "buzzer",
                              )));
                    },
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
                        margin: EdgeInsets.fromLTRB(
                            100 * fem, 100 * fem, 100 * fem, 100 * fem),
                        child: Image.asset(
                          'assets/images/buzzer.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   width: 400 * fem,
              //   child: Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: InkWell(
              //       onTap: () {
              //         Navigator.of(context).push(MaterialPageRoute(
              //             builder: (context) => const Tutorial(
              //                   idTutorial: "arduino",
              //                 )));
              //       },
              //       child: Container(
              //         decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(50 * fem),
              //           color: const Color(0xffffffff),
              //           boxShadow: [
              //             BoxShadow(
              //               color: const Color(0x82615b69),
              //               offset: Offset(0 * fem, 7 * fem),
              //               blurRadius: 8 * fem,
              //             ),
              //           ],
              //         ),
              //         child: Container(
              //           margin: EdgeInsets.fromLTRB(
              //               100 * fem, 100 * fem, 100 * fem, 100 * fem),
              //           child: Image.asset(
              //             'assets/images/arduino.png',
              //             fit: BoxFit.cover,
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ],
    );
  }

  _codigo(double fem, double ffem) {
    return Column(
      children: [
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
                color: const Color(0xff000000),
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
                    onTap: () {
                      CodigoPage(text: """
  Exemplo de código para fazer um buzzer funcionar com Arduino: 
 
 
int pinoBuzzer = 9; 
 

Este comando define o pino do buzzer. 

 
void setup() { 
 
  pinMode(pinoBuzzer, OUTPUT); 
} 

 

Nesta linha, o pino do buzzer é inicializado como saída. 
 
void loop() { 
  // Gera um som de buzina curto 
  tone(pinoBuzzer, 1000); // Frequência de 1000Hz 
  delay(500);  // Aguarda meio segundo 
  noTone(pinoBuzzer); // Desliga o buzzer 
  delay(500);  // Aguarda meio segundo 
} 

 

Neste bloco de comandos, faremos o buzzer emitir um som em uma determinada frequência de Hz (Hertz) e definiremos o intervalo da emissão do som. 

 

Agora, vamos explicar o código linha por linha: 

int pinoBuzzer = 9;: Esta linha declara uma variável pinoBuzzer e atribui o valor 9 a ela, que é o pino que estamos usando para conectar o buzzer. Você pode escolher outro pino se desejar. 

void setup() {: A função setup() é executada uma vez no início do programa e é usada para inicializar as configurações iniciais. 

pinMode(pinoBuzzer, OUTPUT);: Configura o pino definido para o buzzer como saída, indicando que ele será usado para gerar um som. 

void loop() {: A função loop() é executada continuamente após o setup() e é onde a lógica principal para controlar o buzzer é implementada. 

tone(pinoBuzzer, 1000);: Usa a função tone() para gerar um som no buzzer conectado ao pinoBuzzer com uma frequência de 1000Hz (1kHz). Isso produzirá um som contínuo no buzzer. 

delay(500);: Aguarda meio segundo (500 milissegundos). 

noTone(pinoBuzzer);: Usa a função noTone() para desligar o som no buzzer. O buzzer ficará em silêncio após essa chamada. 

delay(500);: Aguarda meio segundo (500 milissegundos) antes de repetir o ciclo para gerar um som curto novamente. 

Neste código, estamos gerando um som contínuo no buzzer com uma frequência de 1kHz por meio da função tone(). Em seguida, paramos o som com a função noTone() e aguardamos um curto período de tempo antes de repetir o ciclo. Você pode personalizar a frequência e a duração do som alterando os valores na função tone() e nos comandos delay() para criar diferentes padrões sonoros. 

 
""",);
                    },
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
                        margin: EdgeInsets.fromLTRB(
                            100 * fem, 100 * fem, 100 * fem, 100 * fem),
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
                    onTap: () {
                      CodigoPage(text: """
Exemplo de código para simular um semáforo com Arduino: 
 
 
int pinoVermelho = 9; 
int pinoAmarelo = 10; 
int pinoVerde = 11; 
 

Estes comandos definem os pinos para os LEDs do semáforo. 

 
void setup() { 
   
  pinMode(pinoVermelho, OUTPUT); 
  pinMode(pinoAmarelo, OUTPUT); 
  pinMode(pinoVerde, OUTPUT); 
} 

 

Neste bloco de comandos, inicializamos os pinos dos LEDs como saídas. 
 
void loop() { 
 // Liga o LED vermelho (sinal de pare) 
  digitalWrite(pinoVermelho, HIGH); 
  digitalWrite(pinoAmarelo, LOW); 
  digitalWrite(pinoVerde, LOW); 
  delay(3000);  // Aguarda 3 segundos 
 
  // Liga o LED amarelo (preparando para a próxima etapa) 
  digitalWrite(pinoVermelho, LOW); 
  digitalWrite(pinoAmarelo, HIGH); 
  digitalWrite(pinoVerde, LOW); 
  delay(1000);  // Aguarda 1 segundo 
 
  // Liga o LED verde (sinal de siga em frente) 
  digitalWrite(pinoVermelho, LOW); 
  digitalWrite(pinoAmarelo, LOW); 
  digitalWrite(pinoVerde, HIGH); 
  delay(3000);  // Aguarda 3 segundos 
 
  // Liga o LED amarelo piscando (sinal de atenção) 
  digitalWrite(pinoVermelho, LOW); 
  digitalWrite(pinoAmarelo, LOW); 
  digitalWrite(pinoVerde, LOW); 
  delay(500);  // Aguarda meio segundo 
  digitalWrite(pinoAmarelo, LOW); 
  delay(500);  // Aguarda meio segundo 
} 

 

 

O comando digitalWrite Liga o LED, o comando delay define o intervalo de tempo em que o led liga ou desliga, sendo High para ligar e Low para desligar, seguido do comando  para ligar o LED vermelho (sinal de pare), os outros LEDS ficam desligados, seguido dos comandos para ligar o LED amarelo, nesta etapa, os LEDS vermelho e verde não são acionados, na sequência, é acionado o LED verde, somente o LED verde é acionado, e por último, o LED amarelo irá piscar em intervalos, sinalizando atenção. 

 

Agora, vamos explicar o código linha por linha: 

int pinoVermelho = 9;, int pinoAmarelo = 10;, int pinoVerde = 11;: São declarações de variáveis que associam os números dos pinos do Arduino aos LEDs de um semáforo. No exemplo, usamos os pinos 9, 10 e 11, mas você pode escolher pinos diferentes se desejar. 

void setup() {: A função setup() é executada uma vez no início do programa e é usada para inicializar as configurações iniciais. 

pinMode(pinoVermelho, OUTPUT);, pinMode(pinoAmarelo, OUTPUT);, pinMode(pinoVerde, OUTPUT);: Configura os pinos definidos para os LEDs como saídas, indicando que eles serão usados para controlar os LEDs. 

void loop() {: A função loop() é executada continuamente após o setup() e é onde a lógica principal do semáforo é implementada. 

digitalWrite(pinoVermelho, HIGH);, digitalWrite(pinoAmarelo, LOW);, digitalWrite(pinoVerde, LOW);: Liga o LED vermelho (sinal de "Pare") e desliga os LEDs amarelo e verde. O semáforo fica nessa condição por 3 segundos. 

digitalWrite(pinoVermelho, LOW);, digitalWrite(pinoAmarelo, HIGH);, digitalWrite(pinoVerde, LOW);: Liga o LED amarelo (preparando para a próxima etapa) e desliga os LEDs vermelho e verde. O semáforo fica nessa condição por 1 segundo. 

digitalWrite(pinoVermelho, LOW);, digitalWrite(pinoAmarelo, LOW);, digitalWrite(pinoVerde, HIGH);: Liga o LED verde (sinal de "Siga em frente") e desliga os LEDs vermelho e amarelo. O semáforo fica nessa condição por 3 segundos. 

digitalWrite(pinoVermelho, LOW);, digitalWrite(pinoAmarelo, LOW);, digitalWrite(pinoVerde, LOW);: Desliga todos os LEDs, simulando um estado de atenção piscando. O semáforo fica nessa condição, alternando entre os estados baixo e alto a cada 0,5 segundos. 

 

Este código é uma representação simples de um semáforo. Você pode personalizá-lo ou adicionar mais funcionalidades, como sensores para detecção de veículos ou temporizadores para ajustar os tempos de exibição de cada sinal. 

 


""",);
                    },
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
                        margin: EdgeInsets.fromLTRB(
                            100 * fem, 100 * fem, 100 * fem, 100 * fem),
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
                    onTap: () {
                      CodigoPage(
                        text: """
Exemplo de código para ligar e desligar um LED: 
 
 int pinoLED = 13; 
 

Este comando define o pino digital onde o LED está conectado. 
 
void setup() { 
   
  pinMode(pinoLED, OUTPUT); 
} 
 

Nesta linha, inicializamos o pino do LED como uma saída. 

 
void loop() { 
  
  digitalWrite(pinoLED, HIGH); 
  delay(1000); // Espera por 1 segundo (1000 milissegundos) 
 
  // Desliga o LED 
  digitalWrite(pinoLED, LOW); 
  delay(1000); // Espera por 1 segundo (1000 milissegundos) 
} 
 

O comando digitalWrite Liga o LED, o comando delay define o intervalo de tempo em que o led liga ou desliga, sendo High para ligar e Low para desligar. 

 

Agora, vamos explicar o código linha por linha: 

int pinoLED = 13;: Declara uma variável inteira chamada pinoLED e atribui o valor 13. Isso define o pino digital do Arduino ao qual o LED está conectado. 

void setup() {: O Arduino executa o código dentro da função setup() uma vez no início. Esta função é usada para inicializar configurações. 

pinMode(pinoLED, OUTPUT);: Configura o pino definido como pinoLED como uma saída, indicando que ele será usado para controlar um dispositivo externo, como um LED. 

void loop() {: O Arduino executa o código dentro da função loop() repetidamente após o setup() terminar. Esta é a parte principal do programa, onde a lógica do projeto é implementada. 

digitalWrite(pinoLED, HIGH);: Define o pino pinoLED como HIGH (alto), ligando o LED. Quando o pino está configurado como HIGH, ele fornece uma tensão positiva. 

delay(1000);: Espera por 1000 milissegundos (1 segundo) antes de continuar para o próximo comando. Isso mantém o LED ligado por 1 segundo. 

digitalWrite(pinoLED, LOW);: Define o pino pinoLED como LOW (baixo), desligando o LED. Quando o pino está configurado como LOW, ele fornece uma tensão zero. 

delay(1000);: Espera por mais 1000 milissegundos (1 segundo) antes de continuar para o próximo comando. Isso mantém o LED desligado por 1 segundo. 

O ciclo se repete indefinidamente, ligando e desligando o LED a cada segundo. Isso cria um efeito de piscar. O conceito principal aqui é o uso das funções digitalWrite() para controlar a saída de um pino digital e a função delay() para criar pausas. Este é um exemplo simples de como você pode controlar componentes eletrônicos usando o Arduino. 

 
""",
                      );
                    },
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
                        margin: EdgeInsets.fromLTRB(
                            100 * fem, 100 * fem, 100 * fem, 100 * fem),
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
      ],
    );
  }

  _button(double fem, double ffem) {
    return FutureBuilder(
      future: admin.checkUserPermissions(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const CircularProgressIndicator(
            color: Color(0xffe51f43),
          );
        }

        //if (snapshot.data == true) {
        return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            margin: EdgeInsets.fromLTRB(0 * fem, 100 * fem, 0 * fem, 0 * fem),
            child: SizedBox(
              width: 200 * fem,
              height: 200 * fem,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  //testar se dá certo ou primary color
                  backgroundColor: const Color(0xffe51f43),
                  elevation: 5,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BXModelo()));
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
        ]);
      },
    );
  }
}
