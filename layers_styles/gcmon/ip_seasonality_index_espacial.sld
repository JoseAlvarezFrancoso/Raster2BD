<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:gml='http://www.opengis.net/gml' xmlns:ogc='http://www.opengis.net/ogc' xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' version='1.0.0' xsi:schemaLocation='http://www.opengis.net/sld StyledLayerDescriptor.xsd' xmlns='http://www.opengis.net/sld' >
  <NamedLayer>
    <Name>Seasonality_index</Name>
    <UserStyle>
      <FeatureTypeStyle>
   <Rule>
          <Name>Seasonality_index</Name>
          <Title>Seasonality_index</Title>
<PolygonSymbolizer>
   <Fill>
     <CssParameter name="fill">
       <ogc:Function name="Interpolate">
         <!-- Property to transform -->
         <ogc:PropertyName>seasonality_index</ogc:PropertyName>

         <!-- Mapping curve definition pairs (input, output) -->
         <ogc:Literal>0</ogc:Literal>
         <ogc:Literal>#ffffb2</ogc:Literal>

         <ogc:Literal>0.2</ogc:Literal>
         <ogc:Literal>#fed976</ogc:Literal>

         <ogc:Literal>0.4</ogc:Literal>
         <ogc:Literal>#feb24c</ogc:Literal>

         <ogc:Literal>0.6</ogc:Literal>
         <ogc:Literal>#fd8d3c</ogc:Literal>

         <ogc:Literal>0.8</ogc:Literal>
         <ogc:Literal>#fc4e2a</ogc:Literal>
         
         <ogc:Literal>1</ogc:Literal>
         <ogc:Literal>#e31a1c</ogc:Literal>
         
         <ogc:Literal>1.2</ogc:Literal>
         <ogc:Literal>#b10026</ogc:Literal>
         
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