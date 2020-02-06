public void setup(){
  size(500, 500);
  frameRate(5);
  ellipseMode(CENTER);
  background(0);
 
}

public void draw(){
  myFractal(250, 250, 300);
}

public void myFractal(int x, int y, int siz){
  
  
  fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  
  ellipse(x, y-siz, siz, siz);
  ellipse(x+siz/2, y-siz/2, siz, siz);
  ellipse(x+siz, y, siz, siz);
  ellipse(x+siz/2, y+siz/2, siz, siz);
  ellipse(x, y+siz, siz, siz);
  ellipse(x-siz/2, y+siz/2, siz, siz);
  ellipse(x-siz, y, siz, siz);
  ellipse(x-siz/2, y-siz/2, siz, siz);
  
  if(siz > 10){
    myFractal(x, y, siz-20);
    ellipse(x,y,10,10);
  }
}
