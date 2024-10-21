import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:modulodum/screens/cadastro.dart';
import 'package:modulodum/screens/foto.dart';

import '../globals/cores.dart';

class Endereco extends StatefulWidget {
  const Endereco({super.key});

  @override
  State<Endereco> createState() => _EnderecoState();
}

class _EnderecoState extends State<Endereco> {
  Cores cores = Cores();
  bool obscure = true;
  TextEditingController cidade = TextEditingController();
  TextEditingController estado = TextEditingController();
  TextEditingController cep = TextEditingController();
  bool value = true;
  Future<void> getViaCep() async {
    var response =
        await http.get(Uri.parse("https://viacep.com.br/ws/${cep.text}/json/"));
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      setState(() {
        cidade.text = jsonData["localidade"];
        estado.text = jsonData["uf"];
      });
    }
  }

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
                              "CEP",
                              style: GoogleFonts.montserrat(
                                  fontSize: 16, color: cores.branco),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            SizedBox(
                              width: size.width / 2,
                              height: 56,
                              child: TextField(
                                onEditingComplete: () {
                                  getViaCep();
                                },
                                controller: cep,
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: cores.branco,
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(24),
                                        borderSide: BorderSide(
                                            width: 2, color: cores.roxoClaro)),
                                    disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(24),
                                        borderSide: BorderSide(
                                            width: 2, color: cores.roxoClaro)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(24),
                                        borderSide: BorderSide(
                                            width: 2, color: cores.roxoClaro)),
                                    errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(24),
                                        borderSide: BorderSide(
                                            width: 2, color: cores.roxoClaro))),
                              ),
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
                              "Endereço",
                              style: GoogleFonts.montserrat(
                                  fontSize: 16, color: cores.branco),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            SizedBox(
                              width: size.width / 2,
                              height: 56,
                              child: TextField(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: cores.branco,
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(24),
                                        borderSide: BorderSide(
                                            width: 2, color: cores.roxoClaro)),
                                    disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(24),
                                        borderSide: BorderSide(
                                            width: 2, color: cores.roxoClaro)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(24),
                                        borderSide: BorderSide(
                                            width: 2, color: cores.roxoClaro)),
                                    errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(24),
                                        borderSide: BorderSide(
                                            width: 2, color: cores.roxoClaro))),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Cidade",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 16, color: cores.branco),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                SizedBox(
                                  width: size.width / 4 - 24,
                                  height: 56,
                                  child: TextField(
                                    controller: cidade,
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
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Estado",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 16, color: cores.branco),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                SizedBox(
                                  width: size.width / 4 - 24,
                                  height: 56,
                                  child: TextField(
                                    controller: estado,
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
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          "*Autorizo o compartilhamento dos meus dados para fins estatísticos?",
                          style: GoogleFonts.montserrat(
                              fontSize: 16, color: Colors.white),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Radio(
                                  activeColor: Colors.white,
                                  value: value,
                                  groupValue: "sim",
                                  onChanged: (value) {},
                                ),
                                Text(
                                  "Sim",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                  activeColor: Colors.white,
                                  value: value,
                                  groupValue: "Não",
                                  onChanged: (value) {},
                                ),
                                Text(
                                  "Não",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 56,
                              width: 250,
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
                                            builder: (context) => Cadastro()));
                                  },
                                  child: Text(
                                    "Voltar",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red),
                                  )),
                            ),
                            SizedBox(
                              height: 56,
                              width: 250,
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
                                            builder: (context) => Foto()));
                                  },
                                  child: Text(
                                    "Prosseguir",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: cores.roxo),
                                  )),
                            ),
                          ],
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
                            color: cores.preto,
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
