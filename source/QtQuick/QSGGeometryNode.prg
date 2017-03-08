/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSGMATERIAL
#endif

CLASS QSGGeometryNode INHERIT QSGBasicGeometryNode

   DATA class_id INIT Class_Id_QSGGeometryNode
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD material
   METHOD opaqueMaterial
   METHOD setMaterial
   METHOD setOpaqueMaterial
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSGGeometryNode
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSGGeometryNode>
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSGGeometryNode>
#endif

/*
QSGGeometryNode()
*/
HB_FUNC_STATIC( QSGGEOMETRYNODE_NEW )
{
  QSGGeometryNode * o = new QSGGeometryNode (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSGGeometryNode *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QSGGEOMETRYNODE_DELETE )
{
  QSGGeometryNode * obj = (QSGGeometryNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QSGMaterial * material() const
*/
HB_FUNC_STATIC( QSGGEOMETRYNODE_MATERIAL )
{
  QSGGeometryNode * obj = (QSGGeometryNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGMaterial * ptr = obj->material (  );
    _qt5xhb_createReturnClass ( ptr, "QSGMATERIAL" );
  }
}


/*
QSGMaterial * opaqueMaterial() const
*/
HB_FUNC_STATIC( QSGGEOMETRYNODE_OPAQUEMATERIAL )
{
  QSGGeometryNode * obj = (QSGGeometryNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGMaterial * ptr = obj->opaqueMaterial (  );
    _qt5xhb_createReturnClass ( ptr, "QSGMATERIAL" );
  }
}


/*
void setMaterial(QSGMaterial * material)
*/
HB_FUNC_STATIC( QSGGEOMETRYNODE_SETMATERIAL )
{
  QSGGeometryNode * obj = (QSGGeometryNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGMaterial * par1 = (QSGMaterial *) _qt5xhb_itemGetPtr(1);
    obj->setMaterial ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOpaqueMaterial(QSGMaterial * material)
*/
HB_FUNC_STATIC( QSGGEOMETRYNODE_SETOPAQUEMATERIAL )
{
  QSGGeometryNode * obj = (QSGGeometryNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGMaterial * par1 = (QSGMaterial *) _qt5xhb_itemGetPtr(1);
    obj->setOpaqueMaterial ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
