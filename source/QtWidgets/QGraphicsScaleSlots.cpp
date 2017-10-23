/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QGraphicsScaleSlots.h"


static SlotsQGraphicsScale * s = NULL;

SlotsQGraphicsScale::SlotsQGraphicsScale(QObject *parent) : QObject(parent)
{
}

SlotsQGraphicsScale::~SlotsQGraphicsScale()
{
}

void SlotsQGraphicsScale::originChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "originChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQGraphicsScale::scaleChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "scaleChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQGraphicsScale::xScaleChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "xScaleChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQGraphicsScale::yScaleChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "yScaleChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQGraphicsScale::zScaleChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "zScaleChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QGRAPHICSSCALE_ONORIGINCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsScale(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "originChanged()", "originChanged()" ) );
}

HB_FUNC( QGRAPHICSSCALE_ONSCALECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsScale(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "scaleChanged()", "scaleChanged()" ) );
}

HB_FUNC( QGRAPHICSSCALE_ONXSCALECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsScale(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "xScaleChanged()", "xScaleChanged()" ) );
}

HB_FUNC( QGRAPHICSSCALE_ONYSCALECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsScale(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "yScaleChanged()", "yScaleChanged()" ) );
}

HB_FUNC( QGRAPHICSSCALE_ONZSCALECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsScale(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "zScaleChanged()", "zScaleChanged()" ) );
}
