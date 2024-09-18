// extension to get price becore discount by a random fixed value (100, 200, 300, 400, or 500)

import 'dart:math';

extension PriceIncreaseExtension on num {
  num get randomIncreasedPrice {
    int randomFactor = Random().nextInt(5) + 1;

    int increment = randomFactor * 100;

    return this + increment;
  }
}
