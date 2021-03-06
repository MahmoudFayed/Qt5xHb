/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QHelpContentWidgetSlots.h"

QHelpContentWidgetSlots::QHelpContentWidgetSlots(QObject *parent) : QObject(parent)
{
}

QHelpContentWidgetSlots::~QHelpContentWidgetSlots()
{
}
void QHelpContentWidgetSlots::linkActivated( const QUrl & link )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "linkActivated(QUrl)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QHELPCONTENTWIDGET" );
    PHB_ITEM plink = Signals_return_object( (void *) &link, "QURL" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, plink );
    hb_itemRelease( psender );
    hb_itemRelease( plink );
  }
}

void QHelpContentWidgetSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QHelpContentWidget * obj = (QHelpContentWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QHelpContentWidgetSlots * s = QCoreApplication::instance()->findChild<QHelpContentWidgetSlots *>();

    if( s == NULL )
    {
      s = new QHelpContentWidgetSlots();
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
