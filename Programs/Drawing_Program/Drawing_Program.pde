 //golbal variables
float DrawX, DrawY, DrawWidth, DrawHeight;
float rect1X , rect1Y;
float rectDiameter1X, rectDiameter1Y;
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

float pencilDiameter = 3;

boolean draw = false;







void setup(){
size(900,700);
DrawX = width* 0/8;
DrawY = height*0/8;
DrawWidth = width*6/8;
DrawHeight = height*6/8;

rect1X = width * 6/8;
rect1Y = height* 0/8;
rectDiameter1X = width* 2/8;
rectDiameter1Y = height* 1/8;

rect2X = width * 6/8;
rect2Y = height* 1/8;
rectDiameter2X = width* 2/8;
rectDiameter2Y = height* 1/8;

rect3X = width * 6/8;
rect3Y = height* 2/8;
rectDiameter3X = width* 2/8;
rectDiameter3Y = height* 1/8;

rect4X = width * 6/8;
rect4Y = height* 3/8;
rectDiameter4X = width* 2/8;
rectDiameter4Y = height* 1/8;

rect5X = width * 6/8;
rect5Y = height* 4/8;
rectDiameter5X = width* 2/8;
rectDiameter5Y = height* 1/8;

rect6X = width * 6/8;
rect6Y = height* 5/8;
rectDiameter6X = width* 2/8;
rectDiameter6Y = height* 1/8;

rect7X = width * 0/8;
rect7Y = height* 6/8;
rectDiameter7X = width* 1.5/8;
rectDiameter7Y = height* 2/8;

rect8X = width * 1.5/8;
rect8Y = height* 6/8;
rectDiameter8X = width* 1.5/8;
rectDiameter8Y = height* 2/8;

rect9X = width * 3/8;
rect9Y = height* 6/8;
rectDiameter9X = width* 1.5/8;
rectDiameter9Y = height* 2/8;

rect10X = width * 4.5/8;
rect10Y = height* 6/8;
rectDiameter10X = width* 1.5/8;
rectDiameter10Y = height* 2/8;






}
void draw() {
  
   
  
  //right row button
  rect( DrawX, DrawY, DrawWidth, DrawHeight);
  rect(rect1X, rect1Y, rectDiameter1X, rectDiameter1Y);
  rect(rect2X, rect2Y, rectDiameter2X, rectDiameter2Y);
  rect(rect3X, rect3Y, rectDiameter3X, rectDiameter3Y);
  rect(rect4X, rect4Y, rectDiameter4X, rectDiameter4Y);
  rect(rect5X, rect5Y, rectDiameter5X, rectDiameter5Y);
  rect(rect6X, rect6Y, rectDiameter6X, rectDiameter6Y);
  
  //bottom buttons
  rect(rect7X, rect7Y, rectDiameter7X, rectDiameter7Y);
  rect(rect8X, rect8Y, rectDiameter8X, rectDiameter8Y);
  rect(rect9X, rect9Y, rectDiameter9X, rectDiameter8Y);
  rect(rect10X, rect10Y, rectDiameter10X, rectDiameter10Y);
  
  //ellipse();
  //ellipse();
  //ellipse();
  //ellipse();
  
  //clear button
  ellipse(790,615,150,150);
  
 ellipse(mouseX,mouseY, pencilDiameter, pencilDiameter);
  
}
