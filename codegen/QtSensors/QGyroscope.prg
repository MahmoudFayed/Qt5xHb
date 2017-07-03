/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGYROSCOPEREADING
#endif

CLASS QGyroscope INHERIT QSensor

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD reading

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGyroscope
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QGyroscope>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QGyroscope>
#endif
#endif

/*
QGyroscope(QObject *parent = 0)
*/
HB_FUNC_STATIC( QGYROSCOPE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QGyroscope * o = new QGyroscope ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QGYROSCOPE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QGyroscope * obj = (QGyroscope *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QGyroscopeReading *reading() const
*/
HB_FUNC_STATIC( QGYROSCOPE_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QGyroscope * obj = (QGyroscope *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGyroscopeReading * ptr = obj->reading ();
    _qt5xhb_createReturnClass ( ptr, "QGYROSCOPEREADING" );
  }
#endif
}



#pragma ENDDUMP
