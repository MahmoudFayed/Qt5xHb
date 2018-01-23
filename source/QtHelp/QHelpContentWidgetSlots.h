/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QHELPCONTENTWIDGETSLOTS_H
#define QHELPCONTENTWIDGETSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QHelpContentWidget>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQHelpContentWidget: public QObject
{
  Q_OBJECT
  public:
  SlotsQHelpContentWidget(QObject *parent = 0);
  ~SlotsQHelpContentWidget();
  public slots:
  void linkActivated ( const QUrl & link );
};

#endif /* QHELPCONTENTWIDGETSLOTS_H */
