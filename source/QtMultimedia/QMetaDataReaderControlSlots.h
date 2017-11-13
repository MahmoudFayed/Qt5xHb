/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQMETADATAREADERCONTROL_H
#define SLOTSQMETADATAREADERCONTROL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QMetaDataReaderControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQMetaDataReaderControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQMetaDataReaderControl(QObject *parent = 0);
  ~SlotsQMetaDataReaderControl();
  public slots:
  void metaDataChanged();
  void metaDataChanged(const QString &key, const QVariant &value);
  void metaDataAvailableChanged(bool available);
};

#endif // SLOTSQMETADATAREADERCONTROL_H
