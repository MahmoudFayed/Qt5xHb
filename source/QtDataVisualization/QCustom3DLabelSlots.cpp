/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QCustom3DLabelSlots.h"

static SlotsQCustom3DLabel * s = NULL;

SlotsQCustom3DLabel::SlotsQCustom3DLabel(QObject *parent) : QObject(parent)
{
}

SlotsQCustom3DLabel::~SlotsQCustom3DLabel()
{
}
void SlotsQCustom3DLabel::backgroundColorChanged( const QColor & color )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "backgroundColorChanged(QColor)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcolor = hb_itemPutPtr( NULL, (QColor *) &color );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcolor );
    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}
void SlotsQCustom3DLabel::backgroundEnabledChanged( bool enabled )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "backgroundEnabledChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM penabled = hb_itemPutL( NULL, enabled );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, penabled );
    hb_itemRelease( psender );
    hb_itemRelease( penabled );
  }
}
void SlotsQCustom3DLabel::borderEnabledChanged( bool enabled )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "borderEnabledChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM penabled = hb_itemPutL( NULL, enabled );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, penabled );
    hb_itemRelease( psender );
    hb_itemRelease( penabled );
  }
}
void SlotsQCustom3DLabel::facingCameraChanged( bool enabled )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "facingCameraChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM penabled = hb_itemPutL( NULL, enabled );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, penabled );
    hb_itemRelease( psender );
    hb_itemRelease( penabled );
  }
}
void SlotsQCustom3DLabel::fontChanged( const QFont & font )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "fontChanged(QFont)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pfont = hb_itemPutPtr( NULL, (QFont *) &font );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pfont );
    hb_itemRelease( psender );
    hb_itemRelease( pfont );
  }
}
void SlotsQCustom3DLabel::textChanged( const QString & text )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "textChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ptext = hb_itemPutC( NULL, QSTRINGTOSTRING(text) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ptext );
    hb_itemRelease( psender );
    hb_itemRelease( ptext );
  }
}
void SlotsQCustom3DLabel::textColorChanged( const QColor & color )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "textColorChanged(QColor)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcolor = hb_itemPutPtr( NULL, (QColor *) &color );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcolor );
    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}

HB_FUNC( QCUSTOM3DLABEL_ONBACKGROUNDCOLORCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCustom3DLabel( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "backgroundColorChanged(QColor)", "backgroundColorChanged(QColor)" ) );
}

HB_FUNC( QCUSTOM3DLABEL_ONBACKGROUNDENABLEDCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCustom3DLabel( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "backgroundEnabledChanged(bool)", "backgroundEnabledChanged(bool)" ) );
}

HB_FUNC( QCUSTOM3DLABEL_ONBORDERENABLEDCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCustom3DLabel( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "borderEnabledChanged(bool)", "borderEnabledChanged(bool)" ) );
}

HB_FUNC( QCUSTOM3DLABEL_ONFACINGCAMERACHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCustom3DLabel( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "facingCameraChanged(bool)", "facingCameraChanged(bool)" ) );
}

HB_FUNC( QCUSTOM3DLABEL_ONFONTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCustom3DLabel( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "fontChanged(QFont)", "fontChanged(QFont)" ) );
}

HB_FUNC( QCUSTOM3DLABEL_ONTEXTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCustom3DLabel( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "textChanged(QString)", "textChanged(QString)" ) );
}

HB_FUNC( QCUSTOM3DLABEL_ONTEXTCOLORCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCustom3DLabel( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "textColorChanged(QColor)", "textColorChanged(QColor)" ) );
}
