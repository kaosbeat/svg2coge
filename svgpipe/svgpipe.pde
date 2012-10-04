PShape svg;
PShape ring;
PShape hearts;
void setup() {
  size(960, 540);
  svg = loadShape("baselove.svg");
  ring = svg.getChild("circles");
  hearts = svg.getChild("hearts");
  smooth();
}



void draw() {
  shape(svg,0,0);
  ring.disableStyle();
  //fill(145,203,0);
  //shape(ring, 0, 0);
}
