//Shane Hopper
Snow[] snows;
void setup(){
  size(500,500);
  int numSnow = 250;
  int dia = width/numSnow;
  snows = new Snow[numSnow];
  for (int i = 0; i<snows.length; i++){
    float x = dia/2 + i*dia;
    float rate = random (0.1,1);
    float y = random(70,500);
    snows[i]=new Snow(x,y,dia,rate);
  }
  noStroke();
  
}
void draw(){
  background(#07B3F0);
  fill(255);
  rect(0,400,500,100);
  fill(#CBC0A0);
  triangle(-50,400,125,150,300,400);
  triangle(200,400,375,50,550,400);
  fill(#05A010);
  triangle(125,325,75,375,175,375);
  triangle(125,300,75,350,175,350);
  triangle(125,275,75,325,175,325);
  fill(#7C5602);
  rect(125-7,325+50,15,45);
  fill(255);
  triangle(125,275,100,300,150,300);
  
 for (int i=0;i<snows.length;i++){
  snows[i].move();
  snows[i].display();
 }
 
 //cloud
 fill(255);
 ellipse(30,10,150,150);
 ellipse(170,10,280,125);
 ellipse(400,10,350,150);
}
class Snow {
  float x, y;
  float diameter;
  float speed;
  float direction = 1;
  
  Snow(float xpos, float ypos, float dia, float sp){
    x=xpos;
    y=ypos;
    diameter=dia;
    speed=sp;
  }
  
  void move() {
    y += (speed * direction);
    if(y>height-diameter/2){
      y = 70;
    }
  }
 void display(){
   ellipse(x,y,diameter,diameter);
 }
}
