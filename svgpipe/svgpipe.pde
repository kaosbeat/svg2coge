import codeanticode.syphon.*;
PShape svg;
PShape ring;
PShape hearts;
SyphonServer server;
PGraphics canvas;

void setup() {
  size(960, 540, P3D);
  canvas = createGraphics(width, height, P3D);
  server = new SyphonServer(this, "Processing Love");
  svg = loadShape("baselove.svg");
  ring = svg.getChild("circles");
  hearts = svg.getChild("hearts");
  svg.disableStyle(); 
  smooth();
}


void draw() {
  canvas.beginDraw();
  background(255) ;
  //noFill();
  shape(svg,0,0);

  stroke(mouseY,14,15);
  fill(mouseY,203,0);
  //shape(ring, 0, 0);
  canvas.endDraw();

  image(canvas, 0, 0);

  server.sendImage(canvas);
}
