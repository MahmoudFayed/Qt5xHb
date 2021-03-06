%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QSensor

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

#include <Qt>

$includes=5,1,0

$prototype=QHolsterSensor(QObject *parent = 0)
$constructor=5,1,0|new|QObject *=0

$deleteMethod=5,1,0

$prototype=QHolsterReading *reading() const
$method=5,1,0|QHolsterReading *|reading|

#pragma ENDDUMP
