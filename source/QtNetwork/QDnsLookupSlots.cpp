/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDnsLookupSlots.h"

QDnsLookupSlots::QDnsLookupSlots(QObject *parent) : QObject(parent)
{
}

QDnsLookupSlots::~QDnsLookupSlots()
{
}
void QDnsLookupSlots::finished()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QDNSLOOKUP" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QDnsLookupSlots::nameChanged( const QString & name )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "nameChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QDNSLOOKUP" );
    PHB_ITEM pname = hb_itemPutC( NULL, QSTRINGTOSTRING(name) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pname );
    hb_itemRelease( psender );
    hb_itemRelease( pname );
  }
}
void QDnsLookupSlots::nameserverChanged( const QHostAddress & nameserver )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "nameserverChanged(QHostAddress)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QDNSLOOKUP" );
    PHB_ITEM pnameserver = Signals_return_object( (void *) &nameserver, "QHOSTADDRESS" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pnameserver );
    hb_itemRelease( psender );
    hb_itemRelease( pnameserver );
  }
}
void QDnsLookupSlots::typeChanged( QDnsLookup::Type type )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "typeChanged(QDnsLookup::Type)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QDNSLOOKUP" );
    PHB_ITEM ptype = hb_itemPutNI( NULL, (int) type );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ptype );
    hb_itemRelease( psender );
    hb_itemRelease( ptype );
  }
}

void QDnsLookupSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QDnsLookup * obj = (QDnsLookup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QDnsLookupSlots * s = QCoreApplication::instance()->findChild<QDnsLookupSlots *>();

    if( s == NULL )
    {
      s = new QDnsLookupSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
