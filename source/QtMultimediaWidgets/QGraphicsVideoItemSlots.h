/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQGRAPHICSVIDEOITEM_H
#define SLOTSQGRAPHICSVIDEOITEM_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QGraphicsVideoItem>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQGraphicsVideoItem: public QObject
{
  Q_OBJECT
  public:
  SlotsQGraphicsVideoItem(QObject *parent = 0);
  ~SlotsQGraphicsVideoItem();
  public slots:
  void nativeSizeChanged(const QSizeF &size);
};

#endif // SLOTSQGRAPHICSVIDEOITEM_H
