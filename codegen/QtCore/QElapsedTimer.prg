/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QElapsedTimer

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD elapsed
   METHOD hasExpired
   METHOD invalidate
   METHOD isValid
   METHOD msecsSinceReference
   METHOD msecsTo
   METHOD nsecsElapsed
   METHOD restart
   METHOD secsTo
   METHOD start
   METHOD clockType
   METHOD isMonotonic

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QElapsedTimer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QElapsedTimer>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QElapsedTimer>
#endif

/*
QElapsedTimer()
*/
HB_FUNC_STATIC( QELAPSEDTIMER_NEW )
{
  QElapsedTimer * o = new QElapsedTimer ();
  _qt5xhb_storePointerAndFlag( o, true );
}

HB_FUNC_STATIC( QELAPSEDTIMER_DELETE )
{
  QElapsedTimer * obj = (QElapsedTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
qint64 elapsed() const
*/
HB_FUNC_STATIC( QELAPSEDTIMER_ELAPSED )
{
  QElapsedTimer * obj = (QElapsedTimer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQINT64( obj->elapsed () );
  }
}

/*
bool hasExpired(qint64 timeout) const
*/
HB_FUNC_STATIC( QELAPSEDTIMER_HASEXPIRED )
{
  QElapsedTimer * obj = (QElapsedTimer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->hasExpired ( PQINT64(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void invalidate()
*/
HB_FUNC_STATIC( QELAPSEDTIMER_INVALIDATE )
{
  QElapsedTimer * obj = (QElapsedTimer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->invalidate ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QELAPSEDTIMER_ISVALID )
{
  QElapsedTimer * obj = (QElapsedTimer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}

/*
qint64 msecsSinceReference() const
*/
HB_FUNC_STATIC( QELAPSEDTIMER_MSECSSINCEREFERENCE )
{
  QElapsedTimer * obj = (QElapsedTimer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQINT64( obj->msecsSinceReference () );
  }
}

/*
qint64 msecsTo(const QElapsedTimer & other) const
*/
HB_FUNC_STATIC( QELAPSEDTIMER_MSECSTO )
{
  QElapsedTimer * obj = (QElapsedTimer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQELAPSEDTIMER(1) )
    {
      RQINT64( obj->msecsTo ( *PQELAPSEDTIMER(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qint64 nsecsElapsed() const
*/
HB_FUNC_STATIC( QELAPSEDTIMER_NSECSELAPSED )
{
  QElapsedTimer * obj = (QElapsedTimer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQINT64( obj->nsecsElapsed () );
  }
}

/*
qint64 restart()
*/
HB_FUNC_STATIC( QELAPSEDTIMER_RESTART )
{
  QElapsedTimer * obj = (QElapsedTimer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQINT64( obj->restart () );
  }
}

/*
qint64 secsTo(const QElapsedTimer & other) const
*/
HB_FUNC_STATIC( QELAPSEDTIMER_SECSTO )
{
  QElapsedTimer * obj = (QElapsedTimer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQELAPSEDTIMER(1) )
    {
      RQINT64( obj->secsTo ( *PQELAPSEDTIMER(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void start()
*/
HB_FUNC_STATIC( QELAPSEDTIMER_START )
{
  QElapsedTimer * obj = (QElapsedTimer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->start ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static ClockType clockType()
*/
HB_FUNC_STATIC( QELAPSEDTIMER_CLOCKTYPE )
{
  hb_retni( QElapsedTimer::clockType () );
}

/*
static bool isMonotonic()
*/
HB_FUNC_STATIC( QELAPSEDTIMER_ISMONOTONIC )
{
  RBOOL( QElapsedTimer::isMonotonic () );
}

HB_FUNC_STATIC( QELAPSEDTIMER_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QELAPSEDTIMER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QELAPSEDTIMER_NEWFROM );
}

HB_FUNC_STATIC( QELAPSEDTIMER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QELAPSEDTIMER_NEWFROM );
}

HB_FUNC_STATIC( QELAPSEDTIMER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QELAPSEDTIMER_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP