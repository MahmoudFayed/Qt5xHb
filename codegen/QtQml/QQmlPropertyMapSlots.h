/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQQMLPROPERTYMAP_H
#define SLOTSQQMLPROPERTYMAP_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QQmlPropertyMap>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQQmlPropertyMap: public QObject
{
  Q_OBJECT
  public:
  SlotsQQmlPropertyMap(QObject *parent = 0);
  ~SlotsQQmlPropertyMap();
  public slots:
  void valueChanged(const QString & key, const QVariant & value);
};

#endif // SLOTSQQMLPROPERTYMAP_H