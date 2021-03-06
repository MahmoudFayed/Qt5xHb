/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QCameraCaptureDestinationControlSlots.h"

QCameraCaptureDestinationControlSlots::QCameraCaptureDestinationControlSlots(QObject *parent) : QObject(parent)
{
}

QCameraCaptureDestinationControlSlots::~QCameraCaptureDestinationControlSlots()
{
}
void QCameraCaptureDestinationControlSlots::captureDestinationChanged( QCameraImageCapture::CaptureDestinations destination )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "captureDestinationChanged(QCameraImageCapture::CaptureDestinations)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QCAMERACAPTUREDESTINATIONCONTROL" );
    PHB_ITEM pdestination = hb_itemPutNI( NULL, (int) destination );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pdestination );
    hb_itemRelease( psender );
    hb_itemRelease( pdestination );
  }
}

void QCameraCaptureDestinationControlSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QCameraCaptureDestinationControl * obj = (QCameraCaptureDestinationControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QCameraCaptureDestinationControlSlots * s = QCoreApplication::instance()->findChild<QCameraCaptureDestinationControlSlots *>();

    if( s == NULL )
    {
      s = new QCameraCaptureDestinationControlSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
