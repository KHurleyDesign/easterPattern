int numCols=10; 
int numRows=10; 
 
int [] eggColor = new int [5];     
{
  eggColor[0]=color(0, 203, 255); 
  eggColor[1]=color(255, 124, 183); 
  eggColor[2]=color(169, 131, 232);
  eggColor[3]=color(124, 232, 126);
  eggColor[4]=color(255, 255, 122);
}
 
void setup () { 
  size(2000, 2000); 
  background(227, 217, 215); 
  noStroke(); 
  smooth(); 
  println(eggColor.length);
} 
 

void draw () { 
  for (float x=width/numCols; x<width; x+= (width/numCols)) { 
    for (float y=height/numCols; y<height; y+= (height/numCols)) {
      fill(eggColor[int(random(eggColor.length))]);
 
      pushMatrix(); // position of egg
      translate(x, y);  //draw at x & y location 
      
     beginShape(); // Draws egg
    vertex(0, -100);
    bezierVertex(25, -100, 40, -65, 40, -40);
    bezierVertex(40, -15, 25, 0, 0, 0);
    bezierVertex(-25, 0, -40, -15, -40, -40);
    bezierVertex(-40, -65, -25, -100, 0, -100);
    endShape();
   fill(eggColor[int(random(eggColor.length))]);
     ellipse(-20, -25, 10, 10);
    fill(eggColor[int(random(eggColor.length))]);
     ellipse(0, -20, 10, 10);
     fill(eggColor[int(random(eggColor.length))]);
     ellipse(20, -25, 10, 10);
     
    fill(eggColor[int(random(eggColor.length))]);
     ellipse(-20, -65, 10, 10);
    fill(eggColor[int(random(eggColor.length))]);
     ellipse(0, -60, 10, 10);
     fill(eggColor[int(random(eggColor.length))]);
     ellipse(20, -65, 10, 10);
     
      popMatrix(); 
    }
  }

  
// Stops redrawing 
  noLoop();
  //saveFrame("easter.tif"); //Saves img it creates
}

void mousePressed () {
  //call loop once here to run through draw again and generate a new
  //random composition
  loop();
} 