/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQWINTHUMBNAILTOOLBUTTON_H
#define SLOTSQWINTHUMBNAILTOOLBUTTON_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QWinThumbnailToolButton>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQWinThumbnailToolButton: public QObject
{
  Q_OBJECT
  public:
  SlotsQWinThumbnailToolButton(QObject *parent = 0);
  ~SlotsQWinThumbnailToolButton();
  public slots:
  void clicked();
  void changed();
};

#endif // SLOTSQWINTHUMBNAILTOOLBUTTON_H
