<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
   <sch:title>Schematron validation</sch:title>
   <sch:ns prefix="xlink" uri="http://www.w3.org/1999/xlink"/>
   <sch:ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
   <sch:ns prefix="gml" uri="http://www.opengis.net/gml/3.2"/>
   <sch:ns prefix="aixm" uri="http://www.aixm.aero/schema/5.1.1"/>
   <sch:ns prefix="metce" uri="http://def.wmo.int/metce/2013"/>
   <sch:ns prefix="rdf" uri="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>
   <sch:ns prefix="skos" uri="http://www.w3.org/2004/02/skos/core#"/>
   <sch:ns prefix="reg" uri="http://purl.org/linked-data/registry#"/>
   <sch:ns prefix="iwxxm" uri="http://icao.int/iwxxm/sx"/>
   <sch:pattern id="WAFSSignificantWeatherForecast.CloudDistribution">
      <sch:rule context="//iwxxm:CloudDistribution">
         <sch:assert test="@xlink:href = document('codes.wmo.int-bufr4-codeflag-0-20-008.rdf')/rdf:RDF//skos:member/skos:Concept/@*[local-name()='about'] or @nilReason">Element in iwxxm:CloudDistribution should be a member of code list http://codes.wmo.int/bufr4/codeflag/0-20-008</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="WAFSSignificantWeatherForecast.DegreeOfIcing">
      <sch:rule context="//iwxxm:DegreeOfIcing">
         <sch:assert test="@xlink:href = document('codes.wmo.int-bufr4-codeflag-0-20-041.rdf')/rdf:RDF//skos:member/skos:Concept/@*[local-name()='about'] or @nilReason">Element in iwxxm:DegreeOfIcing should be a member of code list http://codes.wmo.int/bufr4/codeflag/0-20-041</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="WAFSSignificantWeatherForecast.CloudType">
      <sch:rule context="//iwxxm:CloudType">
         <sch:assert test="@xlink:href = document('codes.wmo.int-bufr4-codeflag-0-20-012.rdf')/rdf:RDF//skos:member/skos:Concept/@*[local-name()='about'] or @nilReason">Element in iwxxm:CloudType should be a member of code list http://codes.wmo.int/bufr4/codeflag/0-20-012</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="WAFSSignificantWeatherForecast.DegreeOfTurbulence">
      <sch:rule context="//iwxxm:DegreeOfTurbulence">
         <sch:assert test="@xlink:href = document('codes.wmo.int-bufr4-codeflag-0-11-030.rdf')/rdf:RDF//skos:member/skos:Concept/@*[local-name()='about'] or @nilReason">Element in iwxxm:DegreeOfTurbulence should be a member of code list http://codes.wmo.int/bufr4/codeflag/0-11-030</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="WAFSSignificantWeatherForecast.WAFSSignificantWeatherForecast-3">
      <sch:rule context="//iwxxm:WAFSSignificantWeatherForecast">
         <sch:assert test="( exists(iwxxm:originatingCentre/iwxxm:WorldAreaForecastCentre) )">WAFSSignificantWeatherForecast.WAFSSignificantWeatherForecast-3: iwxxm:originatingCentre must have a child element of iwxxm:WorldAreaForecastCentre</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="WAFSSignificantWeatherForecast.WAFSSignificantWeatherForecast-2">
      <sch:rule context="//iwxxm:WAFSSignificantWeatherForecast">
         <sch:assert test="( exists(iwxxm:phenomenonBaseTime) )">WAFSSignificantWeatherForecast.WAFSSignificantWeatherForecast-2: iwxxm:phenomenonBaseTime is mandatory</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="WAFSSignificantWeatherForecast.WAFSSignificantWeatherForecast-1">
      <sch:rule context="//iwxxm:WAFSSignificantWeatherForecast">
         <sch:assert test="( iwxxm:phenomenonCategory = 'weatherForecasts' )">WAFSSignificantWeatherForecast.WAFSSignificantWeatherForecast-1: iwxxm:phenomenonCategory shall be equal to 'weatherForecasts'.</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="MeteorologicalFeature.MeteorologicalFeature-1">
      <sch:rule context="//iwxxm:MeteorologicalFeature">
         <sch:assert test="( exists(gml:identifier) )">MeteorologicalFeature.MeteorologicalFeature-1: gml:identifier is mandatory</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="MeteorologicalFeature.MeteorologicalFeature-2">
      <sch:rule context="//iwxxm:MeteorologicalFeature">
         <sch:assert test="( if( name(..) != 'iwxxm:feature' ) then( exists(iwxxm:issueTime) and exists(iwxxm:originatingCentre) and exists(iwxxm:phenomenonCategory) and exists(iwxxm:phenomenonTime) ) else( true() ) )">MeteorologicalFeature.MeteorologicalFeature-2: Mandatory elements when the parent node is not iwxxm:MeteorologicalFeatureCollection</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="MeteorologicalFeature.MeteorologicalPhenomenon">
      <sch:rule context="//iwxxm:MeteorologicalPhenomenon">
         <sch:assert test="@xlink:href = document('codes.wmo.int-49-2-MeteorologicalFeature.rdf')/rdf:RDF//skos:member/skos:Concept/@*[local-name()='about'] or @nilReason">Element in iwxxm:MeteorologicalPhenomenon should be a member of code list http://codes.wmo.int/49-2/MeteorologicalFeature</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="MeteorologicalFeature.MeteorologicalFeature.phenomenon">
      <sch:rule context="//iwxxm:MeteorologicalFeature/iwxxm:phenomenon">
         <sch:assert test="@xlink:href = document('codes.wmo.int-49-2-MeteorologicalFeature.rdf')/rdf:RDF//skos:member/skos:Concept/@*[local-name()='about'] or @nilReason">Element in iwxxm:MeteorologicalFeature/iwxxm:phenomenon should be a member of code list http://codes.wmo.int/49-2/MeteorologicalFeature</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="MeteorologicalFeature.MeteorologicalFeatureCollection.phenomenaList">
      <sch:rule context="//iwxxm:MeteorologicalFeatureCollection/iwxxm:phenomenaList|//iwxxm:WAFSSignificantWeatherForecast/iwxxm:phenomenaList">
         <sch:assert test="@xlink:href = document('codes.wmo.int-49-2-MeteorologicalFeature.rdf')/rdf:RDF//skos:member/skos:Concept/@*[local-name()='about'] or @nilReason">Element in iwxxm:MeteorologicalFeatureCollection/iwxxm:phenomenaList, iwxxm:WAFSSignificantWeatherForecast/iwxxm:phenomenaList should be a member of code list http://codes.wmo.int/49-2/MeteorologicalFeature</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="MeteorologicalFeature.MeteorologicalFeatureCollection-1">
      <sch:rule context="//iwxxm:MeteorologicalFeatureCollection|//iwxxm:WAFSSignificantWeatherForecast">
         <sch:assert test="( exists(gml:identifier) )">MeteorologicalFeature.MeteorologicalFeatureCollection-1: gml:identifier is mandatory</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="Common.AerodromeForecastWeather">
      <sch:rule context="//iwxxm:AerodromeForecastWeather">
         <sch:assert test="@xlink:href = document('codes.wmo.int-49-2-AerodromePresentOrForecastWeather.rdf')/rdf:RDF//skos:member/skos:Concept/@*[local-name()='about'] or @nilReason">Element in iwxxm:AerodromeForecastWeather should be a member of code list http://codes.wmo.int/49-2/AerodromePresentOrForecastWeather</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="Common.SigConvectiveCloudType">
      <sch:rule context="//iwxxm:SigConvectiveCloudType">
         <sch:assert test="@xlink:href = document('codes.wmo.int-49-2-SigConvectiveCloudType.rdf')/rdf:RDF//skos:member/skos:Concept/@*[local-name()='about'] or @nilReason">Element in iwxxm:SigConvectiveCloudType should be a member of code list http://codes.wmo.int/49-2/SigConvectiveCloudType</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="Common.CloudLayer.cloudType">
      <sch:rule context="//iwxxm:CloudLayer/iwxxm:cloudType">
         <sch:assert test="@xlink:href = document('codes.wmo.int-49-2-SigConvectiveCloudType.rdf')/rdf:RDF//skos:member/skos:Concept/@*[local-name()='about'] or @nilReason">Element in iwxxm:CloudLayer/iwxxm:cloudType should be a member of code list http://codes.wmo.int/49-2/SigConvectiveCloudType</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="Common.CloudAmountReportedAtAerodrome">
      <sch:rule context="//iwxxm:CloudAmountReportedAtAerodrome">
         <sch:assert test="@xlink:href = document('codes.wmo.int-49-2-CloudAmountReportedAtAerodrome.rdf')/rdf:RDF//skos:member/skos:Concept/@*[local-name()='about'] or @nilReason">Element in iwxxm:CloudAmountReportedAtAerodrome should be a member of code list http://codes.wmo.int/49-2/CloudAmountReportedAtAerodrome</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="Common.CloudLayer.amount">
      <sch:rule context="//iwxxm:CloudLayer/iwxxm:amount">
         <sch:assert test="@xlink:href = document('codes.wmo.int-49-2-CloudAmountReportedAtAerodrome.rdf')/rdf:RDF//skos:member/skos:Concept/@*[local-name()='about'] or @nilReason">Element in iwxxm:CloudLayer/iwxxm:amount should be a member of code list http://codes.wmo.int/49-2/CloudAmountReportedAtAerodrome</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="Common.CloudLayer-1">
      <sch:rule context="//iwxxm:CloudLayer">
         <sch:assert test="( if( exists(iwxxm:base) and not(iwxxm:base/@xsi:nil = 'true') ) then( (iwxxm:base/@uom = 'm') or (iwxxm:base/@uom = '[ft_i]') ) else( true() ) )">Common.CloudLayer-1: base shall be reported in metres (m) or feet ([ft_i])</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="Common.Report-2">
      <sch:rule context="//iwxxm:Report">
         <sch:assert test="( if( exists(.//iwxxm:extension) ) then( sum(.//iwxxm:extension/.//text()/string-length(.) ) +sum(.//iwxxm:extension/.//element()/( (string-length( name() ) * 2 ) + 5 ) ) +sum(.//iwxxm:extension/.//@*/( 1 + string-length(name()) + 3 + string-length(.) ) ) +sum(.//iwxxm:extension/.//comment()/( string-length( . ) + 7 )) lt 5000 ) else( true() ) )">Common.Report-2: Total size of extension content must not exceed 5000 characters per report</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="Common.Report-1">
      <sch:rule context="//iwxxm:Report">
         <sch:assert test="( if( exists(@translatedBulletinID) or exists(@translatedBulletinReceptionTime) or exists(@translationCentreDesignator) or exists(@translationCentreName) or exists(@translationTime) or exists(@translationFailedTAC)) then( exists(@translatedBulletinID) and exists(@translatedBulletinReceptionTime) and exists(@translationCentreDesignator) and exists(@translationCentreName) and exists(@translationTime) ) else( true() ) )">Common.Report-1: Translated reports must include @translatedBulletinID, @translatedBulletinReceptionTime, @translationCentreDesignator, @translationCentreName, @translationTime and optionally @translationFailedTAC if translation failed</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="Common.BasicReport-3">
      <sch:rule context="//iwxxm:BasicReport|//iwxxm:MeteorologicalFeatureCollection|//iwxxm:WAFSSignificantWeatherForecast|//iwxxm:Report">
         <sch:assert test="( if( //@gml:id[not(matches(.,'uuid\.[a-z0-9]{8}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{12}'))] ) then( false() ) else( true() ) )">Common.BasicReport-3: All gml:ids in IWXXM reports must be prefixed with 'uuid.' and must be UUID version 4</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="Common.BasicReport-1">
      <sch:rule context="//iwxxm:BasicReport|//iwxxm:MeteorologicalFeatureCollection|//iwxxm:WAFSSignificantWeatherForecast|//iwxxm:Report">
         <sch:assert test="( if( @permissibleUsage = 'NON-OPERATIONAL' ) then( exists(@permissibleUsageReason) ) else( true() ) )">Common.BasicReport-1: Non-operational reports must include a permissibleUsageReason</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="Common.BasicReport-2">
      <sch:rule context="//iwxxm:BasicReport|//iwxxm:MeteorologicalFeatureCollection|//iwxxm:WAFSSignificantWeatherForecast|//iwxxm:Report">
         <sch:assert test="( if( @permissibleUsage ='OPERATIONAL') then( empty(@permissibleUsageReason) ) else( true() ) )">Common.BasicReport-2: Operational reports should not include a permissibleUsageReason</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="Common.AerodromeCloudForecast-2">
      <sch:rule context="//iwxxm:AerodromeCloudForecast">
         <sch:assert test="(if( exists(iwxxm:layer) ) then( empty(iwxxm:verticalVisibility) ) else( true() ) )">Common.AerodromeCloudForecast-2: If cloud layers are reported vertical visibility should be empty</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="Common.AerodromeCloudForecast-1">
      <sch:rule context="//iwxxm:AerodromeCloudForecast">
         <sch:assert test="(if( exists(iwxxm:verticalVisibility) ) then( empty(iwxxm:layer) ) else( true() ) )">Common.AerodromeCloudForecast-1: If vertical visibility is reported cloud layers should be empty</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="Common.AerodromeCloudForecast-3">
      <sch:rule context="//iwxxm:AerodromeCloudForecast">
         <sch:assert test="( if( exists(iwxxm:verticalVisibility) and not(iwxxm:verticalVisibility/@xsi:nil = 'true') ) then( (iwxxm:verticalVisibility/@uom = 'm') or (iwxxm:verticalVisibility/@uom = '[ft_i]') ) else( true() ) )">Common.AerodromeCloudForecast-3: verticalVisibility shall be reported in metres (m) or feet ([ft_i])</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="Common.AerodromeSurfaceWindForecast-1">
      <sch:rule context="//iwxxm:AerodromeSurfaceWindForecast">
         <sch:assert test="( if( @variableDirection = 'true' ) then( empty(iwxxm:meanWindDirection) ) else( true() ) )">Common.AerodromeSurfaceWindForecast-1: Wind direction is not reported when variable winds are indicated</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="Common.AerodromeSurfaceWindTrendForecast-1">
      <sch:rule context="//iwxxm:AerodromeSurfaceWindTrendForecast|//iwxxm:AerodromeSurfaceWindForecast">
         <sch:assert test="( if( exists(iwxxm:meanWindDirection) and not(iwxxm:meanWindDirection/@xsi:nil = 'true') ) then( iwxxm:meanWindDirection/@uom = 'deg' ) else( true() ) )">Common.AerodromeSurfaceWindTrendForecast-1: meanWindDirection shall be reported in degrees (deg)</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="Common.AerodromeSurfaceWindTrendForecast-2">
      <sch:rule context="//iwxxm:AerodromeSurfaceWindTrendForecast|//iwxxm:AerodromeSurfaceWindForecast">
         <sch:assert test="( if( exists(iwxxm:meanWindSpeed) and not(iwxxm:meanWindSpeed/@xsi:nil = 'true') ) then( (iwxxm:meanWindSpeed/@uom = 'm/s') or (iwxxm:meanWindSpeed/@uom = '[kn_i]') ) else( true() ) )">Common.AerodromeSurfaceWindTrendForecast-2: meanWindSpeed shall be reported in metres per second (m/s) or knots ([kn_i])</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="Common.AerodromeSurfaceWindTrendForecast-3">
      <sch:rule context="//iwxxm:AerodromeSurfaceWindTrendForecast|//iwxxm:AerodromeSurfaceWindForecast">
         <sch:assert test="( if( exists(iwxxm:windGustSpeed) and not(iwxxm:windGustSpeed/@xsi:nil = 'true') ) then( (iwxxm:windGustSpeed/@uom = 'm/s') or (iwxxm:windGustSpeed/@uom = '[kn_i]') ) else( true() ) )">Common.AerodromeSurfaceWindTrendForecast-3: windGustSpeed shall be reported in metres per second (m/s) or knots ([kn_i])</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="IWXXM.nilReasonCheck">
      <sch:rule context="//iwxxm:*">
         <sch:assert test="( if( exists(@nilReason) ) then( @nilReason = document('codes.wmo.int-common-nil.rdf')/rdf:RDF/*/skos:member/*/@*[local-name()='about'] ) else( true() ) )">IWXXM.nilReasonCheck: nilReason attributes should be a member of http://codes.wmo.int/common/nil</sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="IWXXM.ExtensionAlwaysLast">
      <sch:rule context="//iwxxm:extension">
         <sch:assert test="following-sibling::*[1][self::iwxxm:extension] or not(following-sibling::*)">IWXXM.ExtensionAlwaysLast: Extension elements should be the last elements in their parents</sch:assert>
      </sch:rule>
   </sch:pattern>
</sch:schema>
