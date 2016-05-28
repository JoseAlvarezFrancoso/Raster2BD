#Script para la conversion de multiples archivos GeoTIFF de temperatura media de los ELCCA en unico archivo de texto delimitado por espacios
#Hecho por Jose I. Alvarez
from __future__ import division
import sys
import datetime
from osgeo import gdal, ogr, osr
from osgeo.gdalconst import GA_ReadOnly, GA_Update
 # Funcion para sobreescribir el mensaje de porcentaje completado 
def restart_line():
 sys.stdout.write('\r')
 sys.stdout.flush()
 # Funcion principal
def elcca2txt_tmed(ruta_input,archivo_salida):
 print 'Iniciado a las: ' + datetime.datetime.strftime(datetime.datetime.now(), '%Y-%m-%d %H:%M:%S') 
 archivo_salida2 = open(archivo_salida, 'a')
 for id_modelo in range(1,5):
  if id_modelo == 1:
   modelo_name = "bcm2"
  elif id_modelo == 2:
   modelo_name = "cncm3"
  elif id_modelo == 3:
   modelo_name = "echam5"
  elif id_modelo == 4:
   modelo_name = "egmam"
  else:
   print "Error en el nombre del modelo"
   raise SystemExit  
  for id_escenario in range(2,5):
   if id_escenario == 2:
    esc_name = "sra1b"
   elif id_escenario == 3:
    esc_name = "sra2"
   elif id_escenario == 4:
    esc_name = "srb1"
   else:
    print "Error en el bucle escenario"
    raise SystemExit  
   for id_periodo in range (1,4):
    if id_periodo == 1:
     per_name = "d2011-2040"
     per_name2 = "11-40"
    elif id_periodo == 2:
     per_name = "d2041-2070"
     per_name2 = "41-70"
    elif id_periodo == 3:
     per_name = "d2071-2099"
     per_name2 = "71-99"
    else:
     print "Error en el bucle periodo"
     raise SystemExit
    for mes in range (1,13):
     mes_name = "tmed" + per_name2 + '_' + str(mes)
     archivo = ruta_input + "/ELCC4_vr_term/InfGeografica/InfRaster/TIFF" + "/" + modelo_name + "/" + esc_name + "/" + per_name + "/" + mes_name + ".tif"
  #  archivo = archivo.encode('utf-8')
     dataset = gdal.Open( archivo, GA_ReadOnly )
     band = dataset.GetRasterBand(1)
     cols = dataset.RasterXSize
     rows = dataset.RasterYSize
     # Iteramos filas y columnas y definimos valor
     data = []
     band_data = band.ReadAsArray(0, 0, cols, rows)
     data.append(band_data)
     id_punto = 1
     for r in range(rows):
      for c in range(cols):
       # Gestion de los null
       valor = data[0][r,c]
       if valor > -1000:
   #     escribir en el csv
         archivo_salida2.write(str(id_punto) + " " + str(id_modelo) + " " + str(id_escenario) + " " + str(id_periodo) + " " + str(mes) + " " + str(valor) + "\n")
       id_punto+=1
     procesado = "Modelo: " + modelo_name + "---" + "Escenario: " + esc_name + "---" + "Periodo: " + per_name2 + "---" + "Mes:" + str(mes)
     sys.stdout.write(' Procesando: ' + procesado
     sys.stdout.flush()
     restart_line() 
 archivo_salida2.close()
 print 'Finalizado a las: ' + datetime.datetime.strftime(datetime.datetime.now(), '%Y-%m-%d %H:%M:%S')
if __name__ == '__main__':
 # El usuario  tiene que definir la ruta de archivos de entrada y la ruta y el nombre del archivo de salida en una cadena de texto
 if len(sys.argv) < 3 or len(sys.argv) > 3:
  print "uso: <cadena con ruta y nombre de archivo txt>"
  raise SystemExit
 ruta_input = sys.argv[1] 
 archivo_salida = sys.argv[2]
 elcca2txt_tmed(ruta_input,archivo_salida)
 raise SystemExit