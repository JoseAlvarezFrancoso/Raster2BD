from __future__ import division
import sys
import logging
import datetime
import psycopg2
from osgeo import gdal, ogr, osr
from osgeo.gdalconst import GA_ReadOnly, GA_Update
 # Funcion para sobreescribir el mensaje de porcentaje completado 
def restart_line():
 sys.stdout.write('\r')
 sys.stdout.flush()
 # Funcion principal
def importar_modelos(output):
 print 'Iniciado a las: ' + datetime.datetime.strftime(datetime.datetime.now(), '%Y-%m-%d %H:%M:%S') 
 archivo_salida2 = open(output, 'a')
 id_por = 1
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
     mes_name = "prc" + per_name2 + '_' + str(mes)
     archivo = "/mnt/disco1000/JOSELITO/CAMBIA/DATOS_03032016/ELCC4_vr_pluv/InfGeografica/InfRaster/TIFF" + "/" + modelo_name + "/" + esc_name + "/" + per_name + "/" + mes_name + ".tif"
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
     porcent = "Modelo: " + modelo_name + "---" + "Escenario: " + esc_name + "---" + "Periodo: " + per_name2 + "---" + "Mes:" + str(mes)
     porcent_n = round((id_por*100/432),1)
     sys.stdout.write(' Procesando: ' + porcent + ' Porcentaje:' + str(porcent_n))
     sys.stdout.flush()
     restart_line() 
     id_por+=1 
 archivo_salida2.close()
 print 'Finalizado a las: ' + datetime.datetime.strftime(datetime.datetime.now(), '%Y-%m-%d %H:%M:%S')
if __name__ == '__main__':
 # El usuario tiene que definir una cadena con la ruta con el nombre del archivo de salida
 if len(sys.argv) < 2 or len(sys.argv) > 2:
  print "uso: <cadena con ruta y nombre de archivo de salida>"
  raise SystemExit
 output = sys.argv[1]
 importar_modelos(output)
 raise SystemExit