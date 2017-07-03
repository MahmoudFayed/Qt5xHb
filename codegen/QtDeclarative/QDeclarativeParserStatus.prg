/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QDeclarativeParserStatus

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD classBegin
   METHOD componentComplete

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDeclarativeParserStatus
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDeclarativeParserStatus>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDeclarativeParserStatus>
#endif

/*
virtual void classBegin () = 0
*/
HB_FUNC_STATIC( QDECLARATIVEPARSERSTATUS_CLASSBEGIN )
{
  QDeclarativeParserStatus * obj = (QDeclarativeParserStatus *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->classBegin ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void componentComplete () = 0
*/
HB_FUNC_STATIC( QDECLARATIVEPARSERSTATUS_COMPONENTCOMPLETE )
{
  QDeclarativeParserStatus * obj = (QDeclarativeParserStatus *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->componentComplete ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QDECLARATIVEPARSERSTATUS_NEWFROM )
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

HB_FUNC_STATIC( QDECLARATIVEPARSERSTATUS_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDECLARATIVEPARSERSTATUS_NEWFROM );
}

HB_FUNC_STATIC( QDECLARATIVEPARSERSTATUS_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDECLARATIVEPARSERSTATUS_NEWFROM );
}

HB_FUNC_STATIC( QDECLARATIVEPARSERSTATUS_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDECLARATIVEPARSERSTATUS_SETSELFDESTRUCTION )
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