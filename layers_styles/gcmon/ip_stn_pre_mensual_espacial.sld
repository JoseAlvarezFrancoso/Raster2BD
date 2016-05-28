<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:gml='http://www.opengis.net/gml' xmlns:ogc='http://www.opengis.net/ogc' xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' version='1.0.0' xsi:schemaLocation='http://www.opengis.net/sld StyledLayerDescriptor.xsd' xmlns='http://www.opengis.net/sld' >
  <NamedLayer>
    <Name>Monthly_Rainfall</Name>
    <UserStyle>
    <Title>Number of stations</Title>
      <FeatureTypeStyle>
   <Rule>
          <Name>Stations Monthly_Rainfall</Name>
          <Title>Stations Monthly Rainfall</Title>
<PolygonSymbolizer>
   <Fill>
     <CssParameter name="fill">
       <ogc:Function name="Interpolate">
         <!-- Property to transform -->
         <ogc:PropertyName>stn_pre</ogc:PropertyName>

         <!-- Mapping curve definition pairs (input, output) -->

         <ogc:Literal>0</ogc:Literal>
         <ogc:Literal>#fff5f0</ogc:Literal>

         <ogc:Literal>1</ogc:Literal>
         <ogc:Literal>#fee0d2</ogc:Literal>

         <ogc:Literal>5</ogc:Literal>
         <ogc:Literal>#fcbba1</ogc:Literal>

         <ogc:Literal>10</ogc:Literal>
         <ogc:Literal>#fc9272</ogc:Literal>
         
         <ogc:Literal>20</ogc:Literal>
         <ogc:Literal>#fb6a4a</ogc:Literal>
         
         <ogc:Literal>40</ogc:Literal>
         <ogc:Literal>#ef3b2c</ogc:Literal>
         
         <ogc:Literal>80</ogc:Literal>
         <ogc:Literal>#cb181d</ogc:Literal>
         
         <ogc:Literal>200</ogc:Literal>
         <ogc:Literal>#a50f15</ogc:Literal>

         <ogc:Literal>400</ogc:Literal>
         <ogc:Literal>#67000d</ogc:Literal>  
         
         <ogc:Literal>1000</ogc:Literal>
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