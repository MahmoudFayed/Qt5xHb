/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QStyleOptionToolBar INHERIT QStyleOption

   METHOD new

   METHOD positionOfLine
   METHOD positionWithinLine
   METHOD toolBarArea
   METHOD features
   METHOD lineWidth
   METHOD midLineWidth

   METHOD setPositionOfLine
   METHOD setPositionWithinLine
   METHOD setToolBarArea
   METHOD setFeatures
   METHOD setLineWidth
   METHOD setMidLineWidth

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStyleOptionToolBar
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QStyleOptionToolBar>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QStyleOptionToolBar>
#endif

/*
QStyleOptionToolBar()
*/
void QStyleOptionToolBar_new1 ()
{
  QStyleOptionToolBar * o = new QStyleOptionToolBar ();
  _qt5xhb_returnNewObject( o, true );
}

/*
QStyleOptionToolBar(const QStyleOptionToolBar &other)
*/
void QStyleOptionToolBar_new2 ()
{
  QStyleOptionToolBar * o = new QStyleOptionToolBar ( *PQSTYLEOPTIONTOOLBAR(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QStyleOptionToolBar(int version) (protected)
*/

//[1]QStyleOptionToolBar()
//[2]QStyleOptionToolBar(const QStyleOptionToolBar &other)
//[3]QStyleOptionToolBar(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONTOOLBAR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionToolBar_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONTOOLBAR(1) )
  {
    QStyleOptionToolBar_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
ToolBarPosition positionOfLine
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBAR_POSITIONOFLINE )
{
  QStyleOptionToolBar * obj = (QStyleOptionToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->positionOfLine );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBAR_SETPOSITIONOFLINE )
{
  QStyleOptionToolBar * obj = (QStyleOptionToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->positionOfLine = (QStyleOptionToolBar::ToolBarPosition) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
ToolBarPosition positionWithinLine
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBAR_POSITIONWITHINLINE )
{
  QStyleOptionToolBar * obj = (QStyleOptionToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->positionWithinLine );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBAR_SETPOSITIONWITHINLINE )
{
  QStyleOptionToolBar * obj = (QStyleOptionToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->positionWithinLine = (QStyleOptionToolBar::ToolBarPosition) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::ToolBarArea toolBarArea
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBAR_TOOLBARAREA )
{
  QStyleOptionToolBar * obj = (QStyleOptionToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->toolBarArea );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBAR_SETTOOLBARAREA )
{
  QStyleOptionToolBar * obj = (QStyleOptionToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->toolBarArea = (Qt::ToolBarArea) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
ToolBarFeatures features
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBAR_FEATURES )
{
  QStyleOptionToolBar * obj = (QStyleOptionToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->features );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBAR_SETFEATURES )
{
  QStyleOptionToolBar * obj = (QStyleOptionToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->features = (QStyleOptionToolBar::ToolBarFeatures) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int lineWidth
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBAR_LINEWIDTH )
{
  QStyleOptionToolBar * obj = (QStyleOptionToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->lineWidth );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBAR_SETLINEWIDTH )
{
  QStyleOptionToolBar * obj = (QStyleOptionToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->lineWidth = PINT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int midLineWidth
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBAR_MIDLINEWIDTH )
{
  QStyleOptionToolBar * obj = (QStyleOptionToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->midLineWidth );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBAR_SETMIDLINEWIDTH )
{
  QStyleOptionToolBar * obj = (QStyleOptionToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->midLineWidth = PINT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
