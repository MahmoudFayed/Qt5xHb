/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QSensorReading INHERIT QObject

   METHOD delete
   METHOD timestamp
   METHOD setTimestamp
   METHOD valueCount
   METHOD value

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSensorReading
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSensorReading>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSensorReading>
#endif
#endif


HB_FUNC_STATIC( QSENSORREADING_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorReading * obj = (QSensorReading *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
quint64 timestamp() const
*/
HB_FUNC_STATIC( QSENSORREADING_TIMESTAMP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorReading * obj = (QSensorReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQUINT64( obj->timestamp () );
  }
#endif
}


/*
void setTimestamp(quint64 timestamp)
*/
HB_FUNC_STATIC( QSENSORREADING_SETTIMESTAMP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorReading * obj = (QSensorReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTimestamp ( PQUINT64(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int valueCount() const
*/
HB_FUNC_STATIC( QSENSORREADING_VALUECOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorReading * obj = (QSensorReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->valueCount () );
  }
#endif
}


/*
QVariant value(int index) const
*/
HB_FUNC_STATIC( QSENSORREADING_VALUE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorReading * obj = (QSensorReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->value ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
#endif
}



#pragma ENDDUMP
