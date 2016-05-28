<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:gml='http://www.opengis.net/gml' xmlns:ogc='http://www.opengis.net/ogc' xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' version='1.0.0' xsi:schemaLocation='http://www.opengis.net/sld StyledLayerDescriptor.xsd' xmlns='http://www.opengis.net/sld' >
  <NamedLayer>
    <Name>Annual_Maximum_temperature</Name>
    <UserStyle>
      <FeatureTypeStyle>
   <Rule>
          <Name>Annual_Maximum_temperature</Name>
          <Title>Annual_Maximum_temperature</Title>
<PolygonSymbolizer>
   <Fill>
     <CssParameter name="fill">
       <ogc:Function name="Interpolate">
         <!-- Property to transform -->
         <ogc:PropertyName>temp_max_anual</ogc:PropertyName>

         <!-- Mapping curve definition pairs (input, output) -->
         <ogc:Literal>-1000000</ogc:Literal>
         <ogc:Literal>#000000</ogc:Literal>

         <ogc:Literal>-32</ogc:Literal>
         <ogc:Literal>#2166ac</ogc:Literal>

         <ogc:Literal>-16</ogc:Literal>
         <ogc:Literal>#4393c3</ogc:Literal>

         <ogc:Literal>-8</ogc:Literal>
         <ogc:Literal>#92c5de</ogc:Literal>
         
         <ogc:Literal>-4</ogc:Literal>
         <ogc:Literal>#d1e5f0</ogc:Literal>

         <ogc:Literal>0</ogc:Literal>
         <ogc:Literal>#f7f7f7</ogc:Literal>
         
         <ogc:Literal>4</ogc:Literal>
         <ogc:Literal>#fddbc7</ogc:Literal>
         
         <ogc:Literal>8</ogc:Literal>
         <ogc:Literal>#f4a582</ogc:Literal>
         
         <ogc:Literal>16</ogc:Literal>
         <ogc:Literal>#d6604d</ogc:Literal>
         
         <ogc:Literal>32</ogc:Literal>
         <ogc:Literal>#b2182b</ogc:Literal>
         
         <ogc:Literal>40</ogc:Literal>
         <ogc:Literal>#67001f</ogc:Literal>        
         
         <ogc:Literal>1000000</ogc:Literal>
         <ogc:Literal>#000000</ogc:Literal>

         <!-- Interpolation method -->
         <ogc:Literal>color</ogc:Literal>

         <!-- Interpolation mode - defaults to linear -->
       </ogc:Function>
     </CssParameter>
   </Fill>
</PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>