/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QLIGHTREADING
#endif

CLASS QLightSensor INHERIT QSensor

   DATA class_id INIT Class_Id_QLightSensor
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD reading
   METHOD fieldOfView
   METHOD setFieldOfView
   METHOD onFieldOfViewChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLightSensor
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QLightSensor>
#endif
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

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QLightSensor>
#endif
#endif

/*
QLightSensor(QObject *parent = 0)
*/
HB_FUNC_STATIC( QLIGHTSENSOR_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QLightSensor * o = new QLightSensor ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QLightSensor *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QLIGHTSENSOR_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QLightSensor * obj = (QLightSensor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
QLightReading *reading() const
*/
HB_FUNC_STATIC( QLIGHTSENSOR_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QLightSensor * obj = (QLightSensor *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLightReading * ptr = obj->reading (  );
    _qt4xhb_createReturnClass ( ptr, "QLIGHTREADING" );
  }
#endif
}


/*
qreal fieldOfView() const
*/
HB_FUNC_STATIC( QLIGHTSENSOR_FIELDOFVIEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QLightSensor * obj = (QLightSensor *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->fieldOfView (  ) );
  }
#endif
}


/*
void setFieldOfView(qreal fieldOfView)
*/
HB_FUNC_STATIC( QLIGHTSENSOR_SETFIELDOFVIEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QLightSensor * obj = (QLightSensor *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setFieldOfView ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP
