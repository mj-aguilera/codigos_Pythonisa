import sys
from pprint import pprint
from src.fuentes.fuente_excel_class import FuenteExcel

def saludar():
    print("Hola la función saludar() te escribe")

def read_excel():
    ventas_excel = FuenteExcel( ruta="ventas_2026.xlsx", hoja="hoja2026" )
    return ventas_excel.to_dataframe()

def main():
    print("-- Inicio del proceso de automatización --")

    print( sys.argv )

    if len(sys.argv) < 2:
        print("El uso de este programa incluye un argumento <DatosExcel | Saludar> ")
        return

    opcion = sys.argv[1]
    if opcion == "DatosExcel":
        excel = read_excel()
        pprint(excel)
    elif opcion == "Saludar":
        saludar()
    else:
        print(f"Opción a ejecutar no valida ({opcion}) argumentos validos <DatosExcel | Saludar> ")


# Saber si es el programa principal
if __name__ == "__main__":
    main()
