/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQBLUETOOTHDEVICEDISCOVERYAGENT_H
#define SLOTSQBLUETOOTHDEVICEDISCOVERYAGENT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothDeviceDiscoveryAgent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQBluetoothDeviceDiscoveryAgent: public QObject
{
  Q_OBJECT
  public:
  SlotsQBluetoothDeviceDiscoveryAgent(QObject *parent = 0);
  ~SlotsQBluetoothDeviceDiscoveryAgent();
  public slots:
  void deviceDiscovered(const QBluetoothDeviceInfo &info);
  void finished();
  void error(QBluetoothDeviceDiscoveryAgent::Error error);
  void canceled();
};

#endif // SLOTSQBLUETOOTHDEVICEDISCOVERYAGENT_H
