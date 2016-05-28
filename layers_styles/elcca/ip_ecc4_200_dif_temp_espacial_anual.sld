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
                  <ogc:PropertyName>diferencia</ogc:PropertyName>
<!-- Definición de los intervalos y colores -->
             <ogc:Literal>-100</ogc:Literal>
             <ogc:Literal>#00008b</ogc:Literal>
       
             <ogc:Literal>0</ogc:Literal>
             <ogc:Literal>#3288bd</ogc:Literal>
    
             <ogc:Literal>0.5</ogc:Literal>
             <ogc:Literal>#66c2a5</ogc:Literal>
             
             <ogc:Literal>1</ogc:Literal>
             <ogc:Literal>#abdda4</ogc:Literal>
    
             <ogc:Literal>1.5</ogc:Literal>
             <ogc:Literal>#e6f598</ogc:Literal>
             
             <ogc:Literal>2</ogc:Literal>
             <ogc:Literal>#ffffbf</ogc:Literal>
             
             <ogc:Literal>2.5</ogc:Literal>
             <ogc:Literal>#fee08b</ogc:Literal>
             
             <ogc:Literal>3</ogc:Literal>
             <ogc:Literal>#fdae61</ogc:Literal>
       
       <ogc:Literal>3.5</ogc:Literal>
             <ogc:Literal>#f46d43</ogc:Literal>
       
       <ogc:Literal>4</ogc:Literal>
             <ogc:Literal>#d53e4f</ogc:Literal>
             
             <ogc:Literal>100</ogc:Literal>
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
            <ogc:Literal>-100</ogc:Literal>
             <ogc:Literal>#00008b</ogc:Literal>
       
             <ogc:Literal>0</ogc:Literal>
             <ogc:Literal>#3288bd</ogc:Literal>
    
             <ogc:Literal>0.5</ogc:Literal>
             <ogc:Literal>#66c2a5</ogc:Literal>
             
             <ogc:Literal>1</ogc:Literal>
             <ogc:Literal>#abdda4</ogc:Literal>
    
             <ogc:Literal>1.5</ogc:Literal>
             <ogc:Literal>#e6f598</ogc:Literal>
             
             <ogc:Literal>2</ogc:Literal>
             <ogc:Literal>#ffffbf</ogc:Literal>
             
             <ogc:Literal>2.5</ogc:Literal>
             <ogc:Literal>#fee08b</ogc:Literal>
             
             <ogc:Literal>3</ogc:Literal>
             <ogc:Literal>#fdae61</ogc:Literal>
       
             <ogc:Literal>3.5</ogc:Literal>
             <ogc:Literal>#f46d43</ogc:Literal>
       
              <ogc:Literal>4</ogc:Literal>
             <ogc:Literal>#d53e4f</ogc:Literal>
             
             <ogc:Literal>100</ogc:Literal>
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