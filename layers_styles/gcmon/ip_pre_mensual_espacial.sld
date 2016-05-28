<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:gml='http://www.opengis.net/gml' xmlns:ogc='http://www.opengis.net/ogc' xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' version='1.0.0' xsi:schemaLocation='http://www.opengis.net/sld StyledLayerDescriptor.xsd' xmlns='http://www.opengis.net/sld' >
  <NamedLayer>
    <Name>Monthly_Rainfall</Name>
    <UserStyle>
      <FeatureTypeStyle>
   <Rule>
          <Name>Monthly_Rainfall</Name>
          <Title>Monthly Rainfall</Title>
<PolygonSymbolizer>
   <Fill>
     <CssParameter name="fill">
       <ogc:Function name="Interpolate">
         <!-- Property to transform -->
         <ogc:PropertyName>p_mes</ogc:PropertyName>

         <!-- Mapping curve definition pairs (input, output) -->
         <ogc:Literal>0</ogc:Literal>
         <ogc:Literal>#ece2f0</ogc:Literal>

         <ogc:Literal>0.1</ogc:Literal>
         <ogc:Literal>#ece2f0</ogc:Literal>

         <ogc:Literal>5</ogc:Literal>
         <ogc:Literal>#deebf7</ogc:Literal>

         <ogc:Literal>20</ogc:Literal>
         <ogc:Literal>#d0d1e6</ogc:Literal>

         <ogc:Literal>40</ogc:Literal>
         <ogc:Literal>#a6bddb</ogc:Literal>
         
         <ogc:Literal>100</ogc:Literal>
         <ogc:Literal>#67a9cf</ogc:Literal>
         
         <ogc:Literal>150</ogc:Literal>
         <ogc:Literal>#3690c0</ogc:Literal>
         
         <ogc:Literal>500</ogc:Literal>
         <ogc:Literal>#02818a</ogc:Literal>
         
         <ogc:Literal>2000</ogc:Literal>
         <ogc:Literal>#016c59</ogc:Literal>
         
         <ogc:Literal>10000</ogc:Literal>
         <ogc:Literal>#014636</ogc:Literal>         

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