/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QPlaceManagerSlots.h"

static SlotsQPlaceManager * s = NULL;

SlotsQPlaceManager::SlotsQPlaceManager(QObject *parent) : QObject(parent)
{
}

SlotsQPlaceManager::~SlotsQPlaceManager()
{
}

void SlotsQPlaceManager::finished(QPlaceReply *reply)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished(QPlaceReply*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM preply = hb_itemPutPtr( NULL, (QPlaceReply *) reply );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, preply );
    hb_itemRelease( psender );
    hb_itemRelease( preply );
  }
#endif
}

void SlotsQPlaceManager::error(QPlaceReply * reply, QPlaceReply::Error error, const QString &errorString)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QPlaceReply*,QPlaceReply::Error,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM preply = hb_itemPutPtr( NULL, (QPlaceReply *) reply );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    PHB_ITEM perrorString = hb_itemPutC( NULL, RQSTRING(errorString) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, preply, perror, perrorString );
    hb_itemRelease( psender );
    hb_itemRelease( preply );
    hb_itemRelease( perror );
    hb_itemRelease( perrorString );
  }
#endif
}

void SlotsQPlaceManager::placeAdded(const QString &placeId)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "placeAdded(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pplaceId = hb_itemPutC( NULL, RQSTRING(placeId) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pplaceId );
    hb_itemRelease( psender );
    hb_itemRelease( pplaceId );
  }
#endif
}

void SlotsQPlaceManager::placeUpdated(const QString &placeId)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "placeUpdated(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pplaceId = hb_itemPutC( NULL, RQSTRING(placeId) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pplaceId );
    hb_itemRelease( psender );
    hb_itemRelease( pplaceId );
  }
#endif
}

void SlotsQPlaceManager::placeRemoved(const QString &placeId)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "placeRemoved(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pplaceId = hb_itemPutC( NULL, RQSTRING(placeId) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pplaceId );
    hb_itemRelease( psender );
    hb_itemRelease( pplaceId );
  }
#endif
}

void SlotsQPlaceManager::categoryAdded(const QPlaceCategory &category, const QString &parentId)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "categoryAdded(QPlaceCategory,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcategory = hb_itemPutPtr( NULL, (QPlaceCategory *) &category );
    PHB_ITEM pparentId = hb_itemPutC( NULL, RQSTRING(parentId) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pcategory, pparentId );
    hb_itemRelease( psender );
    hb_itemRelease( pcategory );
    hb_itemRelease( pparentId );
  }
#endif
}

void SlotsQPlaceManager::categoryUpdated(const QPlaceCategory &category, const QString &parentId)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "categoryUpdated(QPlaceCategory,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcategory = hb_itemPutPtr( NULL, (QPlaceCategory *) &category );
    PHB_ITEM pparentId = hb_itemPutC( NULL, RQSTRING(parentId) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pcategory, pparentId );
    hb_itemRelease( psender );
    hb_itemRelease( pcategory );
    hb_itemRelease( pparentId );
  }
#endif
}

void SlotsQPlaceManager::categoryRemoved(const QString &categoryId, const QString &parentId)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "categoryRemoved(QString,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcategoryId = hb_itemPutC( NULL, RQSTRING(categoryId) );
    PHB_ITEM pparentId = hb_itemPutC( NULL, RQSTRING(parentId) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pcategoryId, pparentId );
    hb_itemRelease( psender );
    hb_itemRelease( pcategoryId );
    hb_itemRelease( pparentId );
  }
#endif
}

void SlotsQPlaceManager::dataChanged()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "dataChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

HB_FUNC( QPLACEMANAGER_ONFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQPlaceManager(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "finished(QPlaceReply*)", "finished(QPlaceReply*)" ) );
#endif
}

HB_FUNC( QPLACEMANAGER_ONERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQPlaceManager(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "error(QPlaceReply*,QPlaceReply::Error,QString)", "error(QPlaceReply*,QPlaceReply::Error,QString)" ) );
#endif
}

HB_FUNC( QPLACEMANAGER_ONPLACEADDED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQPlaceManager(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "placeAdded(QString)", "placeAdded(QString)" ) );
#endif
}

HB_FUNC( QPLACEMANAGER_ONPLACEUPDATED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQPlaceManager(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "placeUpdated(QString)", "placeUpdated(QString)" ) );
#endif
}

HB_FUNC( QPLACEMANAGER_ONPLACEREMOVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQPlaceManager(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "placeRemoved(QString)", "placeRemoved(QString)" ) );
#endif
}

HB_FUNC( QPLACEMANAGER_ONCATEGORYADDED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQPlaceManager(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "categoryAdded(QPlaceCategory,QString)", "categoryAdded(QPlaceCategory,QString)" ) );
#endif
}

HB_FUNC( QPLACEMANAGER_ONCATEGORYUPDATED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQPlaceManager(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "categoryUpdated(QPlaceCategory,QString)", "categoryUpdated(QPlaceCategory,QString)" ) );
#endif
}

HB_FUNC( QPLACEMANAGER_ONCATEGORYREMOVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQPlaceManager(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "categoryRemoved(QString,QString)", "categoryRemoved(QString,QString)" ) );
#endif
}

HB_FUNC( QPLACEMANAGER_ONDATACHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQPlaceManager(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "dataChanged()", "dataChanged()" ) );
#endif
}