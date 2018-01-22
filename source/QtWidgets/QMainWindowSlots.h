/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QMAINWINDOWSLOTS_H
#define QMAINWINDOWSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QMainWindow>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQMainWindow: public QObject
{
  Q_OBJECT
  public:
  SlotsQMainWindow(QObject *parent = 0);
  ~SlotsQMainWindow();
  public slots:
  void iconSizeChanged ( const QSize & iconSize );
  void toolButtonStyleChanged ( Qt::ToolButtonStyle toolButtonStyle );
};

#endif /* QMAINWINDOWSLOTS_H */
