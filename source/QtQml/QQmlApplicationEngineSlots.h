/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQQMLAPPLICATIONENGINE_H
#define SLOTSQQMLAPPLICATIONENGINE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QQmlApplicationEngine>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQQmlApplicationEngine: public QObject
{
  Q_OBJECT
  public:
  SlotsQQmlApplicationEngine(QObject *parent = 0);
  ~SlotsQQmlApplicationEngine();
  public slots:
  void objectCreated(QObject *obj, const QUrl &url);
};

#endif // SLOTSQQMLAPPLICATIONENGINE_H
