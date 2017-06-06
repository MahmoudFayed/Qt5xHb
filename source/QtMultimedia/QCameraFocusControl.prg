/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QCAMERAFOCUSZONELIST
#endif

CLASS QCameraFocusControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD customFocusPoint
   METHOD focusMode
   METHOD focusPointMode
   METHOD focusZones
   METHOD isFocusModeSupported
   METHOD isFocusPointModeSupported
   METHOD setCustomFocusPoint
   METHOD setFocusMode
   METHOD setFocusPointMode

   METHOD onCustomFocusPointChanged
   METHOD onFocusModeChanged
   METHOD onFocusPointModeChanged
   METHOD onFocusZonesChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCameraFocusControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCameraFocusControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QCameraFocusControl>
#endif

HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_DELETE )
{
  QCameraFocusControl * obj = (QCameraFocusControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QPointF customFocusPoint() const = 0
*/
HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_CUSTOMFOCUSPOINT )
{
  QCameraFocusControl * obj = (QCameraFocusControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->customFocusPoint () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
virtual QCameraFocus::FocusModes focusMode() const = 0
*/
HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_FOCUSMODE )
{
  QCameraFocusControl * obj = (QCameraFocusControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->focusMode () );
  }
}


/*
virtual QCameraFocus::FocusPointMode focusPointMode() const = 0
*/
HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_FOCUSPOINTMODE )
{
  QCameraFocusControl * obj = (QCameraFocusControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->focusPointMode () );
  }
}


/*
virtual QCameraFocusZoneList focusZones() const = 0
*/
HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_FOCUSZONES )
{
  QCameraFocusControl * obj = (QCameraFocusControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QCameraFocusZoneList * ptr = new QCameraFocusZoneList( obj->focusZones () );
    _qt5xhb_createReturnClass ( ptr, "QCAMERAFOCUSZONELIST" );
  }
}


/*
virtual bool isFocusModeSupported(QCameraFocus::FocusModes mode) const = 0
*/
HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_ISFOCUSMODESUPPORTED )
{
  QCameraFocusControl * obj = (QCameraFocusControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isFocusModeSupported ( (QCameraFocus::FocusModes) par1 ) );
  }
}


/*
virtual bool isFocusPointModeSupported(QCameraFocus::FocusPointMode mode) const = 0
*/
HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_ISFOCUSPOINTMODESUPPORTED )
{
  QCameraFocusControl * obj = (QCameraFocusControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isFocusPointModeSupported ( (QCameraFocus::FocusPointMode) par1 ) );
  }
}


/*
virtual void setCustomFocusPoint(const QPointF & point) = 0
*/
HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_SETCUSTOMFOCUSPOINT )
{
  QCameraFocusControl * obj = (QCameraFocusControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCustomFocusPoint ( *PQPOINTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setFocusMode(QCameraFocus::FocusModes mode) = 0
*/
HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_SETFOCUSMODE )
{
  QCameraFocusControl * obj = (QCameraFocusControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFocusMode ( (QCameraFocus::FocusModes) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setFocusPointMode(QCameraFocus::FocusPointMode mode) = 0
*/
HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_SETFOCUSPOINTMODE )
{
  QCameraFocusControl * obj = (QCameraFocusControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFocusPointMode ( (QCameraFocus::FocusPointMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
