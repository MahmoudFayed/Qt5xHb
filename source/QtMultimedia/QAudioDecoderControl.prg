/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAUDIOFORMAT
REQUEST QAUDIOBUFFER
REQUEST QIODEVICE
#endif

CLASS QAudioDecoderControl INHERIT QMediaControl

   METHOD delete

   METHOD audioFormat
   METHOD bufferAvailable
   METHOD duration
   METHOD position
   METHOD read
   METHOD setAudioFormat
   METHOD setSourceDevice
   METHOD setSourceFilename
   METHOD sourceDevice
   METHOD sourceFilename
   METHOD start
   METHOD state
   METHOD stop

   METHOD onBufferAvailableChanged
   METHOD onBufferReady
   METHOD onDurationChanged
   METHOD onError
   METHOD onFinished
   METHOD onFormatChanged
   METHOD onPositionChanged
   METHOD onSourceChanged
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAudioDecoderControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAudioDecoderControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAudioDecoderControl>
#endif

/*
explicit QAudioDecoderControl(QObject *parent = Q_NULLPTR) (protected)
*/

/*
~QAudioDecoderControl()
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_DELETE )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual QAudioFormat audioFormat() const = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_AUDIOFORMAT )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAudioFormat * ptr = new QAudioFormat( obj->audioFormat () );
      _qt5xhb_createReturnClass ( ptr, "QAUDIOFORMAT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool bufferAvailable() const = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_BUFFERAVAILABLE )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->bufferAvailable () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual qint64 duration() const = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_DURATION )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual qint64 position() const = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_POSITION )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQINT64( obj->position () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QAudioBuffer read() = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_READ )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAudioBuffer * ptr = new QAudioBuffer( obj->read () );
      _qt5xhb_createReturnClass ( ptr, "QAUDIOBUFFER", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void setAudioFormat(const QAudioFormat & format) = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_SETAUDIOFORMAT )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQAUDIOFORMAT(1) )
    {
      obj->setAudioFormat ( *PQAUDIOFORMAT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QIODevice * sourceDevice() const = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_SOURCEDEVICE )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QIODevice * ptr = obj->sourceDevice ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QIODEVICE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void setSourceDevice(QIODevice * device) = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_SETSOURCEDEVICE )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQIODEVICE(1) )
    {
      obj->setSourceDevice ( PQIODEVICE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setSourceFilename(const QString & fileName) = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_SETSOURCEFILENAME )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setSourceFilename ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QString sourceFilename() const = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_SOURCEFILENAME )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->sourceFilename () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void start() = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_START )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->start ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QAudioDecoder::State state() const = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_STATE )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual void stop() = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_STOP )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->stop ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QAudioDecoderControlSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QAUDIODECODERCONTROL_ONBUFFERAVAILABLECHANGED )
{
  QAudioDecoderControlSlots_connect_signal( "bufferAvailableChanged(bool)", "bufferAvailableChanged(bool)" );
}

HB_FUNC_STATIC( QAUDIODECODERCONTROL_ONBUFFERREADY )
{
  QAudioDecoderControlSlots_connect_signal( "bufferReady()", "bufferReady()" );
}

HB_FUNC_STATIC( QAUDIODECODERCONTROL_ONDURATIONCHANGED )
{
  QAudioDecoderControlSlots_connect_signal( "durationChanged(qint64)", "durationChanged(qint64)" );
}

HB_FUNC_STATIC( QAUDIODECODERCONTROL_ONERROR )
{
  QAudioDecoderControlSlots_connect_signal( "error(int,QString)", "error(int,QString)" );
}

HB_FUNC_STATIC( QAUDIODECODERCONTROL_ONFINISHED )
{
  QAudioDecoderControlSlots_connect_signal( "finished()", "finished()" );
}

HB_FUNC_STATIC( QAUDIODECODERCONTROL_ONFORMATCHANGED )
{
  QAudioDecoderControlSlots_connect_signal( "formatChanged(QAudioFormat)", "formatChanged(QAudioFormat)" );
}

HB_FUNC_STATIC( QAUDIODECODERCONTROL_ONPOSITIONCHANGED )
{
  QAudioDecoderControlSlots_connect_signal( "positionChanged(qint64)", "positionChanged(qint64)" );
}

HB_FUNC_STATIC( QAUDIODECODERCONTROL_ONSOURCECHANGED )
{
  QAudioDecoderControlSlots_connect_signal( "sourceChanged()", "sourceChanged()" );
}

HB_FUNC_STATIC( QAUDIODECODERCONTROL_ONSTATECHANGED )
{
  QAudioDecoderControlSlots_connect_signal( "stateChanged(QAudioDecoder::State)", "stateChanged(QAudioDecoder::State)" );
}

#pragma ENDDUMP
