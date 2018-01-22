/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQDRAG_H
#define SLOTSQDRAG_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QDrag>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQDrag: public QObject
{
  Q_OBJECT
  public:
  SlotsQDrag(QObject *parent = 0);
  ~SlotsQDrag();
  public slots:
  void actionChanged ( Qt::DropAction action );
  void targetChanged ( QObject * newTarget );
};

#endif // SLOTSQDRAG_H