/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQCHECKBOX_H
#define SLOTSQCHECKBOX_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QCheckBox>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQCheckBox: public QObject
{
  Q_OBJECT
  public:
  SlotsQCheckBox(QObject *parent = 0);
  ~SlotsQCheckBox();
  public slots:
  void stateChanged ( int state );
};

#endif // SLOTSQCHECKBOX_H
