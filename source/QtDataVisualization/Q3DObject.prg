/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS Q3DObject INHERIT QObject

   METHOD new
   METHOD delete

   METHOD copyValuesFrom
   METHOD parentScene
   METHOD position
   METHOD setPosition

   METHOD onPositionChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS Q3DObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <Q3DObject>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <Q3DObject>
#endif

#include <Q3DScene>

using namespace QtDataVisualization;

/*
explicit Q3DObject(QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( Q3DOBJECT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    Q3DObject * o = new Q3DObject ( OPQOBJECT(1,Q_NULLPTR) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~Q3DObject()
*/
HB_FUNC_STATIC( Q3DOBJECT_DELETE )
{
  Q3DObject * obj = (Q3DObject *) _qt5xhb_itemGetPtrStackSelfItem();

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
Q3DScene *parentScene()
*/
HB_FUNC_STATIC( Q3DOBJECT_PARENTSCENE )
{
  Q3DObject * obj = (Q3DObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      Q3DScene * ptr = obj->parentScene ();
      _qt5xhb_createReturnQObjectClass ( ptr, "Q3DSCENE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QVector3D position() const
*/
HB_FUNC_STATIC( Q3DOBJECT_POSITION )
{
  Q3DObject * obj = (Q3DObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QVector3D * ptr = new QVector3D( obj->position () );
      _qt5xhb_createReturnClass ( ptr, "QVECTOR3D", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setPosition(const QVector3D &position)
*/
HB_FUNC_STATIC( Q3DOBJECT_SETPOSITION )
{
  Q3DObject * obj = (Q3DObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQVECTOR3D(1) )
    {
      obj->setPosition ( *PQVECTOR3D(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void copyValuesFrom(const Q3DObject &source)
*/
HB_FUNC_STATIC( Q3DOBJECT_COPYVALUESFROM )
{
  Q3DObject * obj = (Q3DObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQ3DOBJECT(1) )
    {
      obj->copyValuesFrom ( *PQ3DOBJECT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDirty(bool dirty) (protected)
*/

/*
bool isDirty() const (protected)
*/

void Q3DObjectSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( Q3DOBJECT_ONPOSITIONCHANGED )
{
  Q3DObjectSlots_connect_signal( "positionChanged(QVector3D)", "positionChanged(QVector3D)" );
}


#pragma ENDDUMP
