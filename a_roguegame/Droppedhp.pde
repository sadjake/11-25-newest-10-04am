class DroppedHealth extends GameObject {

  int type;
  color c;

  DroppedHealth(float x, float y, int _rx, int _ry) {
    type = HEALTH;
    HEALTHPOINTS = HEALTHPOINTS + 1;
    location = new PVector(x, y);
    velocity = new PVector(0, 0);
    size = 20;
    rx= _rx;
    ry= _ry;
    c = RED;
  }

  void show() {
    stroke(BLACK);
    strokeWeight(2);
    fill(c);
    circle(location.x, location.y, size);
  }
  
  void act() {
  }
}
