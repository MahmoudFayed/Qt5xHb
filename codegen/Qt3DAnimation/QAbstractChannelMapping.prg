%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClassFrom=Qt3DCore::QNode

%%   METHOD new
   METHOD delete

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAbstractChannelMapping(QAbstractChannelMappingPrivate &dd, Qt3DCore::QNode *parent = nullptr) (protected)

$prototype=~QAbstractChannelMapping()
$deleteMethod

#pragma ENDDUMP