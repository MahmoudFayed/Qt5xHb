/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQOFFSCREENSURFACE_H
#define SLOTSQOFFSCREENSURFACE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QOffscreenSurface>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQOffscreenSurface: public QObject
{
  Q_OBJECT
  public:
  SlotsQOffscreenSurface(QObject *parent = 0);
  ~SlotsQOffscreenSurface();
  public slots:
  void screenChanged(QScreen *screen);
};

#endif // SLOTSQOFFSCREENSURFACE_H