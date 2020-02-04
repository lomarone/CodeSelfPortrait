/*
  SELF PORTRAIT
  by Lauren Marone
  
  Display a self-portrait made out of simple shapes.
*/
//#ebb18d
color skin = #ffcfba;
color skinShadow = #b88a6e;
color blue = #4d738a;
color hair = #ffe49e;
color lips = #ffad8a;
color eyes = color(255);
int eyeY = 350;
int rightEyeX = 480;
int leftEyeX = 320;
boolean blink = true;


void setup() {
  size(800, 800);
  
}

void draw() {
  
  background(0);
  
  // ---------------------------- HAIR (in back) ------------------------------
  
  //LEFT
  rotate(0.3);
  noStroke();
  fill(hair);
  ellipse(370, 240, 300, 600);
  
  //RIGHT
  rotate(-0.6);
  fill(hair);
  ellipse(370, 530, 300, 600);
  
  //BOTTOM
  rotate(0.3);
  fill(hair);
  ellipse(width/2, 575, 600, 300);
  
  
  
  // ---------------------------- NECK ------------------------------
  
  //BASE
  fill(skin);
  rect(315, 500, 170, 200);
  
  //SHADOW
  fill(skinShadow);
  ellipse( width/2, 430, 310, 450);
  
  
  
  // ---------------------------- BASE FACE SHAPE ------------------------------
  
  fill(skin);
  ellipse( width/2, height/2, 350, 500);
   
  
  
  // ---------------------------- EAR ------------------------------
  
  fill(skin);
  ellipse(580, height/2 + 25, 50, 100); 
  
  
  
  // ---------------------------- EYES ------------------------------
  
  if (blink == true){
    
    //WHITES
    fill(eyes);
    noStroke();
    ellipse(rightEyeX, eyeY, 100, 50);
    
    fill(eyes);
    ellipse(leftEyeX, eyeY, 100, 50);
     
    
    //CORNEA
    fill(blue);
    ellipse(rightEyeX, eyeY, 50, 50);
    
    fill(blue);
    ellipse(leftEyeX, eyeY, 50, 50);
    
    
    //PUPIL
    fill(0);
    ellipse(rightEyeX, eyeY, 20, 20);
    
    fill(0);
    ellipse(leftEyeX, eyeY, 20, 20);
    
    
    //CREASE
    fill(skinShadow); 
  
  }
  
  else{
    //CLOSED EYE
    stroke(skinShadow); 
    noFill();
    arc(480, 350, 100, 50, 0, PI);
    
    stroke(skinShadow); 
    noFill();
    arc(320, 350, 100, 50, 0, PI);
  }
  
  
  // ---------------------------- HAIR (in front) ------------------------------
  
  noStroke();
  
  //TOP
  rotate(0.6);
  fill(hair);
  ellipse(380, 45, 80, 300);
  
  //BOTTOM
  rotate(-0.3);
  fill(hair);
  ellipse(340, 350, 80, 300);
 
  
  
  // ---------------------------- EYEBROWS ------------------------------
  
  //RIGHT
  rotate(-0.4);
  fill(hair);
  rect(400, 340, 70, 10);
  
  fill(hair);
  triangle(469, 340, 469, 350, 510, 360);
  
  //LEFT
  rotate(0.2);
  fill(hair);
  rect(327, 260, 70, 10);
  
  
  
  //  ---------------------------- NOSE ------------------------------
  
  //MIDDLE LINE
  stroke(skinShadow);
  strokeWeight(2);
  noFill();
  rotate(-0.3);
  arc(260, 490, 50, 70, 0, QUARTER_PI);
  
  //TOP LINE
  stroke(skinShadow);
  rotate(-0.1);
  noFill();
  arc(237, 435, 50, 70, 0, QUARTER_PI);
  
  //BOTTOM LINE
  stroke(skinShadow);
  strokeWeight(2);
  noFill();
  rotate(-0.1);
  arc(183, 590, 70, 50, PI, PI+QUARTER_PI);
  
  //NOSTRILS
  
  rotate(0.4);
  //Left
  fill(0);
  noStroke();
  ellipse(385, 480, 15, 3);
  
  //Right
  fill(0);
  noStroke();
  ellipse(413, 480, 15, 3);
  
  
  
  //  ---------------------------- LIPS ------------------------------

  //RIGHT
  fill(lips);
  triangle(413, 520, 390, 530, 480, 530);
  
  //LEFT
  fill(lips);
  triangle(385, 520, 320, 530, 410, 530);
  
  //BOTTOM
  fill(lips);
  quad(320, 530, 480, 530, 420, 560, 378, 560);


}

void mousePressed(){
  blink = false;
  
}

void mouseReleased(){
  blink = true;
}
