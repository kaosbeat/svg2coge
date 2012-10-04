import codeanticode.syphon.*;
PShape svg;
PShape ring;
PShape hearts;
SyphonServer server;

void setup() {
  size(960, 540);
  svg = loadShape("baselove.svg");
  ring = svg.getChild("circles");
  hearts = svg.getChild("hearts");
  svg.disableStyle(); 
  smooth();
}


void draw() {
  background(255) ;
  //noFill();
  shape(svg,0,0);

  stroke(mouseY,14,15);
  fill(mouseY,203,0);
  //shape(ring, 0, 0);
}
