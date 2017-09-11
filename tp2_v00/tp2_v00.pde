import fisica.*;

FWorld world;
Borde b1, b2;
void setup(){
  
  Fisica.init(this);
  
  size(800,600);
  
  world = new FWorld();
  
    
  
  b1 = new Borde(10, height); 
  b1.inicializar(0, height/2);
  world.add(b1);
  
  b2 = new Borde(10, height); 
  b2.inicializar(width, height/2);
  world.add(b2);

 
}

void draw(){
  
  background( 255 );

  //avanza un paso en el tiempo
  world.step();

  //dibuja el mundo
  world.draw();


}