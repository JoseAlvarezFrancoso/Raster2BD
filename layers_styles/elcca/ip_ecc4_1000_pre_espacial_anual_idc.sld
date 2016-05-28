<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:gml='http://www.opengis.net/gml' xmlns:ogc='http://www.opengis.net/ogc' xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' version='1.0.0' xsi:schemaLocation='http://www.opengis.net/sld StyledLayerDescriptor.xsd' xmlns='http://www.opengis.net/sld' >
  <NamedLayer>
    <Name>Annual_rainfall</Name>
    <UserStyle>
    <FeatureTypeStyle>
      <Rule>
        <Name>Annual_rainfall</Name>
        <Title>Annual_rainfall</Title>
        <MinScaleDenominator>50001</MinScaleDenominator>
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
                  <ogc:PropertyName>pre_anual</ogc:PropertyName>
<!-- Definición de los intervalos y colores -->
                  <ogc:Literal>0</ogc:Literal>
                  <ogc:Literal>#ffffff</ogc:Literal> 
                  
                  <ogc:Literal>200</ogc:Literal>
                  <ogc:Literal>#ffffcc</ogc:Literal>
          
                  <ogc:Literal>400</ogc:Literal>
                  <ogc:Literal>#c7e9b4</ogc:Literal>
          
                  <ogc:Literal>600</ogc:Literal>
                  <ogc:Literal>#7fcdbb</ogc:Literal>
          
                  <ogc:Literal>800</ogc:Literal>
                  <ogc:Literal>#41b6c4</ogc:Literal>
          
                  <ogc:Literal>1000</ogc:Literal>
                  <ogc:Literal>#1d91c0</ogc:Literal>
          
                  <ogc:Literal>1200</ogc:Literal>
                  <ogc:Literal>#225ea8</ogc:Literal>
          
                  <ogc:Literal>1400</ogc:Literal>
                  <ogc:Literal>#0c2c84</ogc:Literal>  
          
                  <ogc:Literal>1000000</ogc:Literal>
                  <ogc:Literal>#FA7FD9</ogc:Literal>
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
                  <ogc:PropertyName>pre_anual</ogc:PropertyName>
<!-- Definición de los intervalos y colores -->
                  <ogc:Literal>0</ogc:Literal>
                  <ogc:Literal>#ffffff</ogc:Literal> 
                  
                  <ogc:Literal>200</ogc:Literal>
                  <ogc:Literal>#ffffcc</ogc:Literal>
          
                  <ogc:Literal>400</ogc:Literal>
                  <ogc:Literal>#c7e9b4</ogc:Literal>
          
                  <ogc:Literal>600</ogc:Literal>
                  <ogc:Literal>#7fcdbb</ogc:Literal>
          
                  <ogc:Literal>800</ogc:Literal>
                  <ogc:Literal>#41b6c4</ogc:Literal>
          
                  <ogc:Literal>1000</ogc:Literal>
                  <ogc:Literal>#1d91c0</ogc:Literal>
          
                  <ogc:Literal>1200</ogc:Literal>
                  <ogc:Literal>#225ea8</ogc:Literal>
          
                  <ogc:Literal>1400</ogc:Literal>
                  <ogc:Literal>#0c2c84</ogc:Literal>  
          
                  <ogc:Literal>1000000</ogc:Literal>
                  <ogc:Literal>#FA7FD9</ogc:Literal>
<!-- Método de interpolación -->
                  <ogc:Literal>color</ogc:Literal>
<!-- Modo de interpolación - lineal por defecto -->
                </ogc:Function>
              </CssParameter>
        </Stroke>
            </Mark>
            <Size>1300</Size>
          </Graphic>
        </PointSymbolizer>
      </Rule>
    </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>