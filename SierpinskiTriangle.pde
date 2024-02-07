public int varlength=50;
public int trianglenum=81;
public boolean colormode=true;
public void setup(){
  size(600,600);
  background(40);
}
public void draw(){
  sierpinski(300,50,500,varlength);
  fill(200);
  strokeWeight(1);
  beginShape();
  vertex(0,0);
  vertex(25,40);
  vertex(575,40);
  vertex(600,0);
  endShape();
  rect(0,560,600,40);
  stroke(0);
  fill(0);
  textAlign(CENTER);
  textSize(18);
  text("There are "+trianglenum+" triangles.",300,25);
  if(colormode==true)
    text("The triangle colors are a randomized pattern.",300,585);
  else if(colormode==false)
    text("The triangle colors are controlled by mouse position.",300,585);
}
public void keyPressed(){
  if(key=='a' && varlength<70){
    varlength+=20;
    fill(40);
    rect(0,0,600,600);
    trianglenum/=3;
  }
  else if(key=='d' && varlength>30){
    varlength-=20;
    fill(40);
    rect(0,0,600,600);
    trianglenum*=3;
  }
  if(key=='b')
    colormode=!colormode;
}
public void sierpinski(int x, int y, int len,int setlength){
  stroke(0);
  strokeWeight(2.5);
  if(len<=setlength)
    triangle(x,y,x-(len/2),y+len,x+(len/2),y+len);
  else{
    if(colormode==true)
      fill((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
    else if(colormode==false)
      fill(mouseX/2,50,mouseY/2);
    sierpinski(x,y,len/2,setlength);
    //fill((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
    sierpinski(x-(len/4),y+(len/2),len/2,setlength);
    //fill((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
    sierpinski(x+(len/4),y+(len/2),len/2,setlength);
  }
}
