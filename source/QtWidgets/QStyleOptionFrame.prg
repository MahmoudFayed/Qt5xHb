/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QStyleOptionFrame INHERIT QStyleOption

   METHOD new

   METHOD lineWidth
   METHOD midLineWidth
   METHOD features
   METHOD frameShape

   METHOD setLineWidth
   METHOD setMidLineWidth
   METHOD setFeatures
   METHOD setFrameShape

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStyleOptionFrame
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QStyleOptionFrame>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QStyleOptionFrame>
#endif

/*
QStyleOptionFrame()
*/
void QStyleOptionFrame_new1 ()
{
  QStyleOptionFrame * o = new QStyleOptionFrame ();
  _qt5xhb_returnNewObject( o, true );
}

/*
QStyleOptionFrame(const QStyleOptionFrame &other)
*/
void QStyleOptionFrame_new2 ()
{
  QStyleOptionFrame * o = new QStyleOptionFrame ( *PQSTYLEOPTIONFRAME(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QStyleOptionFrame(int version) (protected)
*/

//[1]QStyleOptionFrame()
//[2]QStyleOptionFrame(const QStyleOptionFrame &other)
//[3]QStyleOptionFrame(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONFRAME_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionFrame_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONFRAME(1) )
  {
    QStyleOptionFrame_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int lineWidth
*/
HB_FUNC_STATIC( QSTYLEOPTIONFRAME_LINEWIDTH )
{
  QStyleOptionFrame * obj = (QStyleOptionFrame *) _qt5xhb_itemGetPtrStackSelfItem();

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
HB_FUNC_STATIC( QSTYLEOPTIONFRAME_SETLINEWIDTH )
{
  QStyleOptionFrame * obj = (QStyleOptionFrame *) _qt5xhb_itemGetPtrStackSelfItem();

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
HB_FUNC_STATIC( QSTYLEOPTIONFRAME_MIDLINEWIDTH )
{
  QStyleOptionFrame * obj = (QStyleOptionFrame *) _qt5xhb_itemGetPtrStackSelfItem();

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
HB_FUNC_STATIC( QSTYLEOPTIONFRAME_SETMIDLINEWIDTH )
{
  QStyleOptionFrame * obj = (QStyleOptionFrame *) _qt5xhb_itemGetPtrStackSelfItem();

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

/*
FrameFeatures features
*/
HB_FUNC_STATIC( QSTYLEOPTIONFRAME_FEATURES )
{
  QStyleOptionFrame * obj = (QStyleOptionFrame *) _qt5xhb_itemGetPtrStackSelfItem();

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
HB_FUNC_STATIC( QSTYLEOPTIONFRAME_SETFEATURES )
{
  QStyleOptionFrame * obj = (QStyleOptionFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->features = (QStyleOptionFrame::FrameFeatures) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QFrame::Shape frameShape
*/
HB_FUNC_STATIC( QSTYLEOPTIONFRAME_FRAMESHAPE )
{
  QStyleOptionFrame * obj = (QStyleOptionFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->frameShape );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONFRAME_SETFRAMESHAPE )
{
  QStyleOptionFrame * obj = (QStyleOptionFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->frameShape = (QFrame::Shape) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
