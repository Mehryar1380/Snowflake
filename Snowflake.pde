void setup(){
  size(500,500);
  background(0);
}
int mousx = (width+100)/2;
int mousy =( height+100)/2;
double degree= 0;
void draw(){
// makeflake(degree);
  translate(width/2, height/2);
 int x =( mousx - width/2) -10;;
 int y = (mousy - height/2) - 10;
 int xp = mousx - width/2;
 int yp = mousy -  width/2;
 //if(mousePressed == true){
   stroke(250,100);
   float an = 360 / 12; 
   pushMatrix();
   for(int i = 0;i<12;i++){
     rotate(an);
     if(i%2 == 1){
       
     
     }
     float d = dist(x,y,xp,yp);
     
     float sw = map(d,0,20,20,1);
     
     
     
    if(sw>0) strokeWeight(sw);
   
  
     line(x,y,xp,yp);
   //  if(random(50) >49) ellipse(x+random(100),y+random(100),5,5);
    
   }
   popMatrix();
 
 
 float ran = random(10);
 
println(mousx + "," + mousy);
mousx+= 1;
mousy +=1;
if(ran >8){
mousx += 1;
}else if(ran <8) {
  mousx-= 1;
}
ran = random(10);

if(ran > 8){
  mousy += 1; 
}else if(ran < 8){
  mousy -=1; 
}
  
  


if( mousx >=400){
noLoop();
}
}


void makeflake(double degree){


  line(250,250,200* sin((float)degree) + 100,200*cos((float)degree)+100);
 degree += PI/6;
  
 
if(degree != 2*PI) makeflake(degree);
}
