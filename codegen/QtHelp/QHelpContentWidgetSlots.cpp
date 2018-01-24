%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QHelpContentWidgetSlots.h"

static SlotsQHelpContentWidget * s = NULL;

SlotsQHelpContentWidget::SlotsQHelpContentWidget(QObject *parent) : QObject(parent)
{
}

SlotsQHelpContentWidget::~SlotsQHelpContentWidget()
{
}

void SlotsQHelpContentWidget::linkActivated ( const QUrl & link )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "linkActivated(QUrl)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plink = hb_itemPutPtr( NULL, (QUrl *) &link );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, plink );
    hb_itemRelease( psender );
    hb_itemRelease( plink );
  }
}

HB_FUNC( QHELPCONTENTWIDGET_ONLINKACTIVATED )
{
  if( s == NULL )
  {
    s = new SlotsQHelpContentWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "linkActivated(QUrl)", "linkActivated(QUrl)" ) );
}