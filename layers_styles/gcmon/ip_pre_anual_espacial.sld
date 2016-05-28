<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:gml='http://www.opengis.net/gml' xmlns:ogc='http://www.opengis.net/ogc' xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' version='1.0.0' xsi:schemaLocation='http://www.opengis.net/sld StyledLayerDescriptor.xsd' xmlns='http://www.opengis.net/sld' >
  <NamedLayer>
    <Name>Annual_Raifall</Name>
    <UserStyle>
      <FeatureTypeStyle>
   <Rule>
          <Name>Annual_Raifall</Name>
          <Title>Annual_Raifall</Title>
<PolygonSymbolizer>
   <Fill>
     <CssParameter name="fill">
       <ogc:Function name="Interpolate">
         <!-- Property to transform -->
         <ogc:PropertyName>pre_anual</ogc:PropertyName>

         <!-- Mapping curve definition pairs (input, output) -->
         <ogc:Literal>0</ogc:Literal>
         <ogc:Literal>#ffffd9</ogc:Literal>

         <ogc:Literal>100</ogc:Literal>
         <ogc:Literal>#edf8b1</ogc:Literal>

         <ogc:Literal>200</ogc:Literal>
         <ogc:Literal>#c7e9b4</ogc:Literal>

         <ogc:Literal>400</ogc:Literal>
         <ogc:Literal>#7fcdbb</ogc:Literal>

         <ogc:Literal>800</ogc:Literal>
         <ogc:Literal>#41b6c4</ogc:Literal>
         
         <ogc:Literal>1600</ogc:Literal>
         <ogc:Literal>#1d91c0</ogc:Literal>
         
         <ogc:Literal>3200</ogc:Literal>
         <ogc:Literal>#225ea8</ogc:Literal>
         
         <ogc:Literal>6400</ogc:Literal>
         <ogc:Literal>#253494</ogc:Literal>
         
         <ogc:Literal>12800</ogc:Literal>
         <ogc:Literal>#081d58</ogc:Literal>
         
         <ogc:Literal>100000</ogc:Literal>
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