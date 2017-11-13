/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQDECLARATIVECOMPONENT_H
#define SLOTSQDECLARATIVECOMPONENT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QDeclarativeComponent>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQDeclarativeComponent: public QObject
{
  Q_OBJECT
  public:
  SlotsQDeclarativeComponent(QObject *parent = 0);
  ~SlotsQDeclarativeComponent();
  public slots:
  void progressChanged ( qreal progress );
  void statusChanged ( QDeclarativeComponent::Status status );
};

#endif // SLOTSQDECLARATIVECOMPONENT_H
