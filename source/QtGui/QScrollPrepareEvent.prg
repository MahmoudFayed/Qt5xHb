/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QSIZEF
REQUEST QRECTF
#endif

CLASS QScrollPrepareEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD startPos
   METHOD viewportSize
   METHOD contentPosRange
   METHOD contentPos
   METHOD setViewportSize
   METHOD setContentPosRange
   METHOD setContentPos

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScrollPrepareEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QScrollPrepareEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QScrollPrepareEvent>
#endif

/*
QScrollPrepareEvent(const QPointF &startPos)
*/
HB_FUNC_STATIC( QSCROLLPREPAREEVENT_NEW )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QScrollPrepareEvent * o = new QScrollPrepareEvent ( *PQPOINTF(1) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSCROLLPREPAREEVENT_DELETE )
{
  QScrollPrepareEvent * obj = (QScrollPrepareEvent *) _qt5xhb_itemGetPtrStackSelfItem();

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
QPointF startPos() const
*/
HB_FUNC_STATIC( QSCROLLPREPAREEVENT_STARTPOS )
{
  QScrollPrepareEvent * obj = (QScrollPrepareEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPointF * ptr = new QPointF( obj->startPos () );
      _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSizeF viewportSize() const
*/
HB_FUNC_STATIC( QSCROLLPREPAREEVENT_VIEWPORTSIZE )
{
  QScrollPrepareEvent * obj = (QScrollPrepareEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSizeF * ptr = new QSizeF( obj->viewportSize () );
      _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QRectF contentPosRange() const
*/
HB_FUNC_STATIC( QSCROLLPREPAREEVENT_CONTENTPOSRANGE )
{
  QScrollPrepareEvent * obj = (QScrollPrepareEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRectF * ptr = new QRectF( obj->contentPosRange () );
      _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPointF contentPos() const
*/
HB_FUNC_STATIC( QSCROLLPREPAREEVENT_CONTENTPOS )
{
  QScrollPrepareEvent * obj = (QScrollPrepareEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPointF * ptr = new QPointF( obj->contentPos () );
      _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setViewportSize(const QSizeF &size)
*/
HB_FUNC_STATIC( QSCROLLPREPAREEVENT_SETVIEWPORTSIZE )
{
  QScrollPrepareEvent * obj = (QScrollPrepareEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSIZEF(1) )
    {
      obj->setViewportSize ( *PQSIZEF(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setContentPosRange(const QRectF &rect)
*/
HB_FUNC_STATIC( QSCROLLPREPAREEVENT_SETCONTENTPOSRANGE )
{
  QScrollPrepareEvent * obj = (QScrollPrepareEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQRECTF(1) )
    {
      obj->setContentPosRange ( *PQRECTF(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setContentPos(const QPointF &pos)
*/
HB_FUNC_STATIC( QSCROLLPREPAREEVENT_SETCONTENTPOS )
{
  QScrollPrepareEvent * obj = (QScrollPrepareEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPOINTF(1) )
    {
      obj->setContentPos ( *PQPOINTF(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
