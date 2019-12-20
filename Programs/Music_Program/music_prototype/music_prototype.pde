import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
int numberOfSong = 3;
int numberOfSoundEffects = 3;
AudioPlayer[] song = new AudioPlayer[numberOfSong];
AudioPlayer[] SoundEffects = new AudioPlayer[numberOfSoundEffects];
int currentSong = numberOfSong - numberOfSong;
int currentSoundEffect = numberOfSoundEffects - numberOfSoundEffects;



void setup() {
  minim = new Minim(this);
  song[0] = minim.loadFile("On_The_Hunt.mp3");
  song[1] = minim.loadFile("Dorian.mp3");
  song[2] = minim.loadFile("Ghost_Walk.mp3");
  //
  SoundEffects[0] = minim.loadFile("Sound Effects/Fire.mp3");
  SoundEffects[1] = minim.loadFile("Air_Nailer_Aluminum.mp3");
  SoundEffects[2] = minim.loadFile("Slide_Whistle.mp3");

  //
  println("Start of Console");
  println("Click the Console to Finish Starting this program");
  println("Press P to Play and Pause");
}

void draw() {
}

void mousePressed() {
} 

void keyPressed() {
  //BUG: press play, pause, next, repeat, arrayOutOfBounds Error
  if (key == 'n' || key == 'N') { //Next-Back Code
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSong - 1) {
        currentSong = currentSong - (numberOfSong-1);
      } else {
        currentSong = currentSong + 1;
      }
      song[currentSong].play();
    } else {
      currentSong = currentSong + 1;
    }
  } 
 //
  //if (key == b || key == B) {} //Next-Back Code
  //
  if (key == 'p' || key == 'P') {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
    } else if ( song[currentSong].position() == song[currentSong].length() ) {
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
  }
}
