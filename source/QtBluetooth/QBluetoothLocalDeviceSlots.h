/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQBLUETOOTHLOCALDEVICE_H
#define SLOTSQBLUETOOTHLOCALDEVICE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothLocalDevice>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQBluetoothLocalDevice: public QObject
{
  Q_OBJECT
  public:
  SlotsQBluetoothLocalDevice(QObject *parent = 0);
  ~SlotsQBluetoothLocalDevice();
  public slots:
  void hostModeStateChanged(QBluetoothLocalDevice::HostMode state);
  void pairingFinished(const QBluetoothAddress &address, QBluetoothLocalDevice::Pairing pairing);
  void pairingDisplayPinCode(const QBluetoothAddress &address, QString pin);
  void pairingDisplayConfirmation(const QBluetoothAddress &address, QString pin);
  void error(QBluetoothLocalDevice::Error error);
};

#endif // SLOTSQBLUETOOTHLOCALDEVICE_H
