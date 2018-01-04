/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCREEN
#endif

CLASS QScreenOrientationChangeEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD screen
   METHOD orientation

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScreenOrientationChangeEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QScreenOrientationChangeEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QScreenOrientationChangeEvent>
#endif

/*
QScreenOrientationChangeEvent(QScreen *screen, Qt::ScreenOrientation orientation)
*/
HB_FUNC_STATIC( QSCREENORIENTATIONCHANGEEVENT_NEW )
{
  QScreenOrientationChangeEvent * o = new QScreenOrientationChangeEvent ( PQSCREEN(1), (Qt::ScreenOrientation) hb_parni(2) );
  _qt5xhb_returnNewObject( o, false );
}


HB_FUNC_STATIC( QSCREENORIENTATIONCHANGEEVENT_DELETE )
{
  QScreenOrientationChangeEvent * obj = (QScreenOrientationChangeEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QScreen *screen() const
*/
HB_FUNC_STATIC( QSCREENORIENTATIONCHANGEEVENT_SCREEN )
{
  QScreenOrientationChangeEvent * obj = (QScreenOrientationChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScreen * ptr = obj->screen ();
    _qt5xhb_createReturnClass ( ptr, "QSCREEN" );
  }
}


/*
Qt::ScreenOrientation orientation() const
*/
HB_FUNC_STATIC( QSCREENORIENTATIONCHANGEEVENT_ORIENTATION )
{
  QScreenOrientationChangeEvent * obj = (QScreenOrientationChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->orientation () );
  }
}



#pragma ENDDUMP
