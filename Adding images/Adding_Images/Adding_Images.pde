//Global Variables
PImage pic0;
PImage pic1;

void setup() {
  size(500, 600);
  quitButtonSetup();
pic0 = loadImage("DBD.png"); //Dimensions: width, height
pic1 = loadImage("rocketleague.jpg"); //Dimensions: width, height
}

void draw() {
  quitButtonDraw();
  
  
  
