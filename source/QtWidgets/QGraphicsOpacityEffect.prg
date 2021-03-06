/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
#endif

CLASS QGraphicsOpacityEffect INHERIT QGraphicsEffect

   METHOD new
   METHOD delete
   METHOD opacity
   METHOD opacityMask
   METHOD setOpacity
   METHOD setOpacityMask

   METHOD onOpacityChanged
   METHOD onOpacityMaskChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsOpacityEffect
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsOpacityEffect>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGraphicsOpacityEffect>
#endif

/*
QGraphicsOpacityEffect ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QGraphicsOpacityEffect * o = new QGraphicsOpacityEffect ( OPQOBJECT(1,0) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_DELETE )
{
  QGraphicsOpacityEffect * obj = (QGraphicsOpacityEffect *) _qt5xhb_itemGetPtrStackSelfItem();

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
qreal opacity () const
*/
HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_OPACITY )
{
  QGraphicsOpacityEffect * obj = (QGraphicsOpacityEffect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->opacity () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QBrush opacityMask () const
*/
HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_OPACITYMASK )
{
  QGraphicsOpacityEffect * obj = (QGraphicsOpacityEffect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QBrush * ptr = new QBrush( obj->opacityMask () );
      _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setOpacity ( qreal opacity )
*/
HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_SETOPACITY )
{
  QGraphicsOpacityEffect * obj = (QGraphicsOpacityEffect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setOpacity ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOpacityMask ( const QBrush & mask )
*/
HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_SETOPACITYMASK )
{
  QGraphicsOpacityEffect * obj = (QGraphicsOpacityEffect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
      obj->setOpacityMask ( *PQBRUSH(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QGraphicsOpacityEffectSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_ONOPACITYCHANGED )
{
  QGraphicsOpacityEffectSlots_connect_signal( "opacityChanged(qreal)", "opacityChanged(qreal)" );
}

HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_ONOPACITYMASKCHANGED )
{
  QGraphicsOpacityEffectSlots_connect_signal( "opacityMaskChanged(QBrush)", "opacityMaskChanged(QBrush)" );
}

#pragma ENDDUMP
