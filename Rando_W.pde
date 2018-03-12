
Walker[] w;
int x, y;

void setup() {
  frameRate(120);
  strokeWeight(3);
  size(1280,800);
    smooth(1000000);
    w = new Walker[7500];  
  for (int i = 0; i < 7500; i++){
 w[i] = new Walker();
 }

}
void draw() {
 for (int i = 0; i < 7500; i++) {
 w[i].update();
 }
}
class Walker {
  int x, y;
  color c;
   Walker() {
     x = 640;
     y = 400;
     c = color(random(200),random(0),random(50));
   }
  void update() {
    stroke(c);
     x = x + floor(random(-2,3));
   y = y + floor(random(-2,3));
   fill(c);
  ellipse(x,y,2,2);
 }
}