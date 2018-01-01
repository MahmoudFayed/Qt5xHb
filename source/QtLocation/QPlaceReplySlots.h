/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQPLACEREPLY_H
#define SLOTSQPLACEREPLY_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceReply>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQPlaceReply: public QObject
{
  Q_OBJECT
  public:
  SlotsQPlaceReply(QObject *parent = 0);
  ~SlotsQPlaceReply();
  public slots:
  void finished();
  void error(QPlaceReply::Error error, const QString &errorString = QString());
};

#endif // SLOTSQPLACEREPLY_H
