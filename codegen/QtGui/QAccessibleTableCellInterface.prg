/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACCESSIBLEINTERFACE
#endif

CLASS QAccessibleTableCellInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD columnExtent
   METHOD columnHeaderCells
   METHOD columnIndex
   METHOD rowExtent
   METHOD rowHeaderCells
   METHOD rowIndex
   METHOD isSelected
   METHOD table

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAccessibleTableCellInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAccessibleTableCellInterface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAccessibleTableCellInterface>
#endif


HB_FUNC_STATIC( QACCESSIBLETABLECELLINTERFACE_DELETE )
{
  QAccessibleTableCellInterface * obj = (QAccessibleTableCellInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual int columnExtent() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLECELLINTERFACE_COLUMNEXTENT )
{
  QAccessibleTableCellInterface * obj = (QAccessibleTableCellInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->columnExtent () );
  }
}


/*
virtual QList<QAccessibleInterface*> columnHeaderCells() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLECELLINTERFACE_COLUMNHEADERCELLS )
{
  QAccessibleTableCellInterface * obj = (QAccessibleTableCellInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
  }
}


/*
virtual int columnIndex() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLECELLINTERFACE_COLUMNINDEX )
{
  QAccessibleTableCellInterface * obj = (QAccessibleTableCellInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->columnIndex () );
  }
}


/*
virtual int rowExtent() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLECELLINTERFACE_ROWEXTENT )
{
  QAccessibleTableCellInterface * obj = (QAccessibleTableCellInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->rowExtent () );
  }
}


/*
virtual QList<QAccessibleInterface*> rowHeaderCells() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLECELLINTERFACE_ROWHEADERCELLS )
{
  QAccessibleTableCellInterface * obj = (QAccessibleTableCellInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
  }
}


/*
virtual int rowIndex() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLECELLINTERFACE_ROWINDEX )
{
  QAccessibleTableCellInterface * obj = (QAccessibleTableCellInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->rowIndex () );
  }
}


/*
virtual bool isSelected() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLECELLINTERFACE_ISSELECTED )
{
  QAccessibleTableCellInterface * obj = (QAccessibleTableCellInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isSelected () );
  }
}



/*
virtual QAccessibleInterface* table() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETABLECELLINTERFACE_TABLE )
{
  QAccessibleTableCellInterface * obj = (QAccessibleTableCellInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->table ();
    _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}



HB_FUNC_STATIC( QACCESSIBLETABLECELLINTERFACE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QACCESSIBLETABLECELLINTERFACE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QACCESSIBLETABLECELLINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QACCESSIBLETABLECELLINTERFACE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QACCESSIBLETABLECELLINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QACCESSIBLETABLECELLINTERFACE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QACCESSIBLETABLECELLINTERFACE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
