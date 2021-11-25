class ShotGun extends Weapon {

  ShotGun() {
    super(50, 5);
  }

  void shoot() {
    if (shotTimer >= threshold) {
      for (int i = 0; i < 30; i++) {
        PVector aimVector = new PVector(mouseX-myHero.location.x, mouseY-myHero.location.y);
        aimVector.rotate(random(-PI - 20, PI + 40));
        aimVector.setMag(8);
        myObjects.add(new Bullet(aimVector, DARKBLUE, 10, 10));
      }
      shotTimer = 0;
    }
  }
}
