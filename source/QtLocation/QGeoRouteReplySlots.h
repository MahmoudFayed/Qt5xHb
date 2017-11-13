/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQGEOROUTEREPLY_H
#define SLOTSQGEOROUTEREPLY_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QGeoRouteReply>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQGeoRouteReply: public QObject
{
  Q_OBJECT
  public:
  SlotsQGeoRouteReply(QObject *parent = 0);
  ~SlotsQGeoRouteReply();
  public slots:
  void finished();
  void error(QGeoRouteReply::Error error, const QString &errorString = QString());
};

#endif // SLOTSQGEOROUTEREPLY_H
