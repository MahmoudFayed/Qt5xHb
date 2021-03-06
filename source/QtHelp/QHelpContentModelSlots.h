/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QHELPCONTENTMODELSLOTS_H
#define QHELPCONTENTMODELSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QHelpContentModel>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QHelpContentModelSlots: public QObject
{
  Q_OBJECT
  public:
  QHelpContentModelSlots(QObject *parent = 0);
  ~QHelpContentModelSlots();
  public slots:
  void contentsCreated();
  void contentsCreationStarted();
};

#endif /* QHELPCONTENTMODELSLOTS_H */
