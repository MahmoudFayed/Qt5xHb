/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQTAPSENSOR_H
#define SLOTSQTAPSENSOR_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QTapSensor>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQTapSensor: public QObject
{
  Q_OBJECT
  public:
  SlotsQTapSensor(QObject *parent = 0);
  ~SlotsQTapSensor();
  public slots:
  void returnDoubleTapEventsChanged(bool returnDoubleTapEvents);
};

#endif // SLOTSQTAPSENSOR_H
