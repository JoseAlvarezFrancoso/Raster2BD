<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:gml='http://www.opengis.net/gml' xmlns:ogc='http://www.opengis.net/ogc' xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' version='1.0.0' xsi:schemaLocation='http://www.opengis.net/sld StyledLayerDescriptor.xsd' xmlns='http://www.opengis.net/sld' >
  <NamedLayer>
    <Name>Monthly_PET</Name>
    <UserStyle>
      <FeatureTypeStyle>
   <Rule>
          <Name>Monthly_PET</Name>
          <Title>Monthly_PET</Title>
<PolygonSymbolizer>
   <Fill>
     <CssParameter name="fill">
       <ogc:Function name="Interpolate">
         <!-- Property to transform -->
         <ogc:PropertyName>etp_mes</ogc:PropertyName>

         <!-- Mapping curve definition pairs (input, output) -->
         <ogc:Literal>0</ogc:Literal>
         <ogc:Literal>#fef0d9</ogc:Literal>

         <ogc:Literal>10</ogc:Literal>
         <ogc:Literal>#fdd49e</ogc:Literal>

         <ogc:Literal>20</ogc:Literal>
         <ogc:Literal>#fdbb84</ogc:Literal>

         <ogc:Literal>40</ogc:Literal>
         <ogc:Literal>#fc8d59</ogc:Literal>

         <ogc:Literal>80</ogc:Literal>
         <ogc:Literal>#ef6548</ogc:Literal>
         
         <ogc:Literal>160</ogc:Literal>
         <ogc:Literal>#d7301f</ogc:Literal>
         
         <ogc:Literal>320</ogc:Literal>
         <ogc:Literal>#990000</ogc:Literal>
         
         <ogc:Literal>20000</ogc:Literal>
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