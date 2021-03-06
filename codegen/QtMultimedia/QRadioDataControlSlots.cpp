%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|stationIdChanged( QString stationId )
$slot=|programTypeChanged( QRadioData::ProgramType programType )
$slot=|programTypeNameChanged( QString programTypeName )
$slot=|stationNameChanged( QString stationName )
$slot=|radioTextChanged( QString radioText )
$slot=|alternativeFrequenciesEnabledChanged( bool enabled )
$slot=|error( QRadioData::Error err )
$endSlotsClass
