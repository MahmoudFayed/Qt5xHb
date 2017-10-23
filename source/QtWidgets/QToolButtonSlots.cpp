/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QToolButtonSlots.h"


static SlotsQToolButton * s = NULL;

SlotsQToolButton::SlotsQToolButton(QObject *parent) : QObject(parent)
{
}

SlotsQToolButton::~SlotsQToolButton()
{
}

void SlotsQToolButton::triggered ( QAction * action )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "triggered(QAction*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM paction = hb_itemPutPtr( NULL, (QAction *) action );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, paction );
    hb_itemRelease( psender );
    hb_itemRelease( paction );
  }
}

HB_FUNC( QTOOLBUTTON_ONTRIGGERED )
{
  if( s == NULL )
  {
    s = new SlotsQToolButton(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "triggered(QAction*)", "triggered(QAction*)" ) );
}
