//Library: use Sketch / Import Library / Add Library / Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer song1;
//
void setup () {
  //size(500, 600); //Remind you of Display Geometry
  minim = new Minim(this);
  song1 = minim.loadFile("/music-man/MusicDownload/Newsroom.html");
  song1.loop(0);
}//End setup
//
void draw () {}
//
void keyPressed () {
  if ( key=='q' || key=='Q')  song1.loop(1); //Parameter is 
}
