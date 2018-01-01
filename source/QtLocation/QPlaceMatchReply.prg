/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACE
REQUEST QPLACEMATCHREQUEST
#endif

CLASS QPlaceMatchReply INHERIT QPlaceReply

   METHOD new
   METHOD delete
   METHOD type
   METHOD places
   METHOD request

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPlaceMatchReply
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceMatchReply>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceMatchReply>
#endif
#endif

/*
explicit QPlaceMatchReply(QObject *parent = 0)
*/
HB_FUNC_STATIC( QPLACEMATCHREPLY_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceMatchReply * o = new QPlaceMatchReply ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QPLACEMATCHREPLY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceMatchReply * obj = (QPlaceMatchReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QPlaceReply::Type type() const
*/
HB_FUNC_STATIC( QPLACEMATCHREPLY_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceMatchReply * obj = (QPlaceMatchReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
#endif
}


/*
QList<QPlace> places() const
*/
HB_FUNC_STATIC( QPLACEMATCHREPLY_PLACES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceMatchReply * obj = (QPlaceMatchReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QPlace> list = obj->places ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QPLACE" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QPlace *) new QPlace ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
#endif
}


/*
QPlaceMatchRequest request() const
*/
HB_FUNC_STATIC( QPLACEMATCHREPLY_REQUEST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceMatchReply * obj = (QPlaceMatchReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceMatchRequest * ptr = new QPlaceMatchRequest( obj->request () );
    _qt5xhb_createReturnClass ( ptr, "QPLACEMATCHREQUEST", true );
  }
#endif
}



#pragma ENDDUMP
