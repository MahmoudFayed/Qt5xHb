/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQCAMERAIMAGECAPTURE_H
#define SLOTSQCAMERAIMAGECAPTURE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QCameraImageCapture>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQCameraImageCapture: public QObject
{
  Q_OBJECT
  public:
  SlotsQCameraImageCapture(QObject *parent = 0);
  ~SlotsQCameraImageCapture();
  public slots:
  void bufferFormatChanged(QVideoFrame::PixelFormat format);
  void captureDestinationChanged(QCameraImageCapture::CaptureDestinations destination);
  void error(int id, QCameraImageCapture::Error error, const QString & errorString);
  void imageAvailable(int id, const QVideoFrame & buffer);
  void imageCaptured(int id, const QImage & preview);
  void imageExposed(int id);
  void imageMetadataAvailable(int id, const QString & key, const QVariant & value);
  void imageSaved(int id, const QString & fileName);
  void readyForCaptureChanged(bool ready);
};

#endif // SLOTSQCAMERAIMAGECAPTURE_H
