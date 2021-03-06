/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QBOXPLOTSERIESSLOTS_H
#define QBOXPLOTSERIESSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QBoxPlotSeries>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

using namespace QtCharts;

class QBoxPlotSeriesSlots: public QObject
{
  Q_OBJECT
  public:
  QBoxPlotSeriesSlots(QObject *parent = 0);
  ~QBoxPlotSeriesSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void boxOutlineVisibilityChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void boxsetsAdded( QList<QBoxSet*> sets );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void boxsetsRemoved( QList<QBoxSet*> sets );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void boxWidthChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void brushChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void clicked( QBoxSet * boxset );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void countChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void doubleClicked( QBoxSet * boxset );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void hovered( bool status, QBoxSet * boxset );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void penChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void pressed( QBoxSet * boxset );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void released( QBoxSet * boxset );
#endif
};

#endif /* QBOXPLOTSERIESSLOTS_H */
