class Notas extends FCircle
{
  Boolean agarrada;
  
  Notas()
  {
    super(30);
  }
  
  void inicializar(float _x, float _y)
  {
    setName("nota");
    setSensor(true);
    setPosition(_x, _y);
    setRotatable(false);
    setBullet(true);
    setGrabbable(false);
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