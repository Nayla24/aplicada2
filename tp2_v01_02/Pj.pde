class Pj extends FCircle
{
  Boolean leftPressed, rightPressed;

  Pj(float _w)
  {
    super(_w);
  }

  void inicializar(float _x, float _y)
  {
    leftPressed = false;
    rightPressed = false;

    setName("personaje");
    setPosition(_x, _y);
    setDamping(0);
    setRestitution(0);
    setFriction(0);
    setRotatable(false);
  }

  void actualizar()
  {
    //println(leftPressed);
    if (leftPressed)
    {
      setVelocity(-90, getVelocityY());
      //setPosition(getX()-10, getY());
    }
    if (rightPressed)
    {
      setVelocity(90, getVelocityY());
      //setPosition(getX()+10, getY());
    }
    if (!leftPressed && !rightPressed)
    {
      setVelocity(0, getVelocityY());
    }
  }
}