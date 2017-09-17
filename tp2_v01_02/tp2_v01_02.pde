import fisica.*;

FWorld world;
Borde b1, b2;
Pj personaje;

ArrayList <Notas> nota;
int puntaje;

void setup() {

  Fisica.init(this);

  size(800, 600);

  world = new FWorld();
  world.setGravity(0,0);

  b1 = new Borde(10, height); 
  b1.inicializar(0, height/2);
  world.add(b1);

  b2 = new Borde(10, height); 
  b2.inicializar(width, height/2);
  world.add(b2);

  personaje = new Pj ( 40 );
  personaje.inicializar( 400, 50 );
  world.add( personaje );

  nota = new ArrayList <Notas> ();
  
  puntaje = 0;
}

void draw() {

  background( 255 );
  personaje.actualizar();
  
  if((frameCount%24) == 0){
    Notas n = new Notas();
    nota.add(n);
    n.inicializar(30,height);
    world.add(n);
    
  }

  world.step();
  world.draw();

  //Dibujo el puntaje
  pushStyle();
  textAlign(LEFT);
  textSize(24);
  fill(0);
  text("PUNTAJE " + puntaje, 10, 40);
  popStyle();
}

void keyPressed()
{
  if (key == 'a') {
    personaje.leftPressed = true;
  }
  if (key == 'd') {
    personaje.rightPressed = true;
  }
}

void keyReleased()
{
  if (key == 'a') {
    personaje.leftPressed = false;
  }
  if (key == 'd') {
    personaje.rightPressed = false;
  }
}

void contactStarted(FContact contact)
{
  FBody _body1 = contact.getBody1();
  FBody _body2 = contact.getBody2();

  if (_body1.getName() == "personaje" && _body2.getName() == "nota")
  {
    ((Notas) _body2).agarrar();
  } 
  else if (_body2.getName() == "personaje" && _body1.getName() == "nota")
  {
    ((Notas) _body1).agarrar();
  }
}