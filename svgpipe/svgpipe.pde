import codeanticode.syphon.*;
import oscP5.*;
import netP5.*;

PShape svg;
PShape ring;
PShape[] rings;
PShape hearts;
SyphonServer server;
OscP5 oscP5;
NetAddress myBroadcastLocation;
PGraphics canvas;
float factor,currentScale1,previousScale1;


void setup() {
  size(960, 540, P3D);
  canvas = createGraphics(width, height, P3D);
  server = new SyphonServer(this, "Processing Love");
  oscP5 = new OscP5(this, 1234);
  svg = loadShape("baselove.svg");
  ring = svg.getChild("circles");
  rings = ring.getChildren();
  hearts = svg.getChild("hearts");
  svg.disableStyle(); 
  smooth();
  previousScale1 = 1;
  currentScale1 = 1;
}


void draw() {
  rings[0].scale(1,previousScale1);
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
  previousScale1 = factor;
  rings[0].scale(1,previousScale);
  //rings[1].scale(1,1.1);
  hearts.rotate(20);
  fill(mouseY,203,0);
}


void oscEvent(OscMessage theOscMessage)
{
  if ( theOscMessage.addrPattern().equals("/coge") )
  {
    factor = theOscMessage.get(0).floatValue();
    println(factor);
  }
}
