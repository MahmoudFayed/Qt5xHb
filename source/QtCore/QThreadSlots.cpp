/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QThreadSlots.h"


static SlotsQThread * s = NULL;

SlotsQThread::SlotsQThread(QObject *parent) : QObject(parent)
{
}

SlotsQThread::~SlotsQThread()
{
}

void SlotsQThread::finished()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQThread::started()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "started()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QTHREAD_ONFINISHED )
{
  if( s == NULL )
  {
    s = new SlotsQThread(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "finished()", "finished()" ) );
}

HB_FUNC( QTHREAD_ONSTARTED )
{
  if( s == NULL )
  {
    s = new SlotsQThread(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "started()", "started()" ) );
}
