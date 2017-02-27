/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QROTATIONREADING
#endif

CLASS QRotationSensor INHERIT QSensor

   DATA class_id INIT Class_Id_QRotationSensor
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD reading
   METHOD hasZ
   METHOD setHasZ
   METHOD onHasZChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QRotationSensor
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QRotationSensor>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QRotationSensor>
#endif
#endif

/*
QRotationSensor(QObject *parent = 0)
*/
HB_FUNC_STATIC( QROTATIONSENSOR_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QRotationSensor * o = new QRotationSensor ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRotationSensor *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QROTATIONSENSOR_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationSensor * obj = (QRotationSensor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QRotationReading *reading() const
*/
HB_FUNC_STATIC( QROTATIONSENSOR_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationSensor * obj = (QRotationSensor *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRotationReading * ptr = obj->reading (  );
    _qt5xhb_createReturnClass ( ptr, "QROTATIONREADING" );
  }
#endif
}


/*
bool hasZ() const
*/
HB_FUNC_STATIC( QROTATIONSENSOR_HASZ )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationSensor * obj = (QRotationSensor *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasZ (  ) );
  }
#endif
}


/*
void setHasZ(bool hasZ)
*/
HB_FUNC_STATIC( QROTATIONSENSOR_SETHASZ )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationSensor * obj = (QRotationSensor *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHasZ ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP
