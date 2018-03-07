/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QQMLENGINE
REQUEST QSIZE
REQUEST QQMLCONTEXT
REQUEST QQUICKITEM
REQUEST QURL
#endif

CLASS QQuickView INHERIT QQuickWindow

   METHOD new
   METHOD delete
   METHOD engine
   METHOD initialSize
   METHOD resizeMode
   METHOD rootContext
   METHOD rootObject
   METHOD setResizeMode
   METHOD source
   METHOD status
   METHOD setSource

   METHOD onStatusChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQuickView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QQuickView>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QQuickView>
#endif

#include <QList>
#include <QQmlEngine>
#include <QQmlContext>
#include <QQuickItem>

/*
QQuickView(QWindow * parent = 0)
*/
void QQuickView_new1 ()
{
  QQuickView * o = new QQuickView ( OPQWINDOW(1,0) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QQuickView(QQmlEngine * engine, QWindow * parent)
*/
void QQuickView_new2 ()
{
  QQuickView * o = new QQuickView ( PQQMLENGINE(1), PQWINDOW(2) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QQuickView(const QUrl & source, QWindow * parent = 0)
*/
void QQuickView_new3 ()
{
  QQuickView * o = new QQuickView ( *PQURL(1), OPQWINDOW(2,0) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]QQuickView(QWindow * parent = 0)
//[2]QQuickView(QQmlEngine * engine, QWindow * parent)
//[3]QQuickView(const QUrl & source, QWindow * parent = 0)

HB_FUNC_STATIC( QQUICKVIEW_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWINDOW(1)||ISNIL(1)) )
  {
    QQuickView_new1();
  }
  else if( ISNUMPAR(2) && ISQQMLENGINE(1) && ISQWINDOW(2) )
  {
    QQuickView_new2();
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && (ISQWINDOW(2)||ISNIL(2)) )
  {
    QQuickView_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QQUICKVIEW_DELETE )
{
  QQuickView * obj = (QQuickView *) _qt5xhb_itemGetPtrStackSelfItem();

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
QQmlEngine * engine() const
*/
HB_FUNC_STATIC( QQUICKVIEW_ENGINE )
{
  QQuickView * obj = (QQuickView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QQmlEngine * ptr = obj->engine ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QQMLENGINE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSize initialSize() const
*/
HB_FUNC_STATIC( QQUICKVIEW_INITIALSIZE )
{
  QQuickView * obj = (QQuickView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->initialSize () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
ResizeMode resizeMode() const
*/
HB_FUNC_STATIC( QQUICKVIEW_RESIZEMODE )
{
  QQuickView * obj = (QQuickView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->resizeMode () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QQmlContext * rootContext() const
*/
HB_FUNC_STATIC( QQUICKVIEW_ROOTCONTEXT )
{
  QQuickView * obj = (QQuickView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QQmlContext * ptr = obj->rootContext ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QQMLCONTEXT" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QQuickItem * rootObject() const
*/
HB_FUNC_STATIC( QQUICKVIEW_ROOTOBJECT )
{
  QQuickView * obj = (QQuickView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QQuickItem * ptr = obj->rootObject ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QQUICKITEM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setResizeMode(ResizeMode)
*/
HB_FUNC_STATIC( QQUICKVIEW_SETRESIZEMODE )
{
  QQuickView * obj = (QQuickView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setResizeMode ( (QQuickView::ResizeMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QUrl source() const
*/
HB_FUNC_STATIC( QQUICKVIEW_SOURCE )
{
  QQuickView * obj = (QQuickView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QUrl * ptr = new QUrl( obj->source () );
      _qt5xhb_createReturnClass ( ptr, "QURL", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Status status() const
*/
HB_FUNC_STATIC( QQUICKVIEW_STATUS )
{
  QQuickView * obj = (QQuickView *) _qt5xhb_itemGetPtrStackSelfItem();

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
void setSource(const QUrl & url)
*/
HB_FUNC_STATIC( QQUICKVIEW_SETSOURCE )
{
  QQuickView * obj = (QQuickView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQURL(1) )
    {
      obj->setSource ( *PQURL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QQuickViewSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QQUICKVIEW_ONSTATUSCHANGED )
{
  QQuickViewSlots_connect_signal( "statusChanged(QQuickView::Status)", "statusChanged(QQuickView::Status)" );
}


#pragma ENDDUMP
