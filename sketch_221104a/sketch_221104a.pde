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
  song1 = minim.loadFile("sketch_221104a/MusicDownload/Newsroom.html");
}//End setup
//
void draw () {}
//
void keyPressed () {
  //key Board Short Cuts
  //First Play Button
  if ( key=='s' || key=='S' ) song1.play();
  //Second Play Button, Loop ONCE
  if ( key=='l' || key=='L')  song1.loop(1); //Parameter is Parameter is number of re
  //Infinite Loop
  if ( key=='i' || key=='I') song1.loop(); //Parameter is empty, means infinite looping
  //
  if ( key=='m' || key=='M') {//MUTE Button
   if ( song1.isMuted() ) 
 {
   song1.unmute();
 } else {
 song1.mute();
 }
  } //End MUTE Button
  //Fast Forward & Fast Reverese
  //Built in Question
  if(  key=='f' || key=='F' ) song1.skip( 1000 ); //skip forward 1 second
  if(  key=='r' || key=='R' ) song1.skip( -1000 ); // skip backwards 1 second
  //
  //STOP Button
  if (  key=='q' || key=='Q' ) {
    if ( song1.isPlaying() ) {
      song1.rewind();
      song1.pause();
    } else {
      song1.rewind();
    }
  }//End STOP Button
}//End keyPressed
//
