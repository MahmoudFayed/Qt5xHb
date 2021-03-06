/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QAccessibleTextSelectionEvent INHERIT QAccessibleTextCursorEvent

   METHOD new
   METHOD delete
   METHOD setSelection
   METHOD selectionStart
   METHOD selectionEnd

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAccessibleTextSelectionEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAccessibleTextSelectionEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAccessibleTextSelectionEvent>
#endif

/*
QAccessibleTextSelectionEvent(QObject *obj, int start, int end)
*/
HB_FUNC_STATIC( QACCESSIBLETEXTSELECTIONEVENT_NEW )
{
  if( ISNUMPAR(3) && ISQOBJECT(1) && ISNUM(2) && ISNUM(3) )
  {
    QAccessibleTextSelectionEvent * o = new QAccessibleTextSelectionEvent ( PQOBJECT(1), PINT(2), PINT(3) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QACCESSIBLETEXTSELECTIONEVENT_DELETE )
{
  QAccessibleTextSelectionEvent * obj = (QAccessibleTextSelectionEvent *) _qt5xhb_itemGetPtrStackSelfItem();

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
void setSelection(int start, int end)
*/
HB_FUNC_STATIC( QACCESSIBLETEXTSELECTIONEVENT_SETSELECTION )
{
  QAccessibleTextSelectionEvent * obj = (QAccessibleTextSelectionEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
      obj->setSelection ( PINT(1), PINT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int selectionStart() const
*/
HB_FUNC_STATIC( QACCESSIBLETEXTSELECTIONEVENT_SELECTIONSTART )
{
  QAccessibleTextSelectionEvent * obj = (QAccessibleTextSelectionEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->selectionStart () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int selectionEnd() const
*/
HB_FUNC_STATIC( QACCESSIBLETEXTSELECTIONEVENT_SELECTIONEND )
{
  QAccessibleTextSelectionEvent * obj = (QAccessibleTextSelectionEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->selectionEnd () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
