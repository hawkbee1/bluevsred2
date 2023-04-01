import 'package:audioplayers/audioplayers.dart';
import 'package:bluevsred2/game/game.dart';
import 'package:bluevsred2/gen/assets.gen.dart';
import 'package:flame/components.dart';
import 'package:flame_behaviors/flame_behaviors.dart';

class TappingBehavior extends TappableBehavior<Unicorn>
    with HasGameRef<VeryGoodFlameGame> {
  @override
  bool onTapDown(TapDownInfo info) {
    if (parent.isAnimationPlaying()) {
      return true;
    }
    gameRef.counter++;
    parent.playAnimation();

    gameRef.effectPlayer.play(AssetSource(Assets.audio.effect));

    return false;
  }
}
