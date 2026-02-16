
# Modelo de datos para Contactos
# Contrato de estructura de datos
class ContactoModel:
    def __init__(self, nombre, telefono, correo, direccion) -> None:
        self.nombre = nombre
        self.telefono = telefono
        self.correo = correo
        self.direccion = direccion

class Agenda:
    def __init__(self) -> None:
        self.contacto: list = []

    def agregar_contacto(self):
        print( "Agregar contacto" )
        print( "----------------" )

        nombre = input( "Nombre: " )
        telefono = input( "Teléfono: " )
        correo = input( "Correo: " )
        direccion = input( "Dirección: " )

        # Instanciar la clase ContactoModel con los datos ingresados (Objeto) con el contrato
        # var/obj          class              argumentos
        nuevo_contacto = ContactoModel( nombre, telefono, correo, direccion )
        self.contacto.append( nuevo_contacto )

        print( "Contacto agregado exitosamente." )


    def buscar_contacto(self) -> bool:
        print( "Buscar contacto" )
        print( "----------------" )

        buscar = input( "Ingrese el nombre/teléfono del contacto a buscar: " )
        encontrado = False
        for contacto in self.contacto:
            if contacto.nombre == buscar or contacto.telefono == buscar:
                print( f"Nombre: {contacto.nombre}" )
                print( f"Teléfono: {contacto.telefono}" )
                print( f"Correo: {contacto.correo}" )
                print( f"Dirección: {contacto.direccion}" )
                encontrado = True
                break
        if not encontrado:
            print( "Contacto no encontrado." )

        return encontrado


    def editar_contacto(self):
        print( "Editar contacto" )

    def eliminar_contacto(self):
        print( "Eliminar contacto" )

    def listar_contacto(self):
        print( "Listar contactos" )
        print( "----------------" )

        if len( self.contacto ) == 0:
            print( "No hay contactos registrados." )
        else:
            for contacto in self.contacto:
                print( f"Nombre: {contacto.nombre}" )
                print( f"Teléfono: {contacto.telefono}" )
                print( f"Correo: {contacto.correo}" )
                print( f"Dirección: {contacto.direccion}" )
                print( "----------------" )


def main():
    print( "Menú del sistema de contactos" )
    print( "=============================" )
    print()

    # Opciones del menú
    print( "1. Agregar contacto" )
    print( "2. Buscar contacto" )
    print( "3. Editar contacto" )
    print( "4. Eliminar contacto" )
    print( "5. Listar contactos" )
    print( "9. Salir del sistema" )

    agenda = Agenda()       # Instanciando la clase
    opcion = ""
    while opcion != 9:
        opcion = int( input( "Seleccione una opción: " ) )

        if opcion == 1:
            agenda.agregar_contacto()
        elif opcion == 2:
            agenda.buscar_contacto()
        elif opcion == 3:
            agenda.editar_contacto()
        elif opcion == 4:
            agenda.eliminar_contacto()
        elif opcion == 5:
            agenda.listar_contacto()
        elif opcion == 9:
            print( "Saliendo del sistema..." )
        else:
            print( "Opción no válida. Por favor, seleccione una opción del menú." )


if __name__ == "__main__":
    main()



