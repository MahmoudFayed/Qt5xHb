/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQGRAPHICSCOLORIZEEFFECT_H
#define SLOTSQGRAPHICSCOLORIZEEFFECT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QGraphicsColorizeEffect>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQGraphicsColorizeEffect: public QObject
{
  Q_OBJECT
  public:
  SlotsQGraphicsColorizeEffect(QObject *parent = 0);
  ~SlotsQGraphicsColorizeEffect();
  public slots:
  void colorChanged ( const QColor & color );
  void strengthChanged ( qreal strength );
};

#endif // SLOTSQGRAPHICSCOLORIZEEFFECT_H
