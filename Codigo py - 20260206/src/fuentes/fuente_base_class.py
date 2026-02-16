# Esto es la clase base de conexión a datos
class FuenteDatos:
  """
  Esto es docsstring
  Define la documentación
  """

  # Constructor de la clase __init__
  def __init__(self, ruta: str) -> None:
    """ Encapsulación: Protegemos la ruta. El usuario no puede cambiar por error """
    self._ruta = ruta

  @property
  def ruta(self) -> str:
    return self._ruta

  def cargar(self):
    """ Polimorfismo: El código que implementa esta clase, sera definido en la clase hija """
    raise NotImplementedError("Implementar en la clase hija")

  def to_dataframe(self):
    datos = self.cargar()

    return datos
