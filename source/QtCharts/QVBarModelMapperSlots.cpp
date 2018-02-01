/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QVBarModelMapperSlots.h"

static SlotsQVBarModelMapper * s = NULL;

SlotsQVBarModelMapper::SlotsQVBarModelMapper(QObject *parent) : QObject(parent)
{
}

SlotsQVBarModelMapper::~SlotsQVBarModelMapper()
{
}
void SlotsQVBarModelMapper::firstBarSetColumnChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "firstBarSetColumnChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQVBarModelMapper::firstRowChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "firstRowChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQVBarModelMapper::lastBarSetColumnChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "lastBarSetColumnChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQVBarModelMapper::modelReplaced()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "modelReplaced()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQVBarModelMapper::rowCountChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rowCountChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQVBarModelMapper::seriesReplaced()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "seriesReplaced()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QVBARMODELMAPPER_ONFIRSTBARSETCOLUMNCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQVBarModelMapper( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "firstBarSetColumnChanged()", "firstBarSetColumnChanged()" ) );
}

HB_FUNC( QVBARMODELMAPPER_ONFIRSTROWCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQVBarModelMapper( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "firstRowChanged()", "firstRowChanged()" ) );
}

HB_FUNC( QVBARMODELMAPPER_ONLASTBARSETCOLUMNCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQVBarModelMapper( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "lastBarSetColumnChanged()", "lastBarSetColumnChanged()" ) );
}

HB_FUNC( QVBARMODELMAPPER_ONMODELREPLACED )
{
  if( s == NULL )
  {
    s = new SlotsQVBarModelMapper( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "modelReplaced()", "modelReplaced()" ) );
}

HB_FUNC( QVBARMODELMAPPER_ONROWCOUNTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQVBarModelMapper( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "rowCountChanged()", "rowCountChanged()" ) );
}

HB_FUNC( QVBARMODELMAPPER_ONSERIESREPLACED )
{
  if( s == NULL )
  {
    s = new SlotsQVBarModelMapper( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "seriesReplaced()", "seriesReplaced()" ) );
}
