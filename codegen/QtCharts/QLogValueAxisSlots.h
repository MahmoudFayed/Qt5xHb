%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtCharts;

$beginSlotsClass
$signal=5,7,0|void baseChanged( qreal base )
$signal=5,7,0|void labelFormatChanged( const QString & format )
$signal=5,7,0|void maxChanged( qreal max )
$signal=5,7,0|void minChanged( qreal min )
$signal=5,7,0|void minorTickCountChanged( int minorTickCount )
$signal=5,7,0|void rangeChanged( qreal min, qreal max )
$signal=5,7,0|void tickCountChanged( int tickCount )
$endSlotsClass
