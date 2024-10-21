import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modulodum/globals/cores.dart';

class Foto extends StatefulWidget {
  const Foto({super.key});

  @override
  State<Foto> createState() => _FotoState();
}

class _FotoState extends State<Foto> {
  Cores cores = Cores();
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
                    height: 301,
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
                  child: Column(
                    children: [
                      SizedBox(
                        height: 148,
                      ),
                      Text(
                        "Faça upload da foto",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                      FaIcon(
                        FontAwesomeIcons.image,
                        size: 500,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 56,
                            width: size.width / 4 - 100,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    backgroundColor: Colors.white),
                                child: Text(
                                  "Voltar",
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.red),
                                )),
                          ),
                          SizedBox(
                            height: 56,
                            width: size.width / 4 - 100,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    backgroundColor: Colors.white),
                                child: Text(
                                  "Salvar",
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: cores.roxoClaro),
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                ),
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
                            color: cores.preto.withOpacity(0.5),
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
                            color: cores.preto,
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
