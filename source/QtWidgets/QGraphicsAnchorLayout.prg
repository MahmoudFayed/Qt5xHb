/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGRAPHICSANCHOR
REQUEST QGRAPHICSLAYOUTITEM
#endif

CLASS QGraphicsAnchorLayout INHERIT QGraphicsLayout

   METHOD new
   METHOD delete
   METHOD addAnchor
   METHOD addAnchors
   METHOD addCornerAnchors
   METHOD anchor
   METHOD horizontalSpacing
   METHOD setHorizontalSpacing
   METHOD setSpacing
   METHOD setVerticalSpacing
   METHOD verticalSpacing
   METHOD count
   METHOD invalidate
   METHOD itemAt
   METHOD removeAt
   METHOD setGeometry

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsAnchorLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsAnchorLayout>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGraphicsAnchorLayout>
#endif

/*
QGraphicsAnchorLayout ( QGraphicsLayoutItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSLAYOUTITEM(1)||ISNIL(1)) )
  {
    QGraphicsAnchorLayout * o = new QGraphicsAnchorLayout ( ISNIL(1)? 0 : (QGraphicsLayoutItem *) _qt5xhb_itemGetPtr(1) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_DELETE )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) _qt5xhb_itemGetPtrStackSelfItem();

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
QGraphicsAnchor * addAnchor ( QGraphicsLayoutItem * firstItem, Qt::AnchorPoint firstEdge, QGraphicsLayoutItem * secondItem, Qt::AnchorPoint secondEdge )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_ADDANCHOR )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(4) && ISQGRAPHICSLAYOUTITEM(1) && ISNUM(2) && ISQGRAPHICSLAYOUTITEM(3) && ISNUM(4) )
    {
      QGraphicsAnchor * ptr = obj->addAnchor ( PQGRAPHICSLAYOUTITEM(1), (Qt::AnchorPoint) hb_parni(2), PQGRAPHICSLAYOUTITEM(3), (Qt::AnchorPoint) hb_parni(4) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QGRAPHICSANCHOR" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void addAnchors ( QGraphicsLayoutItem * firstItem, QGraphicsLayoutItem * secondItem, Qt::Orientations orientations = Qt::Horizontal | Qt::Vertical )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_ADDANCHORS )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(2,3) && ISQGRAPHICSLAYOUTITEM(1) && ISQGRAPHICSLAYOUTITEM(2) && ISOPTNUM(3) )
    {
      obj->addAnchors ( PQGRAPHICSLAYOUTITEM(1), PQGRAPHICSLAYOUTITEM(2), ISNIL(3)? (Qt::Orientations) Qt::Horizontal | Qt::Vertical : (Qt::Orientations) hb_parni(3) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addCornerAnchors ( QGraphicsLayoutItem * firstItem, Qt::Corner firstCorner, QGraphicsLayoutItem * secondItem, Qt::Corner secondCorner )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_ADDCORNERANCHORS )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(4) && ISQGRAPHICSLAYOUTITEM(1) && ISNUM(2) && ISQGRAPHICSLAYOUTITEM(3) && ISNUM(4) )
    {
      obj->addCornerAnchors ( PQGRAPHICSLAYOUTITEM(1), (Qt::Corner) hb_parni(2), PQGRAPHICSLAYOUTITEM(3), (Qt::Corner) hb_parni(4) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QGraphicsAnchor * anchor ( QGraphicsLayoutItem * firstItem, Qt::AnchorPoint firstEdge, QGraphicsLayoutItem * secondItem, Qt::AnchorPoint secondEdge )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_ANCHOR )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(4) && ISQGRAPHICSLAYOUTITEM(1) && ISNUM(2) && ISQGRAPHICSLAYOUTITEM(3) && ISNUM(4) )
    {
      QGraphicsAnchor * ptr = obj->anchor ( PQGRAPHICSLAYOUTITEM(1), (Qt::AnchorPoint) hb_parni(2), PQGRAPHICSLAYOUTITEM(3), (Qt::AnchorPoint) hb_parni(4) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QGRAPHICSANCHOR" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal horizontalSpacing () const
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_HORIZONTALSPACING )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->horizontalSpacing () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setHorizontalSpacing ( qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_SETHORIZONTALSPACING )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setHorizontalSpacing ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSpacing ( qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_SETSPACING )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setSpacing ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVerticalSpacing ( qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_SETVERTICALSPACING )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setVerticalSpacing ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal verticalSpacing () const
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_VERTICALSPACING )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->verticalSpacing () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual int count () const
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_COUNT )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->count () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void invalidate ()
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_INVALIDATE )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->invalidate ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QGraphicsLayoutItem * itemAt ( int index ) const
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_ITEMAT )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QGraphicsLayoutItem * ptr = obj->itemAt ( PINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QGRAPHICSLAYOUTITEM", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void removeAt ( int index )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_REMOVEAT )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->removeAt ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setGeometry ( const QRectF & geom )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_SETGEOMETRY )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQRECTF(1) )
    {
      obj->setGeometry ( *PQRECTF(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
