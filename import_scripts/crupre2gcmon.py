#Script para la importacion de datos netCDF de la CRU en PostGIS
#Hecho por Jose I. Alvarez
import sys
import datetime
import psycopg2
from osgeo import gdal, ogr, osr
from osgeo.gdalconst import GA_ReadOnly, GA_Update
def restart_line():
    sys.stdout.write('\r')
    sys.stdout.flush()
def cru2gcmon(pg_connection_string, agno, variable, input_cru):
 # Registra drivers gdal
 gdal.AllRegister()
 # Driver de postgis, para poder crear la tabla
 driver = ogr.GetDriverByName('PostgreSQL')
 # Hora de comienzo
 hora_ini = datetime.datetime.strftime(datetime.datetime.now(), '%Y-%m-%d %H:%M:%S')
 print 'Iniciado a las:  ' + hora_ini
 # Leemos la primera banda del dataset (el mes que se indique)
 mes = 1
 n_meses = (2014 - int(agno) + 1) * 12
 agno_fin = str(2014)
 archivo = input_cru
 dataset = gdal.Open(archivo, GA_ReadOnly )
 band1n = ((int(agno) - 1901) * 12) + int(mes)
 band1 = dataset.GetRasterBand(1)
 cols = dataset.RasterXSize
 rows = dataset.RasterYSize
 bands = dataset.RasterCount
 # Creamos la tabla Postgis para nuestros datos en el esquema public
 table_name = 'cru_' + variable + '_desde_' + str(agno)
 con = psycopg2.connect(pg_connection_string)
 cur = con.cursor()
 orden_exec = "CREATE TABLE " + table_name + " (id VARCHAR(20), mes INTEGER, agno INTEGER, " + variable + "_mes NUMERIC)"
 cur.execute(orden_exec)
 # Definimos tamano de pixel y origen de coordenadas 
 pixelWidth = 0.5
 pixelHeight = -0.5
 xOrigin = -179.75
 yOrigin = 89.75
 #definimos variables para campos mes y agno
 mes_val = int(mes)
 agno_val =  int(agno)
 n_iter = band1n + n_meses
 #iteramos bandas
 #contador
 id_n=0
 for b in range(band1n,n_iter):
  id_n+=1
  porcent = id_n * 100/ n_meses
  sys.stdout.write('porcentaje completado: ' + str(porcent))
  sys.stdout.flush()
  restart_line()
  band = dataset.GetRasterBand(b)
  data = []
  band_data = band.ReadAsArray(0, 0, cols, rows)
  data.append(band_data)
 # Iteramos filas y columnas y definimos x e y para crear la geometria
  for r in range(rows):
   y = yOrigin + (r * pixelHeight)
   for c in range(cols):
    x = xOrigin + (c * pixelWidth)
    # Gestion de los null
    value = int(data[0][r,c])
	#id_coord para comprobaciones
    id_value = str(int(x*100)) + 'x' + str(int(y*100)) + 'y'
    if value < 20000:
     # Para cada celdilla, anadimos un punto en la capa Postgis
     orden_exe = "INSERT INTO " + table_name + " VALUES('" + id_value + "','" + str(mes_val) + "','" + str(agno_val) + "','" + str(value) + "')" 
     cur.execute(orden_exe)
    # Definimos la geometria de la capa y finalizamos su creacion
  if mes_val == 12:
   mes_val = 1
   agno_val+=1
  else:
   mes_val+=1
 con.commit()
 print 'Finalizado a las: ' + datetime.datetime.strftime(datetime.datetime.now(), '%Y-%m-%d %H:%M:%S') 
if __name__ == '__main__':
    # El usuario tiene que definir 4 parametros: la cadena de conexion Postgis GDAL, agno de comienzo, variable y archivo netCDF de entrada.
    if len(sys.argv) < 5 or len(sys.argv) > 5:
        print "uso: <GDAL PostGIS connection string> <agno> <variable><input_cru>"
        raise SystemExit
    pg_connection_string = sys.argv[1]
    agno = sys.argv[2]
    variable = sys.argv[3]
	input_cru = sys.argv[4]
    cru2gcmon(pg_connection_string, agno, variable)
    raise SystemExit 
