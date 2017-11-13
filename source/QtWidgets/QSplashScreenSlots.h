/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQSPLASHSCREEN_H
#define SLOTSQSPLASHSCREEN_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QSplashScreen>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQSplashScreen: public QObject
{
  Q_OBJECT
  public:
  SlotsQSplashScreen(QObject *parent = 0);
  ~SlotsQSplashScreen();
  public slots:
  void messageChanged ( const QString & message );
};

#endif // SLOTSQSPLASHSCREEN_H
