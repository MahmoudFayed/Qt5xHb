/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQGRAPHICSDROPSHADOWEFFECT_H
#define SLOTSQGRAPHICSDROPSHADOWEFFECT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QGraphicsDropShadowEffect>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQGraphicsDropShadowEffect: public QObject
{
  Q_OBJECT
  public:
  SlotsQGraphicsDropShadowEffect(QObject *parent = 0);
  ~SlotsQGraphicsDropShadowEffect();
  public slots:
  void blurRadiusChanged ( qreal blurRadius );
  void colorChanged ( const QColor & color );
  void offsetChanged ( const QPointF & offset );
};

#endif // SLOTSQGRAPHICSDROPSHADOWEFFECT_H
