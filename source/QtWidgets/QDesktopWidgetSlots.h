/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQDESKTOPWIDGET_H
#define SLOTSQDESKTOPWIDGET_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QDesktopWidget>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQDesktopWidget: public QObject
{
  Q_OBJECT
  public:
  SlotsQDesktopWidget(QObject *parent = 0);
  ~SlotsQDesktopWidget();
  public slots:
  void resized ( int screen );
  void screenCountChanged ( int newCount );
  void workAreaResized ( int screen );
};

#endif // SLOTSQDESKTOPWIDGET_H
