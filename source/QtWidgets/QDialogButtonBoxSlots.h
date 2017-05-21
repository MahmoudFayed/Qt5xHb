/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQDIALOGBUTTONBOX_H
#define SLOTSQDIALOGBUTTONBOX_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QDialogButtonBox>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQDialogButtonBox: public QObject
{
  Q_OBJECT
  public:
  SlotsQDialogButtonBox(QObject *parent = 0);
  ~SlotsQDialogButtonBox();
  public slots:
  void accepted ();
  void clicked ( QAbstractButton * button );
  void helpRequested ();
  void rejected ();
};

#endif // SLOTSQDIALOGBUTTONBOX_H
