import 'package:flutter/material.dart';
import 'package:tunes_app/component.dart';
import 'package:tunes_app/tune_model.dart';

class TunesHome extends StatelessWidget {
  TunesHome({super.key});

  List<Tunes> tunes = [
    Tunes(color: const Color(0xfff44336), sound: 'note1.wav'),
    Tunes(color: const Color(0xfff89800), sound: 'note2.wav'),
    Tunes(color: const Color(0xfffeeb3b), sound: 'note3.wav'),
    Tunes(color: const Color(0xff4caf50), sound: 'note4.wav'),
    Tunes(color: const Color(0xff2f9688), sound: 'note5.wav'),
    Tunes(color: const Color(0xff2896f3), sound: 'note6.wav'),
    Tunes(color: const Color(0xff9c27b0), sound: 'note7.wav'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff253238),
        title: const Text(
          'Tunes App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
      body: Column(
        children: tunes
            .map((e) => TuneItem(
                  tune: e,

                ))
            .toList(),
      ),
    );
  }
}
