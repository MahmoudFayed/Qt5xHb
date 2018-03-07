/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QQUICKWINDOWSLOTS_H
#define QQUICKWINDOWSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QQuickWindow>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QQuickWindowSlots: public QObject
{
  Q_OBJECT
  public:
  QQuickWindowSlots(QObject *parent = 0);
  ~QQuickWindowSlots();
  public slots:
  void afterRendering();
  void beforeRendering();
  void beforeSynchronizing();
  void colorChanged( const QColor & color );
  void frameSwapped();
  void sceneGraphInitialized();
  void sceneGraphInvalidated();
};

#endif /* QQUICKWINDOWSLOTS_H */
