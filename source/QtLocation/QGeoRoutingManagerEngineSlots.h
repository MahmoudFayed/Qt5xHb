/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQGEOROUTINGMANAGERENGINE_H
#define SLOTSQGEOROUTINGMANAGERENGINE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QGeoRoutingManagerEngine>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQGeoRoutingManagerEngine: public QObject
{
  Q_OBJECT
  public:
  SlotsQGeoRoutingManagerEngine(QObject *parent = 0);
  ~SlotsQGeoRoutingManagerEngine();
  public slots:
  void finished(QGeoRouteReply *reply);
  void error(QGeoRouteReply *reply, QGeoRouteReply::Error error, QString errorString = QString());
};

#endif // SLOTSQGEOROUTINGMANAGERENGINE_H