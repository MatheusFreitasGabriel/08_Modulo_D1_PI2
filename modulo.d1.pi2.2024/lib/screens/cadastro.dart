import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modulodum/globals/cores.dart';
import 'package:modulodum/screens/endere%C3%A7o.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  Cores cores = Cores();
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Row(
              children: [
                Container(
                  width: size.width / 2,
                  height: size.height,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(24),
                  color: cores.branco,
                  child: Image.asset(
                    "assets/Edu_Logo_Light1.png",
                    width: size.width,
                    height: 300,
                  ),
                ),
                Container(
                  width: size.width / 2,
                  height: size.height,
                  padding: EdgeInsets.all(24),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    cores.roxoClaro,
                    cores.roxo,
                    cores.roxoEscuro
                  ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 148,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Nome Completo",
                              style: GoogleFonts.montserrat(
                                  fontSize: 16, color: cores.branco),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.user,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                SizedBox(
                                  width: size.width / 2 - 100,
                                  height: 56,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: cores.branco,
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: cores.roxoClaro)),
                                        disabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: cores.roxoClaro)),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: cores.roxoClaro)),
                                        errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: cores.roxoClaro))),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Data De Nascimento",
                              style: GoogleFonts.montserrat(
                                  fontSize: 16, color: cores.branco),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.calendarDays,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                SizedBox(
                                  width: size.width / 2 - 100,
                                  height: 56,
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: cores.branco,
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: cores.roxoClaro)),
                                        disabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: cores.roxoClaro)),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: cores.roxoClaro)),
                                        errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: cores.roxoClaro))),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "E-mail",
                              style: GoogleFonts.montserrat(
                                  fontSize: 16, color: cores.branco),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.envelope,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                SizedBox(
                                  width: size.width / 2 - 100,
                                  height: 56,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: cores.branco,
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: cores.roxoClaro)),
                                        disabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: cores.roxoClaro)),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: cores.roxoClaro)),
                                        errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: cores.roxoClaro))),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Senha",
                              style: GoogleFonts.montserrat(
                                  fontSize: 16, color: cores.branco),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.lock,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                SizedBox(
                                  width: size.width / 2 - 100,
                                  height: 56,
                                  child: TextField(
                                    obscureText: obscure,
                                    decoration: InputDecoration(
                                        suffixIcon: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              obscure = !obscure;
                                            });
                                          },
                                          icon: Icon(
                                            obscure
                                                ? FontAwesomeIcons.eyeSlash
                                                : FontAwesomeIcons.eye,
                                            color: cores.roxo,
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: cores.branco,
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: cores.roxoClaro)),
                                        disabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: cores.roxoClaro)),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: cores.roxoClaro)),
                                        errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: cores.roxoClaro))),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Confirme Sua Senha",
                              style: GoogleFonts.montserrat(
                                  fontSize: 16, color: cores.branco),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.lock,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                SizedBox(
                                  width: size.width / 2 - 100,
                                  height: 56,
                                  child: TextField(
                                    obscureText: obscure,
                                    decoration: InputDecoration(
                                        suffixIcon: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              obscure = !obscure;
                                            });
                                          },
                                          icon: Icon(
                                            obscure
                                                ? FontAwesomeIcons.eyeSlash
                                                : FontAwesomeIcons.eye,
                                            color: cores.roxo,
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: cores.branco,
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: cores.roxoClaro)),
                                        disabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: cores.roxoClaro)),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: cores.roxoClaro)),
                                        errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: cores.roxoClaro))),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        SizedBox(
                          height: 56,
                          width: 500,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  backgroundColor: Colors.white),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Endereco()));
                              },
                              child: Text(
                                "Prosseguir",
                                style: GoogleFonts.montserrat(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: cores.roxo),
                              )),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              child: Container(
                width: size.width - 100,
                margin: EdgeInsets.symmetric(horizontal: 48),
                height: 100,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: cores.preto.withOpacity(0.3),
                        blurRadius: 20,
                        spreadRadius: 0)
                  ],
                  borderRadius: BorderRadius.circular(24),
                  color: cores.branco,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: cores.preto,
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          "Dados iniciais",
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: cores.preto),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: cores.preto.withOpacity(0.5),
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          "Características do aluno",
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: cores.preto),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: cores.preto.withOpacity(0.5),
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          "Foto",
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: cores.preto),
                        )
                      ],
                    )
                  ],
                ),
              ),
              top: 24,
            ),
          ],
        ),
      ),
    );
  }
}
