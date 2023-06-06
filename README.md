# IWXXM

![build](https://github.com/blchoy/iwxxm-sx/actions/workflows/build.yml/badge.svg)

IWXXM (ICAO Meteorological Information Exchange Model) describes representations of aviation weather information as well as containers of ordered representations for exchange especially over the System Wide Information Management (SWIM) environment.

Currently IWXXM includes XML/GML-based representations for products standardized in International Civil Aviation Organization (ICAO) Annex III and World Meteorological Organization (WMO) No.49, Vol II, such as METAR/SPECI, TAF, SIGMET, AIRMET, Tropical Cyclone Advisory, Volcanic Ash Advisory, Space Weather Advisory and WAFS Significant Weather Forecast.

Unlike the traditional forms of the ICAO Annex III / WMO No. 49 products (referred to as Traditional Alphanumeric Codes, or TAC), IWXXM is not intended to be directly used by pilots. IWXXM is designed to be consumed by software acting on behalf of pilots, such as display software.

# A New Approach

IWXXM reports developed before Version 2021-2 were based on TAC templates in ICAO Annex 3.  While this has the benefit of close resemblance between IWXXM reports and their TAC counterparts, these IWXXM reports also inherit constraints specific to the requirements in preparing, transmitting and utilizing TAC reports.  This is undesirable today as the focus has shifted to the ease of consumption of information; instead of condensing meteorological information in a compact way to facilitate transmission and/or direct human consumption, representation of meteorological phenomena has to be comprehensive as well as flexible enough to allow for multiple use cases covering production, transmission/processing and consumption of the information at the same time.

A bottom-up approach is taken to develop a new IWXXM information model to represent instances of meteorological phenomena in Weather Objects (WxObject).  It consists of a simple, standalone container of a piece of information of a weather phenomenon (WxObject) and a collective for putting different WxObjects for form a "story".  The WAFS Significant Weather Forecast is the first IWXXM report to be defined upon the new model and the WMO TT-AvData has decided to continue taking this approach no matter the requirements of a IWXXM comes from a TAC template or not.

# IWXXM-SX

IWXXM-SX is a trimmed down version of IWXXM which has removed all legacy packages and related components.  It allows us to have a better view of what has to be developed for representation of meteorological information to support production, exchange and consumption in the future SWIM environment.  It is experimental in nature and not intended to be used separately; instead, mature components will merge into the master branch of IWXXM for publication and implementation.

# See Also

[IWXXM-SX modelling on GitHub](https://github.com/team-sx/iwxxm-sx-modelling)
