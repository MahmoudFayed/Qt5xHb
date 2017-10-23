/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QGraphicsWidgetSlots.h"


static SlotsQGraphicsWidget * s = NULL;

SlotsQGraphicsWidget::SlotsQGraphicsWidget(QObject *parent) : QObject(parent)
{
}

SlotsQGraphicsWidget::~SlotsQGraphicsWidget()
{
}

void SlotsQGraphicsWidget::geometryChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "geometryChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QGRAPHICSWIDGET_ONGEOMETRYCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "geometryChanged()", "geometryChanged()" ) );
}
