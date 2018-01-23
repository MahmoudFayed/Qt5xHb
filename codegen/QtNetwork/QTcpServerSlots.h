/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQTCPSERVER_H
#define SLOTSQTCPSERVER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QTcpServer>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQTcpServer: public QObject
{
  Q_OBJECT
  public:
  SlotsQTcpServer(QObject *parent = 0);
  ~SlotsQTcpServer();
  public slots:
  void newConnection ();
};

#endif // SLOTSQTCPSERVER_H
