<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:gml='http://www.opengis.net/gml' xmlns:ogc='http://www.opengis.net/ogc' xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' version='1.0.0' xsi:schemaLocation='http://www.opengis.net/sld StyledLayerDescriptor.xsd' xmlns='http://www.opengis.net/sld' >
  <NamedLayer>
    <Name>Anual_rainfall</Name>
    <UserStyle>
    <FeatureTypeStyle>
      <Rule>
        <Name>Anual_rainfall</Name>
                <Title>Anual_rainfall</Title>
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
                  <ogc:PropertyName>diferencia</ogc:PropertyName>
<!-- Definición de los intervalos y colores -->
                  <ogc:Literal>-1000000</ogc:Literal>
                  <ogc:Literal>#000000</ogc:Literal>
          
                  <ogc:Literal>-100</ogc:Literal>
          <ogc:Literal>#a50026</ogc:Literal>          
          
                  <ogc:Literal>-60</ogc:Literal>
          <ogc:Literal>#d73027</ogc:Literal>
                  
                  <ogc:Literal>-30</ogc:Literal>
          <ogc:Literal>#f46d43</ogc:Literal> 
          
                  <ogc:Literal>-12</ogc:Literal>
                  <ogc:Literal>#e34a1b</ogc:Literal>
          
                  <ogc:Literal>-8</ogc:Literal>          
                  <ogc:Literal>#fdae61</ogc:Literal>
          
                  <ogc:Literal>-2</ogc:Literal>          
                  <ogc:Literal>#fee090</ogc:Literal>
          
                  <ogc:Literal>0</ogc:Literal>          
                  <ogc:Literal>#ffffbf</ogc:Literal>
          
                  <ogc:Literal>2</ogc:Literal>          
                  <ogc:Literal>#e0f3f8</ogc:Literal>
          
                  <ogc:Literal>8</ogc:Literal>          
                  <ogc:Literal>#abd9e9</ogc:Literal>
          
                  <ogc:Literal>12</ogc:Literal>          
                  <ogc:Literal>#74add1</ogc:Literal>
          
                  <ogc:Literal>30</ogc:Literal>          
                  <ogc:Literal>#5385c8</ogc:Literal>
          
                  <ogc:Literal>60</ogc:Literal>          
                  <ogc:Literal>#4575b4</ogc:Literal>     
          
                  <ogc:Literal>100</ogc:Literal>
          <ogc:Literal>#313695</ogc:Literal>
          
                  <ogc:Literal>1000000</ogc:Literal>
                  <ogc:Literal>#000000</ogc:Literal>
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
                  <ogc:PropertyName>diferencia</ogc:PropertyName>
<!-- Definición de los intervalos y colores -->
                  <ogc:Literal>-1000000</ogc:Literal>
                  <ogc:Literal>#000000</ogc:Literal>
          
                  <ogc:Literal>-100</ogc:Literal>
          <ogc:Literal>#a50026</ogc:Literal>          
          
                  <ogc:Literal>-60</ogc:Literal>
          <ogc:Literal>#d73027</ogc:Literal>
                  
                  <ogc:Literal>-30</ogc:Literal>
          <ogc:Literal>#f46d43</ogc:Literal> 
          
                  <ogc:Literal>-12</ogc:Literal>
                  <ogc:Literal>#e34a1b</ogc:Literal>
          
                  <ogc:Literal>-8</ogc:Literal>          
                  <ogc:Literal>#fdae61</ogc:Literal>
          
                  <ogc:Literal>-2</ogc:Literal>          
                  <ogc:Literal>#fee090</ogc:Literal>
          
                  <ogc:Literal>0</ogc:Literal>          
                  <ogc:Literal>#ffffbf</ogc:Literal>
          
                  <ogc:Literal>2</ogc:Literal>          
                  <ogc:Literal>#e0f3f8</ogc:Literal>
          
                  <ogc:Literal>8</ogc:Literal>          
                  <ogc:Literal>#abd9e9</ogc:Literal>
          
                  <ogc:Literal>12</ogc:Literal>          
                  <ogc:Literal>#74add1</ogc:Literal>
          
                  <ogc:Literal>30</ogc:Literal>          
                  <ogc:Literal>#5385c8</ogc:Literal>
          
                  <ogc:Literal>60</ogc:Literal>          
                  <ogc:Literal>#4575b4</ogc:Literal>     
          
                  <ogc:Literal>100</ogc:Literal>
          <ogc:Literal>#313695</ogc:Literal>
          
                  <ogc:Literal>1000000</ogc:Literal>
                  <ogc:Literal>#000000</ogc:Literal>
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