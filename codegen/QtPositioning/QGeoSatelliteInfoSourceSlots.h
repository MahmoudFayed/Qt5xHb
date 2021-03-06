%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,2,0

$beginSlotsClass
$signal=5,2,0|satellitesInViewUpdated( const QList<QGeoSatelliteInfo> & satellites )
$signal=5,2,0|satellitesInUseUpdated( const QList<QGeoSatelliteInfo> & satellites )
$signal=5,2,0|requestTimeout()
$signal=5,2,0|error( QGeoSatelliteInfoSource::Error error )
$endSlotsClass
