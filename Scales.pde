// global variables
int rows = 9;   // amount of rows
int cols = 13;   //amount of colums
int mult = 100;  //  pixel coordinate scale for x and y
int off = 50;    // offset between rows and cols
float wid = 100;  // width of shape
float hgt = 100;  // height of shape
float inc = 0.3;   // amount of inc for each frame
float min = 100.0;    // min size when breathing
float max = 108.0;    //  max size when breathing
boolean grow = true;  // breathe in first!
float r, g, b, a;  //red, green, blue, alpha

void setup() {
  size(2000, 800);
  r = (int)(Math.random()*256);
  g = (int)(Math.random()*256);
  b = (int)(Math.random()*256);
  a = 100;
}

void draw() {
  background(255);
  
  /*background((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
   r=(int)(Math.random()*256);
   g=(int)(Math.random()*256);
   b=(int)(Math.random()*256);
   a=(int)(Math.random()*256);
   stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    */ 
    //secret color code, epelipsy warning.
  for (int x = 0; x < cols; x++) {    // x coordinate for rows loop
    for (int y = 0; y < rows; y++) {  // y coordinate for cols loop
      scale(x*mult+off, y*mult+off);  // draw shapes in rows and cols
    }
  }
for (int x = 0; x < cols; x++) {    // x coordinate for rows loop
    for (int y = 0; y < rows; y++) {  // y coordinate for cols loop
      scale(x*mult, y*mult);  // draw shapes in rows and cols
    }
  }
  incr_size_color();

  if (wid >= max||wid <= min) {   // toggle phases
    grow = !grow;
     r=(int)(Math.random()*256);
    g=(int)(Math.random()*256);
    b=(int)(Math.random()*256);
    a=(int)(Math.random()*256);
  }
}

void incr_size_color() {
  if (grow) {     // grow phase
    wid += inc;
    hgt += inc;
    
  } else {        // shrink phase
    wid -= inc;
    hgt -= inc;
    
  }
}

void scale(int x, int y) {
  strokeWeight(.1);
  fill(r, g, b, a);
  rectMode(CENTER);// center rectangel
  ellipse(x, y-50, wid, hgt);// creates the circle
  rect(x, y, wid, hgt);  // draw shapes in rows and cols}
 
}
void changeColor() {
  r = (int)(Math.random()*256);// changes the color
  g = (int)(Math.random()*256);
  b = (int)(Math.random()*256);
  a = 100;
}
 void mouseClicked(){// changes color when clicked
   changeColor(); 
 }

