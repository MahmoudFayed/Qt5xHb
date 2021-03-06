/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QSensorGesture INHERIT QObject

   METHOD new
   METHOD delete
   METHOD isActive
   METHOD validIds
   METHOD invalidIds
   METHOD gestureSignals
   METHOD startDetection
   METHOD stopDetection

   METHOD onDetected

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSensorGesture
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSensorGesture>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSensorGesture>
#endif
#endif

/*
QSensorGesture(const QStringList &ids, QObject *parent = 0)
*/
HB_FUNC_STATIC( QSENSORGESTURE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( ISBETWEEN(1,2) && ISARRAY(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QSensorGesture * o = new QSensorGesture ( PQSTRINGLIST(1), OPQOBJECT(2,0) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QSENSORGESTURE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGesture * obj = (QSensorGesture *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
bool isActive()
*/
HB_FUNC_STATIC( QSENSORGESTURE_ISACTIVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGesture * obj = (QSensorGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isActive () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QStringList validIds() const
*/
HB_FUNC_STATIC( QSENSORGESTURE_VALIDIDS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGesture * obj = (QSensorGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->validIds () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QStringList invalidIds() const
*/
HB_FUNC_STATIC( QSENSORGESTURE_INVALIDIDS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGesture * obj = (QSensorGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->invalidIds () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QStringList gestureSignals() const
*/
HB_FUNC_STATIC( QSENSORGESTURE_GESTURESIGNALS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGesture * obj = (QSensorGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->gestureSignals () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void startDetection()
*/
HB_FUNC_STATIC( QSENSORGESTURE_STARTDETECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGesture * obj = (QSensorGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->startDetection ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void stopDetection()
*/
HB_FUNC_STATIC( QSENSORGESTURE_STOPDETECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGesture * obj = (QSensorGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->stopDetection ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

void QSensorGestureSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QSENSORGESTURE_ONDETECTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGestureSlots_connect_signal( "detected(QString)", "detected(QString)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
