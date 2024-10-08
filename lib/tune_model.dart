
import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';

class Tunes{

  final  Color color;
  final String sound;

  Tunes({required this.color, required this.sound});

  void playSound(){
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }

}