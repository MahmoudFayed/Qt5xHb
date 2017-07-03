/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINT
#endif

CLASS QContextMenuEvent INHERIT QInputEvent

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD globalPos
   METHOD globalX
   METHOD globalY
   METHOD pos
   METHOD reason
   METHOD x
   METHOD y

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QContextMenuEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QContextMenuEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QContextMenuEvent>
#endif

/*
QContextMenuEvent ( Reason reason, const QPoint & pos, const QPoint & globalPos, Qt::KeyboardModifiers modifiers )
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_NEW1 )
{
  int par4 = hb_parni(4);
  QContextMenuEvent * o = new QContextMenuEvent ( (QContextMenuEvent::Reason) hb_parni(1), *PQPOINT(2), *PQPOINT(3), (Qt::KeyboardModifiers) par4 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QContextMenuEvent ( Reason reason, const QPoint & pos, const QPoint & globalPos )
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_NEW2 )
{
  QContextMenuEvent * o = new QContextMenuEvent ( (QContextMenuEvent::Reason) hb_parni(1), *PQPOINT(2), *PQPOINT(3) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QContextMenuEvent ( Reason reason, const QPoint & pos )
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_NEW3 )
{
  QContextMenuEvent * o = new QContextMenuEvent ( (QContextMenuEvent::Reason) hb_parni(1), *PQPOINT(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QContextMenuEvent ( Reason reason, const QPoint & pos, const QPoint & globalPos, Qt::KeyboardModifiers modifiers )
//[2]QContextMenuEvent ( Reason reason, const QPoint & pos, const QPoint & globalPos )
//[3]QContextMenuEvent ( Reason reason, const QPoint & pos )

HB_FUNC_STATIC( QCONTEXTMENUEVENT_NEW )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISQPOINT(2) && ISQPOINT(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QCONTEXTMENUEVENT_NEW1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISQPOINT(2) && ISQPOINT(3) )
  {
    HB_FUNC_EXEC( QCONTEXTMENUEVENT_NEW2 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQPOINT(2) )
  {
    HB_FUNC_EXEC( QCONTEXTMENUEVENT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QCONTEXTMENUEVENT_DELETE )
{
  QContextMenuEvent * obj = (QContextMenuEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
const QPoint & globalPos () const
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_GLOBALPOS )
{
  QContextMenuEvent * obj = (QContextMenuEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->globalPos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
int globalX () const
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_GLOBALX )
{
  QContextMenuEvent * obj = (QContextMenuEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->globalX () );
  }
}


/*
int globalY () const
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_GLOBALY )
{
  QContextMenuEvent * obj = (QContextMenuEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->globalY () );
  }
}


/*
const QPoint & pos () const
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_POS )
{
  QContextMenuEvent * obj = (QContextMenuEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->pos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
Reason reason () const
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_REASON )
{
  QContextMenuEvent * obj = (QContextMenuEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->reason () );
  }
}


/*
int x () const
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_X )
{
  QContextMenuEvent * obj = (QContextMenuEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->x () );
  }
}


/*
int y () const
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_Y )
{
  QContextMenuEvent * obj = (QContextMenuEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->y () );
  }
}



#pragma ENDDUMP
