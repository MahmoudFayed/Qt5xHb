/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QHelpContentModelSlots.h"


static SlotsQHelpContentModel * s = NULL;

SlotsQHelpContentModel::SlotsQHelpContentModel(QObject *parent) : QObject(parent)
{
}

SlotsQHelpContentModel::~SlotsQHelpContentModel()
{
}

void SlotsQHelpContentModel::contentsCreated ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "contentsCreated()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQHelpContentModel::contentsCreationStarted ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "contentsCreationStarted()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QHELPCONTENTMODEL_ONCONTENTSCREATED )
{
  if( s == NULL )
  {
    s = new SlotsQHelpContentModel(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "contentsCreated()", "contentsCreated()" ) );
}

HB_FUNC( QHELPCONTENTMODEL_ONCONTENTSCREATIONSTARTED )
{
  if( s == NULL )
  {
    s = new SlotsQHelpContentModel(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "contentsCreationStarted()", "contentsCreationStarted()" ) );
}
