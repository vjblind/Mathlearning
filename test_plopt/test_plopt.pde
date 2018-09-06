PVector data[]= new PVector  [100];

void setup(){
size(800,600);
for(int i=0;i<data.length;i++)
data[i]=PVector.random2D( ).mult(random(300) );

background(250);
}
int max=0;
void draw(){
  if (max <301) { 
    max++;
  }
stroke(0);
translate(width/2,height/2);fill( 250 );
  line(0, -200, 0, 200);
  line(-300, 0, 300, 0);
  
  
  for ( int x = -300; x < max; x++) {
   // line( x, f(x), x-1, f(x-1) );
    point( x, f(x));
    ellipse(0,0,10,10);
  }
  
  for ( int x = 0; x < max; x++) {
   // line( x, f(x), x-1, f(x-1) );
    point( x, f(x));
    ellipse(x,0,10,10);
  }  
  
} 


float f(float x) {
  return( (x/30) * (x/30) * (x/30) );
}
