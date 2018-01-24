/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QSensorGestureSlots.h"


static SlotsQSensorGesture * s = NULL;

SlotsQSensorGesture::SlotsQSensorGesture(QObject *parent) : QObject(parent)
{
}

SlotsQSensorGesture::~SlotsQSensorGesture()
{
}

void SlotsQSensorGesture::detected(QString s)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "detected(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ps = hb_itemPutC( NULL, (const char *) s.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ps );
    hb_itemRelease( psender );
    hb_itemRelease( ps );
  }
#endif
}

HB_FUNC( QSENSORGESTURE_ONDETECTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSensorGesture(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "detected(QString)", "detected(QString)" ) );
#else
  hb_retl(false);
#endif
}
