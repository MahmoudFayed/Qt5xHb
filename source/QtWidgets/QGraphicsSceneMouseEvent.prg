/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QPOINT
#endif

CLASS QGraphicsSceneMouseEvent INHERIT QGraphicsSceneEvent

   DATA class_id INIT Class_Id_QGraphicsSceneMouseEvent
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD button
   METHOD buttonDownPos
   METHOD buttonDownScenePos
   METHOD buttonDownScreenPos
   METHOD buttons
   METHOD lastPos
   METHOD lastScenePos
   METHOD lastScreenPos
   METHOD modifiers
   METHOD pos
   METHOD scenePos
   METHOD screenPos
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsSceneMouseEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QGraphicsSceneMouseEvent>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt4xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QGraphicsSceneMouseEvent>
#endif
#endif

HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
Qt::MouseButton button () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_BUTTON )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->button (  ) );
  }
}


/*
QPointF buttonDownPos ( Qt::MouseButton button ) const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_BUTTONDOWNPOS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QPointF * ptr = new QPointF( obj->buttonDownPos (  (Qt::MouseButton) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPointF buttonDownScenePos ( Qt::MouseButton button ) const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_BUTTONDOWNSCENEPOS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QPointF * ptr = new QPointF( obj->buttonDownScenePos (  (Qt::MouseButton) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPoint buttonDownScreenPos ( Qt::MouseButton button ) const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_BUTTONDOWNSCREENPOS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QPoint * ptr = new QPoint( obj->buttonDownScreenPos (  (Qt::MouseButton) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
Qt::MouseButtons buttons () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_BUTTONS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->buttons (  ) );
  }
}


/*
QPointF lastPos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_LASTPOS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->lastPos (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPointF lastScenePos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_LASTSCENEPOS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->lastScenePos (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPoint lastScreenPos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_LASTSCREENPOS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->lastScreenPos (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
Qt::KeyboardModifiers modifiers () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_MODIFIERS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->modifiers (  ) );
  }
}


/*
QPointF pos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_POS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->pos (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPointF scenePos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_SCENEPOS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->scenePos (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPoint screenPos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_SCREENPOS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->screenPos (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}



#pragma ENDDUMP
