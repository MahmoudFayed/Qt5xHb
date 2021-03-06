/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QITEMMODELSCATTERDATAPROXYSLOTS_H
#define QITEMMODELSCATTERDATAPROXYSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QItemModelScatterDataProxy>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

using namespace QtDataVisualization;

class QItemModelScatterDataProxySlots: public QObject
{
  Q_OBJECT
  public:
  QItemModelScatterDataProxySlots(QObject *parent = 0);
  ~QItemModelScatterDataProxySlots();
  public slots:
  void itemModelChanged( const QAbstractItemModel * itemModel );
  void rotationRoleChanged( const QString & role );
  void rotationRolePatternChanged( const QRegExp & pattern );
  void rotationRoleReplaceChanged( const QString & replace );
  void xPosRoleChanged( const QString & role );
  void xPosRolePatternChanged( const QRegExp & pattern );
  void xPosRoleReplaceChanged( const QString & replace );
  void yPosRoleChanged( const QString & role );
  void yPosRolePatternChanged( const QRegExp & pattern );
  void yPosRoleReplaceChanged( const QString & replace );
  void zPosRoleChanged( const QString & role );
  void zPosRolePatternChanged( const QRegExp & pattern );
  void zPosRoleReplaceChanged( const QString & replace );
};

#endif /* QITEMMODELSCATTERDATAPROXYSLOTS_H */
