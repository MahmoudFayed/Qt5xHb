/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QBYTEARRAY
#endif

CLASS QSignalTransition INHERIT QAbstractTransition

   METHOD new
   METHOD delete
   METHOD senderObject
   METHOD setSenderObject
   METHOD signal
   METHOD setSignal

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSignalTransition
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSignalTransition>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSignalTransition>
#endif

/*
QSignalTransition(QState *sourceState = 0)
*/
void QSignalTransition_new1 ()
{
  QSignalTransition * o = new QSignalTransition ( OPQSTATE(1,0) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QSignalTransition(const QObject *sender, const char *signal,QState *sourceState = 0)
*/
void QSignalTransition_new2 ()
{
  QSignalTransition * o = new QSignalTransition ( PQOBJECT(1), PCONSTCHAR(2), OPQSTATE(3,0) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]QSignalTransition(QState *sourceState = 0)
//[2]QSignalTransition(const QObject *sender, const char *signal,QState *sourceState = 0)

HB_FUNC_STATIC( QSIGNALTRANSITION_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    QSignalTransition_new1();
  }
  else if( ISBETWEEN(2,3) && ISQOBJECT(1) && ISCHAR(2) && (ISQSTATE(3)||ISNIL(3)) )
  {
    QSignalTransition_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSIGNALTRANSITION_DELETE )
{
  QSignalTransition * obj = (QSignalTransition *) _qt5xhb_itemGetPtrStackSelfItem();

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
QObject *senderObject() const
*/
HB_FUNC_STATIC( QSIGNALTRANSITION_SENDEROBJECT )
{
  QSignalTransition * obj = (QSignalTransition *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QObject * ptr = obj->senderObject ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setSenderObject(const QObject *sender)
*/
HB_FUNC_STATIC( QSIGNALTRANSITION_SETSENDEROBJECT )
{
  QSignalTransition * obj = (QSignalTransition *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQOBJECT(1) )
    {
      obj->setSenderObject ( PQOBJECT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QByteArray signal() const
*/
HB_FUNC_STATIC( QSIGNALTRANSITION_SIGNAL )
{
  QSignalTransition * obj = (QSignalTransition *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QByteArray * ptr = new QByteArray( obj->signal () );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setSignal(const QByteArray &signal)
*/
HB_FUNC_STATIC( QSIGNALTRANSITION_SETSIGNAL )
{
  QSignalTransition * obj = (QSignalTransition *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
    {
      obj->setSignal ( *PQBYTEARRAY(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
