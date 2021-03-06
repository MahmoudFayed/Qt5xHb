%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtDataVisualization;

$beginSlotsClass
$signal=|dataProxyChanged( QSurfaceDataProxy * proxy )
$signal=|drawModeChanged( QSurface3DSeries::DrawFlags mode )
$signal=|flatShadingEnabledChanged( bool enable )
$signal=|flatShadingSupportedChanged( bool enable )
$signal=|selectedPointChanged( const QPoint & position )
$signal=|textureChanged( const QImage & image )
$signal=|textureFileChanged( const QString & filename )
$endSlotsClass
