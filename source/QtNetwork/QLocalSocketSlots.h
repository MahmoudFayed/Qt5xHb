/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QLOCALSOCKETSLOTS_H
#define QLOCALSOCKETSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QLocalSocket>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQLocalSocket: public QObject
{
  Q_OBJECT
  public:
  SlotsQLocalSocket(QObject *parent = 0);
  ~SlotsQLocalSocket();
  public slots:
  void connected ();
  void disconnected ();
  void error ( QLocalSocket::LocalSocketError socketError );
  void stateChanged ( QLocalSocket::LocalSocketState socketState );
};

#endif /* QLOCALSOCKETSLOTS_H */
