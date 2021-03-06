/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QTextTableCellFormat INHERIT QTextCharFormat

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD setTopPadding
   METHOD topPadding
   METHOD setBottomPadding
   METHOD bottomPadding
   METHOD setLeftPadding
   METHOD leftPadding
   METHOD setRightPadding
   METHOD rightPadding
   METHOD setPadding

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextTableCellFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTextTableCellFormat>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTextTableCellFormat>
#endif

/*
QTextTableCellFormat()
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextTableCellFormat * o = new QTextTableCellFormat ();
    _qt5xhb_returnNewObject( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_DELETE )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) _qt5xhb_itemGetPtrStackSelfItem();

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
bool isValid() const
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_ISVALID )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isValid () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setTopPadding(qreal padding)
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_SETTOPPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setTopPadding ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal topPadding() const
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_TOPPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->topPadding () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setBottomPadding(qreal padding)
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_SETBOTTOMPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setBottomPadding ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal bottomPadding() const
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_BOTTOMPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->bottomPadding () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setLeftPadding(qreal padding)
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_SETLEFTPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setLeftPadding ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal leftPadding() const
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_LEFTPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->leftPadding () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setRightPadding(qreal padding)
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_SETRIGHTPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setRightPadding ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal rightPadding() const
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_RIGHTPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->rightPadding () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setPadding(qreal padding)
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_SETPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setPadding ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
