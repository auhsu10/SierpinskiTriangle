public int varlength=50;
public void setup(){
  size(600,600);
  background(150);
}
public void draw(){
  sierpinski(300,50,500,varlength);
}
public void keyPressed(){
  if(key=='a' && varlength>20){
    varlength-=10;
    fill(150);
    rect(0,0,600,600);
  }
  else if(key=='d' && varlength<80){
    varlength+=10;
    fill(150);
    rect(0,0,600,600);
  }
}
public void sierpinski(int x, int y, int len,int setlength){
  if(len<=setlength)
    triangle(x,y,x-(len/2),y+len,x+(len/2),y+len);
  else{
    fill((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
    sierpinski(x,y,len/2,setlength);
    fill((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
    sierpinski(x-(len/4),y+(len/2),len/2,setlength);
    fill((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
    sierpinski(x+(len/4),y+(len/2),len/2,setlength);
  }
}
