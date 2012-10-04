PShape svg;
PShape ring;
PShape mask1;
void setup() {
  size(960, 540);
  svg = loadShape("baselove.svg");
  ring = svg.getChild("ring1");
  mask1 = svg.getChild("mask1");
  image(img, 0, 0);
  smooth();
}



void draw() {
  shape(mask1,0,0);
  ring.disableStyle();
  //fill(145,203,0);
  //shape(ring, 0, 0);
}
