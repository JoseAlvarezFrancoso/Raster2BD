<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:gml='http://www.opengis.net/gml' xmlns:ogc='http://www.opengis.net/ogc' xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' version='1.0.0' xsi:schemaLocation='http://www.opengis.net/sld StyledLayerDescriptor.xsd' xmlns='http://www.opengis.net/sld' >
  <NamedLayer>
    <Name>Anual_temp</Name>
    <UserStyle>
    <FeatureTypeStyle>
      <Rule>
        <Name>Anual_temp</Name>
        <Title>Anual_temp</Title>
        <MinScaleDenominator>10000</MinScaleDenominator>
        <MaxScaleDenominator>50000</MaxScaleDenominator>
<!-- Tipo de símbolo (puntual, rectángulo de 1000 metros de lado). Cambio del tamaño de los símbolos según la escala (uom) -->
        <PointSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
          <Graphic>
            <Mark>
            <WellKnownName>square</WellKnownName>
<!-- Relleno de los rectángulos con gradación de colores -->
              <Fill>
              <CssParameter name="fill">
<!-- Función a utilizar: interpolación del color -->
                <ogc:Function name="Interpolate">
<!-- Propiedad a transformar -->
                  <ogc:PropertyName>temp_med_anual</ogc:PropertyName>
<!-- Definición de los intervalos y colores -->
         <ogc:Literal>-1000</ogc:Literal>      
         <ogc:Literal>#000000</ogc:Literal>
                 
         <ogc:Literal>0</ogc:Literal>         
         <ogc:Literal>#fff7ec</ogc:Literal>

         <ogc:Literal>2</ogc:Literal>
         <ogc:Literal>#fee8c8</ogc:Literal>

         <ogc:Literal>4</ogc:Literal>
         <ogc:Literal>#fdd49e</ogc:Literal>

         <ogc:Literal>8</ogc:Literal>
         <ogc:Literal>#fdbb84</ogc:Literal>
         
         <ogc:Literal>12</ogc:Literal>
         <ogc:Literal>#fc8d59</ogc:Literal>

         <ogc:Literal>18</ogc:Literal>
         <ogc:Literal>#ef6548</ogc:Literal>
         
         <ogc:Literal>20</ogc:Literal>
         <ogc:Literal>#d7301f</ogc:Literal>
                 
         <ogc:Literal>22</ogc:Literal>
         <ogc:Literal>#b30000</ogc:Literal>
         
         <ogc:Literal>1000</ogc:Literal>
         <ogc:Literal>#7f0000</ogc:Literal>
<!-- Método de interpolación -->
                  <ogc:Literal>color</ogc:Literal>
<!-- Modo de interpolación - lineal por defecto -->
                </ogc:Function>
              </CssParameter>
              </Fill>
        <Stroke>
        <CssParameter name="Stroke">
<!-- Función a utilizar: interpolación del color -->
                <ogc:Function name="Interpolate">
<!-- Propiedad a transformar -->
                  <ogc:PropertyName>temp_med_anual</ogc:PropertyName>
<!-- Definición de los intervalos y colores -->
         <ogc:Literal>-1000</ogc:Literal>      
         <ogc:Literal>#000000</ogc:Literal>
                 
         <ogc:Literal>0</ogc:Literal>         
         <ogc:Literal>#fff7ec</ogc:Literal>

         <ogc:Literal>2</ogc:Literal>
         <ogc:Literal>#fee8c8</ogc:Literal>

         <ogc:Literal>4</ogc:Literal>
         <ogc:Literal>#fdd49e</ogc:Literal>

         <ogc:Literal>8</ogc:Literal>
         <ogc:Literal>#fdbb84</ogc:Literal>
         
         <ogc:Literal>12</ogc:Literal>
         <ogc:Literal>#fc8d59</ogc:Literal>

         <ogc:Literal>18</ogc:Literal>
         <ogc:Literal>#ef6548</ogc:Literal>
         
         <ogc:Literal>20</ogc:Literal>
         <ogc:Literal>#d7301f</ogc:Literal>
                 
         <ogc:Literal>22</ogc:Literal>
         <ogc:Literal>#b30000</ogc:Literal>
         
         <ogc:Literal>1000</ogc:Literal>
         <ogc:Literal>#7f0000</ogc:Literal>
<!-- Método de interpolación -->
                  <ogc:Literal>color</ogc:Literal>
<!-- Modo de interpolación - lineal por defecto -->
                </ogc:Function>
              </CssParameter>
        </Stroke>
            </Mark>
            <Size>300</Size>
          </Graphic>
        </PointSymbolizer>
      </Rule>
    </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>