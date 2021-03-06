/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QTEXTTOSPEECHENGINESLOTS_H
#define QTEXTTOSPEECHENGINESLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QTextToSpeechEngine>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QTextToSpeechEngineSlots: public QObject
{
  Q_OBJECT
  public:
  QTextToSpeechEngineSlots(QObject *parent = 0);
  ~QTextToSpeechEngineSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  void stateChanged( QTextToSpeech::State state );
#endif
};

#endif /* QTEXTTOSPEECHENGINESLOTS_H */
