/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSEQUENTIALANIMATIONGROUPSLOTS_H
#define QSEQUENTIALANIMATIONGROUPSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QSequentialAnimationGroup>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QSequentialAnimationGroupSlots: public QObject
{
  Q_OBJECT
  public:
  QSequentialAnimationGroupSlots(QObject *parent = 0);
  ~QSequentialAnimationGroupSlots();
  public slots:
  void currentAnimationChanged ( QAbstractAnimation * current );
};

#endif /* QSEQUENTIALANIMATIONGROUPSLOTS_H */
