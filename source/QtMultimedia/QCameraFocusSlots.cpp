/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QCameraFocusSlots.h"


static SlotsQCameraFocus * s = NULL;

SlotsQCameraFocus::SlotsQCameraFocus(QObject *parent) : QObject(parent)
{
}

SlotsQCameraFocus::~SlotsQCameraFocus()
{
}

void SlotsQCameraFocus::digitalZoomChanged(qreal value)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "digitalZoomChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvalue = hb_itemPutND( NULL, value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}

void SlotsQCameraFocus::focusZonesChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "focusZonesChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQCameraFocus::maximumDigitalZoomChanged(qreal zoom)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "maximumDigitalZoomChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pzoom = hb_itemPutND( NULL, zoom );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pzoom );
    hb_itemRelease( psender );
    hb_itemRelease( pzoom );
  }
}

void SlotsQCameraFocus::maximumOpticalZoomChanged(qreal zoom)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "maximumOpticalZoomChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pzoom = hb_itemPutND( NULL, zoom );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pzoom );
    hb_itemRelease( psender );
    hb_itemRelease( pzoom );
  }
}

void SlotsQCameraFocus::opticalZoomChanged(qreal value)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "opticalZoomChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvalue = hb_itemPutND( NULL, value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}

HB_FUNC( QCAMERAFOCUS_ONDIGITALZOOMCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraFocus(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "digitalZoomChanged(qreal)", "digitalZoomChanged(qreal)" ) );
}

HB_FUNC( QCAMERAFOCUS_ONFOCUSZONESCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraFocus(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "focusZonesChanged()", "focusZonesChanged()" ) );
}

HB_FUNC( QCAMERAFOCUS_ONMAXIMUMDIGITALZOOMCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraFocus(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "maximumDigitalZoomChanged(qreal)", "maximumDigitalZoomChanged(qreal)" ) );
}

HB_FUNC( QCAMERAFOCUS_ONMAXIMUMOPTICALZOOMCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraFocus(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "maximumOpticalZoomChanged(qreal)", "maximumOpticalZoomChanged(qreal)" ) );
}

HB_FUNC( QCAMERAFOCUS_ONOPTICALZOOMCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraFocus(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "opticalZoomChanged(qreal)", "opticalZoomChanged(qreal)" ) );
}
