/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QMediaRecorderControl INHERIT QMediaControl

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

/*
explicit QMediaRecorderControl(QObject *parent = Q_NULLPTR) (protected)
*/

/*
virtual ~QMediaRecorderControl()
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_DELETE )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) _qt5xhb_itemGetPtrStackSelfItem();

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
    if( ISNUMPAR(0) )
    {
      obj->applySettings ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RQINT64( obj->duration () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isMuted () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      QUrl * ptr = new QUrl( obj->outputLocation () );
      _qt5xhb_createReturnClass ( ptr, "QURL", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISQURL(1) )
    {
      RBOOL( obj->setOutputLocation ( *PQURL(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RENUM( obj->state () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RENUM( obj->status () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->volume () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setMuted ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setState ( (QMediaRecorder::State) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setVolume ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QMediaRecorderControlSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QMEDIARECORDERCONTROL_ONACTUALLOCATIONCHANGED )
{
  QMediaRecorderControlSlots_connect_signal( "actualLocationChanged(QUrl)", "actualLocationChanged(QUrl)" );
}

HB_FUNC_STATIC( QMEDIARECORDERCONTROL_ONDURATIONCHANGED )
{
  QMediaRecorderControlSlots_connect_signal( "durationChanged(qint64)", "durationChanged(qint64)" );
}

HB_FUNC_STATIC( QMEDIARECORDERCONTROL_ONERROR )
{
  QMediaRecorderControlSlots_connect_signal( "error(int,QString)", "error(int,QString)" );
}

HB_FUNC_STATIC( QMEDIARECORDERCONTROL_ONMUTEDCHANGED )
{
  QMediaRecorderControlSlots_connect_signal( "mutedChanged(bool)", "mutedChanged(bool)" );
}

HB_FUNC_STATIC( QMEDIARECORDERCONTROL_ONSTATECHANGED )
{
  QMediaRecorderControlSlots_connect_signal( "stateChanged(QMediaRecorder::State)", "stateChanged(QMediaRecorder::State)" );
}

HB_FUNC_STATIC( QMEDIARECORDERCONTROL_ONSTATUSCHANGED )
{
  QMediaRecorderControlSlots_connect_signal( "statusChanged(QMediaRecorder::Status)", "statusChanged(QMediaRecorder::Status)" );
}

HB_FUNC_STATIC( QMEDIARECORDERCONTROL_ONVOLUMECHANGED )
{
  QMediaRecorderControlSlots_connect_signal( "volumeChanged(qreal)", "volumeChanged(qreal)" );
}

#pragma ENDDUMP
