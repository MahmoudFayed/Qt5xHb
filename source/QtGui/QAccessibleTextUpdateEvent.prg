/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QAccessibleTextUpdateEvent INHERIT QAccessibleTextCursorEvent

   METHOD new
   METHOD delete
   METHOD textRemoved
   METHOD textInserted
   METHOD changePosition

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAccessibleTextUpdateEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAccessibleTextUpdateEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAccessibleTextUpdateEvent>
#endif

/*
QAccessibleTextUpdateEvent(QObject *obj, int position, const QString &oldText, const QString &text)
*/
HB_FUNC_STATIC( QACCESSIBLETEXTUPDATEEVENT_NEW )
{
  if( ISNUMPAR(4) && ISQOBJECT(1) && ISNUM(2) && ISCHAR(3) && ISCHAR(4) )
  {
    QAccessibleTextUpdateEvent * o = new QAccessibleTextUpdateEvent ( PQOBJECT(1), PINT(2), PQSTRING(3), PQSTRING(4) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QACCESSIBLETEXTUPDATEEVENT_DELETE )
{
  QAccessibleTextUpdateEvent * obj = (QAccessibleTextUpdateEvent *) _qt5xhb_itemGetPtrStackSelfItem();

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
QString textRemoved() const
*/
HB_FUNC_STATIC( QACCESSIBLETEXTUPDATEEVENT_TEXTREMOVED )
{
  QAccessibleTextUpdateEvent * obj = (QAccessibleTextUpdateEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->textRemoved () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString textInserted() const
*/
HB_FUNC_STATIC( QACCESSIBLETEXTUPDATEEVENT_TEXTINSERTED )
{
  QAccessibleTextUpdateEvent * obj = (QAccessibleTextUpdateEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->textInserted () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int changePosition() const
*/
HB_FUNC_STATIC( QACCESSIBLETEXTUPDATEEVENT_CHANGEPOSITION )
{
  QAccessibleTextUpdateEvent * obj = (QAccessibleTextUpdateEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->changePosition () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
