class Notas extends FBox
{
  Boolean agarrada;
  
  Notas()
  {
    super(20, 28);
  }
  
  void inicializar(float _x, float _y)
  {
    setName("nota");
    setSensor(true);
    setPosition(_x, _y);
    setRotatable(false);
    setFriction(0);
    addForce(0, -10000);
  }
  
  void agarrar()
  {
    if (!agarrada)
    {
      agarrada = true;
      puntaje++;
      world.remove(this);
    }
  }
  
  void resetear()
  {
    world.remove(this);
    world.add(this);
    agarrada = false;
  }
}