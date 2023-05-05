import 'package:flutter/material.dart';
import 'package:flutter_application/acakdadu.dart';

var globalStartAligment = Alignment.topRight;
var globalEndtAligment = Alignment.bottomRight;
// Alignment? globalStartAligment; (di inisialisasi variable = null)
// catatan jika mengunakan unnderscore maka harus menambahkan
// ( ignore: non_constant_identifier_names )
// karna variable tidak di temukan

class WarnaGradien extends StatelessWidget {
  const WarnaGradien(this.warna1, this.warna2, {super.key});

  final Color warna1;
  final Color warna2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: globalStartAligment,
          end: globalEndtAligment,
          colors: [warna1, warna2],
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
