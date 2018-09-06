PVector data[]= new PVector  [100];

void setup(){
size(800,600);
for(int i=0;i<data.length;i++)
data[i]=PVector.random2D( ).mult(random(300) );

background(250);
}
int max=0;float t=0;float e;
void draw(){t+=radians(1);
  if (max <301) { 
    max++;
  }
stroke(0);
translate(width/2,height/2);fill( 250 );
  line(0, -200, 0, 200);
  line(-300, 0, 300, 0);
  //i=sqrt(-1)
// eit=cos t  isin i t   ruler formula


  
  for ( int x = -300; x < max; x++) {
   // line( x, f(x), x-1, f(x-1) );
    point( x, f(x));
    ellipse(0,0,10,10);
  }
  

  for ( int x = 0; x < max; x++) {
   // line( x, f(x), x-1, f(x-1) );
    point( x, f(x));
    ellipse(x,-circle(x),10,10);
//ellipse((pow(exp(1),i* h) +pow(exp(1),-i* h) )/2,(pow(exp(1),i* h) -pow(exp(1),-i* h) )/(2*i),20,20);
 
 
  
 float  xx = 0 + (100)*cos(t)+-50*cos(-2*t)+30*cos(3*t)+22*cos(-mouseX*t);
  float  yy = 0 +(-33)*sin(t)+50*sin(-2*t)+30*sin(3*t)+22*sin(-mouseX*t);
  //ellipse(122*cos(t),122*sin(t),10,10);
    ellipse(
    xx,
    yy,10,10);
  
println(  );
  }  
  
} 

float circle(float x) {
  return( (pow(exp(1),0.1* x) +pow(exp(1),-0.1* x) )/2
  +(pow(exp(1),0.1* x)-pow(exp(1),-0.1* x) )/2*0.1
  );
}
float f(float x) {
  return( (x/30) * (x/30) * (x/30) );
}
