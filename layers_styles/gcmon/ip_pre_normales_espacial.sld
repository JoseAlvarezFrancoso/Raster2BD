<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:gml='http://www.opengis.net/gml' xmlns:ogc='http://www.opengis.net/ogc' xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' version='1.0.0' xsi:schemaLocation='http://www.opengis.net/sld StyledLayerDescriptor.xsd' xmlns='http://www.opengis.net/sld' >
  <NamedLayer>
    <Name>Monthly_Normal_Rainfall</Name>
    <UserStyle>
      <FeatureTypeStyle>
   <Rule>
          <Name>Monthly_Normal_Rainfall</Name>
          <Title>Monthly_Normal_Rainfall</Title>
<PolygonSymbolizer>
   <Fill>
     <CssParameter name="fill">
       <ogc:Function name="Interpolate">
         <!-- Property to transform -->
         <ogc:PropertyName>pre_normal</ogc:PropertyName>

         <!-- Mapping curve definition pairs (input, output) -->

         <ogc:Literal>0</ogc:Literal>
         <ogc:Literal>#ffffd9</ogc:Literal>

         <ogc:Literal>5</ogc:Literal>
         <ogc:Literal>#edf8b1</ogc:Literal>

         <ogc:Literal>20</ogc:Literal>
         <ogc:Literal>#c7e9b4</ogc:Literal>

         <ogc:Literal>40</ogc:Literal>
         <ogc:Literal>#7fcdbb</ogc:Literal>
         
         <ogc:Literal>100</ogc:Literal>
         <ogc:Literal>#41b6c4</ogc:Literal>
         
         <ogc:Literal>150</ogc:Literal>
         <ogc:Literal>#1d91c0</ogc:Literal>
         
         <ogc:Literal>500</ogc:Literal>
         <ogc:Literal>#225ea8</ogc:Literal>
         
         <ogc:Literal>1000</ogc:Literal>
         <ogc:Literal>#253494</ogc:Literal>

         <ogc:Literal>2000</ogc:Literal>
         <ogc:Literal>#081d58</ogc:Literal>  
         
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