/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QOAuth2AuthorizationCodeFlowSlots.h"

static QOAuth2AuthorizationCodeFlowSlots * s = NULL;

QOAuth2AuthorizationCodeFlowSlots::QOAuth2AuthorizationCodeFlowSlots(QObject *parent) : QObject(parent)
{
}

QOAuth2AuthorizationCodeFlowSlots::~QOAuth2AuthorizationCodeFlowSlots()
{
}
void QOAuth2AuthorizationCodeFlowSlots::accessTokenUrlChanged( const QUrl & accessTokenUrl )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "accessTokenUrlChanged(QUrl)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QOAUTH2AUTHORIZATIONCODEFLOW" );
    PHB_ITEM paccessTokenUrl = Signals_return_object( (void *) &accessTokenUrl, "QURL" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, paccessTokenUrl );
    hb_itemRelease( psender );
    hb_itemRelease( paccessTokenUrl );
  }
}

void QOAuth2AuthorizationCodeFlowSlots_connect_signal ( const QString & signal, const QString & slot )
{
  if( s == NULL )
  {
    s = new QOAuth2AuthorizationCodeFlowSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, signal, slot ) );
}
