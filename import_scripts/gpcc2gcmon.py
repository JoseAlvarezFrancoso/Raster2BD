import sys
from osgeo import gdal, ogr, osr
from osgeo.gdalconst import GA_ReadOnly, GA_Update
def gpcc2gcm(pg_connection_string, mes, agno, input_file):
 # Registra drivers gdal
 gdal.AllRegister()
 # Driver de postgis, para poder crear la tabla
 driver = ogr.GetDriverByName('PostgreSQL')
 # SRC 4326
 srs = osr.SpatialReference()
 srs.ImportFromEPSG(4326)
 # Leemos la ultima banda del dataset (ultimo mes)
 dataset = gdal.Open( input_file, GA_ReadOnly )
 subdatasets = dataset.GetSubDatasets()
 subdataset_p = subdatasets[0][0]
 sds = gdal.Open(subdataset_p, gdal.GA_ReadOnly)
 cols = sds.RasterXSize
 rows = sds.RasterYSize
 # Creamos la tabla Postgis llamada "ghcn_t" para nuestros datos en el esquema public
 table_name = 'gpcc_p_' + mes + agno
 pg_ds = ogr.Open(pg_connection_string, GA_Update )
 pg_layer = pg_ds.CreateLayer(table_name, srs = srs, geom_type=ogr.wkbPoint,
 options = [
  'GEOMETRY_NAME=geom',# Nombre del campo de geometria
  'OVERWRITE=YES', # Borra y crea la tabla de nuevo
  'SCHEMA=public',# Nombre del esquema
 ])
 print 'Creada la tabla %s.' % table_name
 # Creamos el campo "temp" y campo "id_point" en la tabla
 fd_mes = ogr.FieldDefn('mes', ogr.OFTInteger)
 pg_layer.CreateField(fd_mes)
 print 'Creado el campo mes.'
 fd_agno = ogr.FieldDefn('agno', ogr.OFTInteger)
 pg_layer.CreateField(fd_agno)
 print 'Creado el campo agno.'
 fd_temp = ogr.FieldDefn('p_mes', ogr.OFTReal)
 pg_layer.CreateField(fd_temp)
 print 'Creado el campo p_mes.'
 # get georeference transformation information
 pixelWidth = 1
 pixelHeight = 1
 xOrigin = -179.5
 yOrigin = 89.5

 # Iteramos filas y columnas y definimos x e y
 data = []
 band = sds.GetRasterBand(1)
 band_data = band.ReadAsArray(0, 0, cols, rows)
 data.append(band_data)
 for r in range(rows):
  y = yOrigin - (r * pixelHeight)
  for c in range(cols):
   x = xOrigin + (c * pixelWidth)
   # Para cada celdilla, anadimos un punto en la capa Postgis
   point_wkt = 'POINT(%s %s)' % (x, y)
   point = ogr.CreateGeometryFromWkt(point_wkt)
   featureDefn = pg_layer.GetLayerDefn()
   feature = ogr.Feature(featureDefn)
   # 
   value = float(data[0][r,c])
   # Gestion de los null
   if value < 0:
    feature.UnsetField('p_mes')
   else:
    feature.SetField('p_mes', value)
   feature.SetField('mes', mes)
   feature.SetField('agno', agno)
#   print 'Guardando el valor: %s para la variable %s en el punto x: %s, y: %s' % (value, 'temp', x, y)
   # Definimos la geometria de la capa y finalizamos su creacion
   feature.SetGeometry(point)
   pg_layer.CreateFeature(feature)

if __name__ == '__main__':
    # El usuario tiene que definir cinco parametros: la cadena de conexion Postgis GDAL, mes, agno y archivo de entrada
    if len(sys.argv) < 5 or len(sys.argv) > 5:
        print "uso: <GDAL PostGIS connection string> <mes> <agno> <nombre del archivo de entrada>"
        raise SystemExit
    pg_connection_string = sys.argv[1]
    mes = sys.argv[2]
    agno = sys.argv[3]
	input_file = sys.argv[4]
    gpcc2gcm(pg_connection_string, mes, agno, input_file)
    raise SystemExit