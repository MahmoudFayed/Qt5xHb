/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQAUDIOOUTPUT_H
#define SLOTSQAUDIOOUTPUT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAudioOutput>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQAudioOutput: public QObject
{
  Q_OBJECT
  public:
  SlotsQAudioOutput(QObject *parent = 0);
  ~SlotsQAudioOutput();
  public slots:
  void notify();
  void stateChanged(QAudio::State state);
};

#endif // SLOTSQAUDIOOUTPUT_H
