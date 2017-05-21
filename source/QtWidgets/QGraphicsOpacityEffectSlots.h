/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQGRAPHICSOPACITYEFFECT_H
#define SLOTSQGRAPHICSOPACITYEFFECT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QGraphicsOpacityEffect>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQGraphicsOpacityEffect: public QObject
{
  Q_OBJECT
  public:
  SlotsQGraphicsOpacityEffect(QObject *parent = 0);
  ~SlotsQGraphicsOpacityEffect();
  public slots:
  void opacityChanged ( qreal opacity );
  void opacityMaskChanged ( const QBrush & mask );
};

#endif // SLOTSQGRAPHICSOPACITYEFFECT_H
