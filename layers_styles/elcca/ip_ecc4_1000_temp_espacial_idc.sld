<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:gml='http://www.opengis.net/gml' xmlns:ogc='http://www.opengis.net/ogc' xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' version='1.0.0' xsi:schemaLocation='http://www.opengis.net/sld StyledLayerDescriptor.xsd' xmlns='http://www.opengis.net/sld' >
  <NamedLayer>
    <Name>Monthly_temp</Name>
    <UserStyle>
    <FeatureTypeStyle>
      <Rule>
        <Name>Monthly_temp</Name>
        <Title>Monthly_temp</Title>
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
                  <ogc:PropertyName>valor</ogc:PropertyName>
<!-- Definición de los intervalos y colores -->
         <ogc:Literal>-1.2</ogc:Literal>      
         <ogc:Literal>#072646</ogc:Literal>
                 
         <ogc:Literal>0</ogc:Literal>         
         <ogc:Literal>#053061</ogc:Literal>

         <ogc:Literal>2</ogc:Literal>
         <ogc:Literal>#2166ac</ogc:Literal>

         <ogc:Literal>4</ogc:Literal>
         <ogc:Literal>#4393c3</ogc:Literal>

         <ogc:Literal>8</ogc:Literal>
         <ogc:Literal>#92c5de</ogc:Literal>

         <ogc:Literal>12</ogc:Literal>
         <ogc:Literal>#f7f7f7</ogc:Literal>
         
         <ogc:Literal>15</ogc:Literal>
         <ogc:Literal>#fddbc7</ogc:Literal>

         <ogc:Literal>20</ogc:Literal>
         <ogc:Literal>#ef8a62</ogc:Literal>
         
         <ogc:Literal>25</ogc:Literal>
         <ogc:Literal>#d6604d</ogc:Literal>
         
         <ogc:Literal>30</ogc:Literal>
         <ogc:Literal>#67001f</ogc:Literal>
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
                  <ogc:PropertyName>valor</ogc:PropertyName>
<!-- Definición de los intervalos y colores -->
         <ogc:Literal>-1.2</ogc:Literal>      
         <ogc:Literal>#072646</ogc:Literal>
                 
         <ogc:Literal>0</ogc:Literal>         
         <ogc:Literal>#053061</ogc:Literal>

         <ogc:Literal>2</ogc:Literal>
         <ogc:Literal>#2166ac</ogc:Literal>

         <ogc:Literal>4</ogc:Literal>
         <ogc:Literal>#4393c3</ogc:Literal>

         <ogc:Literal>8</ogc:Literal>
         <ogc:Literal>#92c5de</ogc:Literal>

         <ogc:Literal>12</ogc:Literal>
         <ogc:Literal>#f7f7f7</ogc:Literal>
         
         <ogc:Literal>15</ogc:Literal>
         <ogc:Literal>#fddbc7</ogc:Literal>

         <ogc:Literal>20</ogc:Literal>
         <ogc:Literal>#ef8a62</ogc:Literal>
         
         <ogc:Literal>25</ogc:Literal>
         <ogc:Literal>#d6604d</ogc:Literal>
         
         <ogc:Literal>30</ogc:Literal>
         <ogc:Literal>#67001f</ogc:Literal>
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