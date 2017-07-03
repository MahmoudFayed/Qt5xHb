/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QMediaRecorderControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD applySettings
   METHOD duration
   METHOD isMuted
   METHOD outputLocation
   METHOD setOutputLocation
   METHOD state
   METHOD status
   METHOD volume
   METHOD setMuted
   METHOD setState
   METHOD setVolume

   METHOD onActualLocationChanged
   METHOD onDurationChanged
   METHOD onError
   METHOD onMutedChanged
   METHOD onStateChanged
   METHOD onStatusChanged
   METHOD onVolumeChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMediaRecorderControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMediaRecorderControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMediaRecorderControl>
#endif

#include <QUrl>


HB_FUNC_STATIC( QMEDIARECORDERCONTROL_DELETE )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void applySettings() = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_APPLYSETTINGS )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->applySettings ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual qint64 duration() const = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_DURATION )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->duration () );
  }
}


/*
virtual bool isMuted() const = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_ISMUTED )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isMuted () );
  }
}


/*
virtual QUrl outputLocation() const = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_OUTPUTLOCATION )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->outputLocation () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
virtual bool setOutputLocation(const QUrl & location) = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_SETOUTPUTLOCATION )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->setOutputLocation ( *PQURL(1) ) );
  }
}


/*
virtual QMediaRecorder::State state() const = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_STATE )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->state () );
  }
}


/*
virtual QMediaRecorder::Status status() const = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_STATUS )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->status () );
  }
}


/*
virtual qreal volume() const = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_VOLUME )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->volume () );
  }
}


/*
virtual void setMuted(bool muted) = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_SETMUTED )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMuted ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setState(QMediaRecorder::State state) = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_SETSTATE )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setState ( (QMediaRecorder::State) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setVolume(qreal gain) = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_SETVOLUME )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVolume ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
