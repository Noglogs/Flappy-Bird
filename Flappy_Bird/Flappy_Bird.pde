Bird b;
Pipe p;
PImage bg;

void setup() {
  size(288, 512);
  noStroke();
  bg = loadImage("background-day.png");

  b = new Bird();
  p = new Pipe();
}

void draw() {
  background(bg);
    
  b.render();
  b.update();
  p.render();
}

void keyPressed() {
  if (key == ' ') {
    b.flap();
  }
}

void keyReleased() {
  if (!b.ready2flap) {
    b.ready2flap = true;
  }
}
