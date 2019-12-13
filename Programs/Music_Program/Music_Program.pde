//Music Program
/*Music Files

 On_The_Hunt.mp3
 Dorian.mp3
 No_Work.mp3
*/
/*Sound effects
Air_Nailer_Aluminum.mp3
Fire.mp3
Slide_Whistle.mp3
*/





import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
AudioPlayer song1;
AudioPlayer song2;
AudioPlayer song3;
AudioMetaData songMetaData1;
AudioMetaData songMetaData2;
AudioMetaData songMetaData3;
AudioPlayer Soundeffect1;
AudioPlayer Soundeffect2;
AudioPlayer Soundeffect3;
AudioMetaData SoundeffectMetaData1;
AudioMetaData SoundeffectMetaData2;
AudioMetaData SoundeffectMetaData3;

int loopNum = 1; // Able to connect this variable





void setup() {
 minim = new Minim(this);
 //load from data directory,loadFile should also load from project folder
 song1 = minim. loadFile("Dorian.mp3");
 songMetaData1 = song1.getMetaData();
 song2 = minim. loadFile("On_The_Hunt.mp3");
 songMetaData2 = song2.getMetaData();
 song3 = minim. loadFile(" No_Work.mp3");
 songMetaData3 = song3.getMetaData();
 Soundeffect1 = minim. loadFile(" Air_Nailer_Aluminum.mp3");
 SoundeffectMetaData1 = Soundeffect1.getMetaData();
 Soundeffect2 = minim. loadFile(" Fire.mp3");
 SoundeffectMetaData2 = Soundeffect2.getMetaData();
 Soundeffect3 = minim. loadFile(" Slide_Whistle.mp3");
 SoundeffectMetaData3 = Soundeffect3.getMetaData();
 
 
 

  //Insructions
 println("Start of Console");
 println("Click the Canvas to Finish Starting this Program");
 println("Press P to Play and Pause, will rewind when at the end"); 
 println("Press S to Stop and rewind to the beginning");
 println("Press L to loop the song");

//Verifying Meta Data
println("File Name: ", songMetaData1.fileName() );
println("Length (in milliseconds): ",songMetaData1.length() );
println("Length (in seconds): ",songMetaData1.length()/1000);
println("Title: ",songMetaData1.title() );
println("Author: ",songMetaData1.author() ); // Song Writer or Performer
println("Composer: ",songMetaData1. composer() ); //Song Writer
println("Orchestra: ",songMetaData1. orchestra() );
println("Album: ",songMetaData1. album() );
println("Disk: ",songMetaData1. disc() );
println("Publisher: ",songMetaData1. publisher() );
println("Date Release: ",songMetaData1.date() );
println("Copyright: ",songMetaData1. copyright() );
println("Comment: ",songMetaData1. comment() );
println("Lyrics: ",songMetaData1. lyrics() );
println("Track: ",songMetaData1. track() );
println("Genre: ",songMetaData1.genre() );
println("Encoded: ",songMetaData1. encoded() ); // how a computer reads the file


}
void draw() {}

void keyPressed() {
  if ( key == 'p' || key == 'P' ) { //Caps lock can be on
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() == song1.length() ) {
      song1.rewind();
      song1.play();
    } else {
      song1.play();
    }
  }
  
  
  if ( key == 'f' || key == 'F' ) song1.skip (5000); //skip forward 1 second (1000 milliseonds)
  if ( key == 'r' || key == 'R' ) song1.skip (-5000); // skip backward 1 second (1000 milliseconds)
  
  
  
  
   //
  if (key == 's' || key == 'S') {
    if ( song1.isPlaying() ) {
      song1.pause();
      song1.rewind();
    } else { //Song is not Playing
      song1.rewind();
    }
  }

 //
 if( key == 'l' || key == 'L' )song1.loop() ;//Single line IF
  //"L" Automatically loops the song, starts playing
}   
    
void mousePressed() {
}
