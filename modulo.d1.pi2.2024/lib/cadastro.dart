import 'package:flutter/material.dart';
import 'package:modulodum/globals/cores.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
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
            Positioned(
              child: Container(
                width: size.width,
                margin: EdgeInsets.all(24),
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: cores.branco,
                ),
              ),
              top: 24,
            ),
            Row(
              children: [
                Container(
                  width: size.width / 2,
                  height: size.height,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(24),
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
                  child: Column(
                    children: [],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
