/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QProximityReading INHERIT QSensorReading

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD close
   METHOD setClose

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QProximityReading
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QProximityReading>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QProximityReading>
#endif
#endif


HB_FUNC_STATIC( QPROXIMITYREADING_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QProximityReading * obj = (QProximityReading *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool close() const
*/
HB_FUNC_STATIC( QPROXIMITYREADING_CLOSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QProximityReading * obj = (QProximityReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->close () );
  }
#endif
}


/*
void setClose(bool close)
*/
HB_FUNC_STATIC( QPROXIMITYREADING_SETCLOSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QProximityReading * obj = (QProximityReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setClose ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
