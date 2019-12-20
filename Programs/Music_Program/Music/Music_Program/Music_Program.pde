// Music Program
/* Music Files
 On_The_Hunt.mp3
 Ghost_Walk.mp3
 Dorian.mp3
 */
/* Sound Effects
 Slide_Whistle.mp3
 Air_Nailer_Aluminum.mp3
 Fire.mp3
 */
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
int numberOfSongs = 3;
int numberOfSoundEffects = 3;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
AudioPlayer[] SoundEffects = new AudioPlayer[numberOfSoundEffects];
int currentSong = numberOfSongs - numberOfSongs; //Zero starting index
int currentSoundEffect = numberOfSoundEffects - numberOfSoundEffects; //Zero starting index
AudioMetaData songMetaData1; //needs to be an array
AudioMetaData songMetaData2; //needs to be an array
AudioMetaData songMetaData3; //needs to be an array
int loopNum = 1; //Able to connect this variable to buttons, increasing the loop number

void setup() {
  minim = new Minim(this);
  //load from data directory, loadFile should also load from project folder
  song[0] = minim.loadFile("On_The_Hunt.mp3");
  song[1] = minim.loadFile("Dorian.mp3");
  song[2] = minim.loadFile("Ghost_Walk.mp3");
  songMetaData1 = song[0].getMetaData();
  songMetaData2 = song[1].getMetaData();
  songMetaData3 = song[2].getMetaData();
  
  //
  SoundEffects[0] = minim.loadFile("Fire.mp3");
  SoundEffects[1] = minim.loadFile("Air_Nailer_Aluminum.mp3");
  SoundEffects[2] = minim.loadFile("Slide_Whistle.mp3");
  
  //Instructions
  println("Start of Console");
  println("Click the Canvas to Finish Starting this program");
  println("Press P to Play and Pause, will rewind when at the end");
  println("Press S to Stop and rewind to the beginning");
  println("Press L to loop the song");
  //
  //Verifying Meta Data
  //Always available
  println( "File Name: ",songMetaData1.fileName() );
  println( "Length (in milliseconds): ", songMetaData1.length() );
  println( "Length (in seconds): ", songMetaData1.length()/1000 );
  println( "Length (in minutes & seconds): ", (songMetaData1.length()/1000)/60, " minute", (songMetaData1.length()/1000)-((songMetaData1.length()/1000)/60 * 60), " seconds" );
  //Sometimes available
  println( "Title: ", songMetaData1.title() );
  println( "Author: ", songMetaData1.author() ); //Song Writer or Performer
  println( "Composer: ", songMetaData1.composer() ); //Song Writer
  println( "Orchestra: ", songMetaData1.orchestra() );
  println( "Album: ", songMetaData1.album() );
  println( "Disk: ", songMetaData1.disc() );
  println( "Publisher: ", songMetaData1.publisher() );
  println( "Date Release: ", songMetaData1.date() );
  println( "Copyright: ", songMetaData1.copyright() );
  println( "Comment: ", songMetaData1.comment() );
  println( "Lyrics: ", songMetaData1.lyrics() );
  println( "Track: ", songMetaData1.track() );
  println( "Genre: ", songMetaData1.genre() );
  println( "Encoded: ", songMetaData1.encoded() ); //how a computer reads the file
  //Catch for Null Variables inside TAB, advanced skil;
  println("\nRepeating Code Example");
 
}

void draw() {
}

void keyPressed() {
  if ( key == 'p' || key == 'P' ) { //Caps lock can be on
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
    } else if ( song[currentSong].position() == song[currentSong].length() ) {
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
  }
  //
  if (key == 's' || key == 'S') {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
    } else { //Song is not Playing
      song[currentSong].rewind();
    }
  }
  //
  if( key == 'l' || key == 'L' ) song[currentSong].loop(loopNum);//Single line IF
  //"L" Automatically loops the song, and starts playing from the beginning
  //
  if ( key == 'f' || key == 'F') song[currentSong].skip(1000); // skip forward 1 second (1000 milliseconds), single IF Line
  if ( key == 'r' || key == 'R') song[currentSong].skip(-1000); // skip backward 1 second (1000 milliseconds), single IF Line
  //
  // Debugging for 
  println( "\nSong Position: ", "\t\t\t\t", song[currentSong].position(), "milliseconds" );
  println( "Song Position:", (song[currentSong].position()/1000)/60, "minutes\t", (song[currentSong].position()/1000)-((song[currentSong].position()/1000)/60 * 60), "seconds" );
  //
  if (key == 'n' || key == 'N') { //Next-Back Code
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - 1) {
        currentSong = currentSong - (numberOfSongs-1);
      } else {
        currentSong = currentSong + 1;
      }
      println(currentSong);
      song[currentSong].play();
      
      
    } else {
      if ( currentSong == numberOfSongs - 1) {
        currentSong = currentSong - (numberOfSongs);
      }
      currentSong = currentSong + 1;
      println(currentSong);
    }
  } 
  //
  if (key == 'n' || key == 'N') { //Next-Back Code
  if (key == 'b' || key == 'B') { //Next-Back Code
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        currentSong = numberOfSongs - 1;
      } else {
        currentSong -= 1; // Equivalent code: currentSong = currentSong - 1
      }
      println(currentSong);
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        currentSong = numberOfSongs - 1;
      } else {
        currentSong -= 1;
      }
      println(currentSong);
    }
  } 
 }
  //
  if (key == 'q' || key == 'Q') {//Quit Code
  SoundEffects[0].play();
  SoundEffects[0].rewind();
  //delay(2800)
  exit();
    }
 }
 
 void mousePressed() {
 }
