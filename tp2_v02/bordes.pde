class Borde extends FBox
{
  FBox borde;
  
  Borde(float _w, float _h)
  {
    super(_w, _h);
  }
 
  void inicializar(float _x, float _y){
    setName("borde");
    setPosition(_x, _y);
    setStatic(true);
    setFillColor(#FFFFFF);
    setGrabbable(false);
  }
  
}