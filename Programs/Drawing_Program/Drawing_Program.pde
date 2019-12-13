 //golbal variables
float DrawX, DrawY, DrawWidth, DrawHeight;

float rect1X , rect1Y;
float rectDiameter1X, rectDiameter1Y;

float rectbutton1X, rectbutton1Y;
float rectbutton2X, rectbutton2Y;
float rectbutton3X, rectbutton3Y;
float rectbutton4X, rectbutton4Y;
float rectbutton5X, rectbutton5Y;
float rectbutton6X, rectbutton6Y;

float rectbutton7X, rectbutton7Y;
float rectbutton8X, rectbutton8Y;
float rectbutton9X, rectbutton9Y;
float rectbutton10X, rectbutton10Y;

float rect2X , rect2Y;
float rectDiameter2X, rectDiameter2Y;

float rect3X , rect3Y;
float rectDiameter3X, rectDiameter3Y;

float rect4X , rect4Y;
float rectDiameter4X, rectDiameter4Y;

float rect5X , rect5Y;
float rectDiameter5X, rectDiameter5Y;

float rect6X , rect6Y;
float rectDiameter6X, rectDiameter6Y;

float rect7X , rect7Y;
float rectDiameter7X, rectDiameter7Y;

float rect8X , rect8Y;
float rectDiameter8X, rectDiameter8Y;

float rect9X , rect9Y;
float rectDiameter9X, rectDiameter9Y;

float rect10X , rect10Y;
float rectDiameter10X, rectDiameter10Y;

color red = #FF0000 ,orange = #FF8D00, yellow = #FFF700, green = #14FF00, blue = #0006FF, purple = #B7006B, white = #FFFFFF;



float pencilDiameter = 10;

boolean draw = false;







void setup(){
size(900, 700);
DrawX = width* 0/8;
DrawY = height*0/8;
DrawWidth = width*6/8;
DrawHeight = height*6/8;

rect1X = width * 6/8;
rect1Y = height* 0/8;
rectDiameter1X = width* 2/8;
rectDiameter1Y = height* 1/8;
rectbutton1X = rectbutton2X = rectbutton3X = rectbutton4X = rectbutton5X = rectbutton6X = width * 7/8;

rectbutton2Y = height * 1.5/8;
rectbutton3Y = height * 2.5/8;
rectbutton4Y = height * 3.5/8;
rectbutton5Y = height * 4.5/8;
rectbutton6Y = height * 5.5/8;

rectbutton7Y = rectbutton8X = rectbutton9X = rectbutton10X = height * 0.75/8;
rectbutton7Y = height *7/8;
rectbutton7Y = height *7/8;
rectbutton7Y = height *7/8;


rect2X = width * 6/8;
rect2Y = height* 1/8;
rectDiameter2X = width* 2/8;
rectDiameter2Y = height* 1/8;
rectbutton1X = width * 7/8;
rectbutton1Y = height *0.5/8;

rect3X = width * 6/8;
rect3Y = height* 2/8;
rectDiameter3X = width* 2/8;
rectDiameter3Y = height* 1/8;
rectbutton1X = width * 7/8;
rectbutton1Y = height *0.5/8;

rect4X = width * 6/8;
rect4Y = height* 3/8;
rectDiameter4X = width* 2/8;
rectDiameter4Y = height* 1/8;
rectbutton1X = width * 7/8;
rectbutton1Y = height *0.5/8;

rect5X = width * 6/8;
rect5Y = height* 4/8;
rectDiameter5X = width* 2/8;
rectDiameter5Y = height* 1/8;
rectbutton1X = width * 7/8;
rectbutton1Y = height *0.5/8;

rect6X = width * 6/8;
rect6Y = height* 5/8;
rectDiameter6X = width* 2/8;
rectDiameter6Y = height* 1/8;

rect7X = width * 0/8;
rect7Y = height* 6/8;
rectDiameter7X = width* 1.5/8;
rectDiameter7Y = height* 2/8;
rectbutton7X = width * 0.75/8;
rectbutton7Y = height *7/8;

rect8X = width * 1.5/8;
rect8Y = height* 6/8;
rectDiameter8X = width* 1.5/8;
rectDiameter8Y = height* 2/8;
rectbutton8X = width * 2.25/8;
rectbutton8Y = height *7/8;

rect9X = width * 3/8;
rect9Y = height* 6/8;
rectDiameter9X = width* 1.5/8;
rectDiameter9Y = height* 2/8;
rectbutton9X = width * 3.75/8;
rectbutton9Y = height *7/8;

rect10X = width * 4.5/8;
rect10Y = height* 6/8;
rectDiameter10X = width* 1.5/8;
rectDiameter10Y = height* 2/8;
rectbutton10X = width * 5.25/8;
rectbutton10Y = height *7/8;

  rect( DrawX, DrawY, DrawWidth, DrawHeight);






}
void draw() {
  strokeWeight(5);
  if(draw == true) {
 line(mouseX,mouseY, pmouseX, pmouseY);}
   
  
  //right row button
  rect(rect1X, rect1Y, rectDiameter1X, rectDiameter1Y);
  fill(red);
  ellipse(rectbutton1X, rectbutton1Y, rectDiameter1X, rectDiameter1Y);
  fill(white);
  rect(rect2X, rect2Y, rectDiameter2X, rectDiameter2Y);
  fill(orange);
  ellipse(rectbutton2X, rectbutton2Y, rectDiameter2X, rectDiameter2Y);
  fill(white);
  rect(rect3X, rect3Y, rectDiameter3X, rectDiameter3Y);
  fill(yellow);
  ellipse(rectbutton3X, rectbutton3Y, rectDiameter3X, rectDiameter3Y);
  fill(white);
  rect(rect4X, rect4Y, rectDiameter4X, rectDiameter4Y);
  fill(green);
  ellipse(rectbutton4X, rectbutton4Y, rectDiameter4X, rectDiameter4Y);
  fill(white);
  rect(rect5X, rect5Y, rectDiameter5X, rectDiameter5Y);
  fill(blue);
  ellipse(rectbutton5X, rectbutton5Y, rectDiameter5X, rectDiameter5Y);
  fill(white);
  rect(rect6X, rect6Y, rectDiameter6X, rectDiameter6Y);
  fill(purple);
  ellipse(rectbutton6X, rectbutton6Y, rectDiameter6X, rectDiameter6Y);
  fill(white);
  
  //bottom buttons
  rect(rect7X, rect7Y, rectDiameter7X, rectDiameter7Y);
  ellipse(rectbutton7X, rectbutton7Y, rectDiameter7X*0.1, rectDiameter7Y*0.1);
  
  
  rect(rect8X, rect8Y, rectDiameter8X, rectDiameter8Y);
  ellipse(rectbutton8X, rectbutton8Y, rectDiameter8X*0.3, rectDiameter8Y*0.3);
  
  
  rect(rect9X, rect9Y, rectDiameter9X, rectDiameter9Y);
  ellipse(rectbutton9X, rectbutton9Y, rectDiameter9X*0.5, rectDiameter9Y*0.5);
  
  
  rect(rect10X, rect10Y, rectDiameter10X, rectDiameter10Y);
  ellipse(rectbutton10X, rectbutton10Y, rectDiameter10X*0.7, rectDiameter10Y*0.7);
  
  
  //ellipse();
  //ellipse();
  //ellipse();
  //ellipse();
  
  //clear button
  ellipse(790,615,150,150);
  
  
  //lines of color

  
}
void mouseReleased(){
  {if(draw == true) draw = false;}
}

void mousePressed(){
  {if(draw == false) draw = true;}
}
