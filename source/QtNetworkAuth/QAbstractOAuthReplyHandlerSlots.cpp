/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAbstractOAuthReplyHandlerSlots.h"

static QAbstractOAuthReplyHandlerSlots * s = NULL;

QAbstractOAuthReplyHandlerSlots::QAbstractOAuthReplyHandlerSlots(QObject *parent) : QObject(parent)
{
}

QAbstractOAuthReplyHandlerSlots::~QAbstractOAuthReplyHandlerSlots()
{
}
void QAbstractOAuthReplyHandlerSlots::callbackDataReceived( const QByteArray & data )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "callbackDataReceived(QByteArray)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QABSTRACTOAUTHREPLYHANDLER" );
    PHB_ITEM pdata = Signals_return_object( (void *) &data, "QBYTEARRAY" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pdata );
    hb_itemRelease( psender );
    hb_itemRelease( pdata );
  }
}
void QAbstractOAuthReplyHandlerSlots::replyDataReceived( const QByteArray & data )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "replyDataReceived(QByteArray)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QABSTRACTOAUTHREPLYHANDLER" );
    PHB_ITEM pdata = Signals_return_object( (void *) &data, "QBYTEARRAY" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pdata );
    hb_itemRelease( psender );
    hb_itemRelease( pdata );
  }
}

void QAbstractOAuthReplyHandlerSlots_connect_signal ( const QString & signal, const QString & slot )
{
  if( s == NULL )
  {
    s = new QAbstractOAuthReplyHandlerSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, signal, slot ) );
}
