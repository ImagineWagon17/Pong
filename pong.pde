int rad = 7;        
float xpos, ypos;    
float xspeed = 10;  
float yspeed = 10;  

int xdirection = 1;  
int ydirection = 1;  

int blockerY=(180);
int blockerY2=(180);



void setup() 
{
  size(640, 360);
  noStroke();
  frameRate(30);
  ellipseMode(RADIUS);
  
  xpos = width/2;
  ypos = height/2;
}
int TeamOneScore= 0;
 int TeamTwoScore=0;
void draw() 
{
 
  
background(0);

  

  
  
  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  
  
  if (xpos > width-rad || xpos < rad) {
    xdirection *= -1;
  }
  if (ypos > height-rad || ypos < rad) {
    ydirection *= -1;
  }
  if (xpos == 600 && ypos>0 && ypos > blockerY && ypos< blockerY+ 80) {
    xdirection *= -1;
  }
if (xpos == 40 && ypos>0 && ypos > blockerY2 && ypos< blockerY2+ 80) {
    xdirection *= -1;
  }
  
 if (xpos<5){
  xpos=width/2; 
   TeamTwoScore = TeamTwoScore+1;
   if (xpos > width-rad || xpos < rad) {
    xdirection *= -1;
  }
  if (ypos > height-rad || ypos < rad) {
    ydirection *= -1;

  }
  blockerY=180;
  blockerY2=180;
  
 }

 
 if (xpos>635){
  xpos=width/2; 
  ypos=height/2;
  TeamOneScore = TeamOneScore+1;
   if (xpos > width-rad || xpos < rad) {
    xdirection *= -1;
  }
  if (ypos > height-rad || ypos < rad) {
    ydirection *= -1;
  }
  
 }
  
  rect(xpos, ypos, rad, rad);
  rect(600,blockerY,5,50);
  
  rect(40,blockerY2,5,50);
  
  

noFill();
stroke(0);
  rect(320,0,5,380);
  fill(255,255,255);
  noStroke();
  
  textSize(20); 
 
 text(TeamOneScore+" : "+TeamTwoScore,270,40);

  if (TeamOneScore==10){
    text("YOU WIN",100,height/2);
    noFill();
      stop();
  }
  if (TeamTwoScore==10){
    text("YOU WIN",540,height/2);
    noFill();
      stop();
  }
}
void keyPressed(){
  
  if (key == 'w'){
   blockerY2 = blockerY2-30; 
  }
  if (keyCode == UP){
   blockerY = blockerY-30; 
  }
    if (key == 's'){
   blockerY2 = blockerY2+30;
  }
  if (key == 'w'){
   blockerY2 = blockerY2-30; 
  }
  if (keyCode == DOWN){
   blockerY = blockerY+30;
  }
    if (key == 's'){
   blockerY2 = blockerY2+30;
  }
  if (blockerY <= 0){
    blockerY=0;
  }
  if (blockerY >= 310){
    blockerY=310;
  }
  
  

  if (blockerY2 <= 0){
    blockerY2=0;
  }
  if (blockerY2 >= 310){
    blockerY2=310;
  }
  
  if( key =='r'){
    TeamTwoScore=0;
    TeamOneScore=0;
    
  }
 
}
