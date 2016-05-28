#Script para la importacion de datos netCDF de un mes de la GHCN-CAMS en PostGIS.
#Hecho por Jose I. Alvarez
import sys
from osgeo import gdal, ogr, osr
from osgeo.gdalconst import GA_ReadOnly, GA_Update
 # Funcion para sobreescribir el mensaje de porcentaje completado 
def restart_line():
 sys.stdout.write('\r')
 sys.stdout.flush()
 # Funcion principal
def ghcn2gcmon(pg_connection_string, mes, agno, input_file):
 # Registra drivers gdal
 gdal.AllRegister()
 # Driver de postgis, para poder crear la tabla
 driver = ogr.GetDriverByName('PostgreSQL')
 # Definimos el srs, que es 4326
 srs = osr.SpatialReference()
 srs.ImportFromEPSG(4326)
 # Leemos la banda del dataset (ultimo mes)
 dataset = gdal.Open( input_file, GA_ReadOnly )
 band = dataset.GetRasterBand(1)
 cols = dataset.RasterXSize
 rows = dataset.RasterYSize
 bands = dataset.RasterCount
 # Creamos la tabla Postgis llamada "ghcn_t" para nuestros datos en el esquema public
 table_name = 'ghcn_t_' + mes + agno
 pg_ds = ogr.Open(pg_connection_string, GA_Update )
 pg_layer = pg_ds.CreateLayer(table_name, srs = srs, geom_type=ogr.wkbPoint,
 options = [
  'GEOMETRY_NAME=geom',# Nombre del campo de geometria
  'OVERWRITE=YES', # Borra y crea la tabla de nuevo
  'SCHEMA=public',# Nombre del esquema
 ])
 print 'Creada la tabla %s.' % table_name
 # Creamos campos en la tabla
 fd_mes = ogr.FieldDefn('mes', ogr.OFTInteger)
 pg_layer.CreateField(fd_mes)
 print 'Creado el campo mes.'
 fd_agno = ogr.FieldDefn('agno', ogr.OFTInteger)
 pg_layer.CreateField(fd_agno)
 print 'Creado el campo agno.'
 fd_temp = ogr.FieldDefn('temp_mes', ogr.OFTReal)
 pg_layer.CreateField(fd_temp)
 print 'Creado el campo temp_mes.'
 # Definimos tamano de pixel y origen de coordenadas 
 pixelWidth = 0.5
 pixelHeight = 0.5
 xOrigin = 0.25
 yOrigin = 89.75
 # Iteramos filas y columnas y definimos x e y
 data = []
 band_data = band.ReadAsArray(0, 0, cols, rows)
 data.append(band_data)
 id_n = 0
 for r in range(rows):
  y = yOrigin - (r * pixelHeight)
  for c in range(cols):
   if c <=359:
    x = xOrigin + (c * pixelWidth)
   else:
    x = (c * pixelWidth) - 359.75
   # Para cada celdilla, anadimos un punto en la capa Postgis
   point_wkt = 'POINT(%s %s)' % (x, y)
   point = ogr.CreateGeometryFromWkt(point_wkt)
   featureDefn = pg_layer.GetLayerDefn()
   feature = ogr.Feature(featureDefn)
   # Definimos el valor y lo anadimos al campo "temp_mes". Grados Kelvin (restamos 273)
   value = float(data[0][r,c])- 273.15
   # Gestion de los null
   if value > 100:
    feature.UnsetField('temp_mes')
   else:
    feature.SetField('temp_mes', value)
   feature.SetField('mes', mes)
   feature.SetField('agno', agno)
   id_n+=1
   porcent = id_n * 100/ 259200
   sys.stdout.write('porcentaje completado: ' + str(porcent))
   sys.stdout.flush()
   restart_line()
   # print 'Guardando el valor: %s para la variable %s en el punto x: %s, y: %s' % (value, 'temp_mes', x, y)
   # Definimos la geometria de la capa y finalizamos su creacion
   feature.SetGeometry(point)
   pg_layer.CreateFeature(feature)
if __name__ == '__main__':
    # El usuario tiene que definir la cadena de conexion Postgis GDAL, el mes, el agno y la ruta y nombre de archivo netCDF de entrada
    if len(sys.argv) < 5 or len(sys.argv) > 5:
        print "uso: <GDAL PostGIS connection string> <mes> <agno> <input_file>"
        raise SystemExit
    pg_connection_string = sys.argv[1]
    mes = sys.argv[2]
    agno = sys.argv[3]
	input_file = sys.argv[4]
    ghcn2gcmon(pg_connection_string, mes, agno, input_file)
    raise SystemExit