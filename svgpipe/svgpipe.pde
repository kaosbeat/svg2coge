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
  background(0,0) ;
  //for(int i=0;i<10;i++){
    drawStuff();
   // }
  canvas.endDraw();
  image(canvas, 0, 0);
  server.sendImage(canvas);
}

void drawStuff(){

  //noFill();
  shape(svg,0,0);
  stroke(mouseY,14,15);
  shape(ring, 0, 0);
  ring.scale(1,0.9);
  ring.scale(1,1.1);
  ring.rotate(20);
  fill(mouseY,203,0);
}
