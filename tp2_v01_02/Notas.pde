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
    setFriction(-10);
    setVelocity(0,-400);
    setGroupIndex(-1);
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