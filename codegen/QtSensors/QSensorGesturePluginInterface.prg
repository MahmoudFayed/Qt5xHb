$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSENSORGESTURERECOGNIZER
#endif

CLASS QSensorGesturePluginInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD createRecognizers
   METHOD supportedIds
   METHOD name

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
virtual QList <QSensorGestureRecognizer *> createRecognizers() = 0
*/
$virtualMethod=5,1,0|QList<QSensorGestureRecognizer *>|createRecognizers|

/*
virtual QStringList supportedIds() const = 0
*/
$virtualMethod=5,1,0|QStringList|supportedIds|

/*
virtual QString name() const = 0
*/
$virtualMethod=|QString|name|

$extraMethods

#pragma ENDDUMP
