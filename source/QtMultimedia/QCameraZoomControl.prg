/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QCameraZoomControl INHERIT QMediaControl

   METHOD delete

   METHOD currentDigitalZoom
   METHOD currentOpticalZoom
   METHOD maximumDigitalZoom
   METHOD maximumOpticalZoom
   METHOD requestedDigitalZoom
   METHOD requestedOpticalZoom
   METHOD zoomTo

   METHOD onCurrentDigitalZoomChanged
   METHOD onCurrentOpticalZoomChanged
   METHOD onMaximumDigitalZoomChanged
   METHOD onMaximumOpticalZoomChanged
   METHOD onRequestedDigitalZoomChanged
   METHOD onRequestedOpticalZoomChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCameraZoomControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCameraZoomControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QCameraZoomControl>
#endif

/*
explicit QCameraZoomControl(QObject *parent = Q_NULLPTR) (protected)
*/

/*
~QCameraZoomControl()
*/
HB_FUNC_STATIC( QCAMERAZOOMCONTROL_DELETE )
{
  QCameraZoomControl * obj = (QCameraZoomControl *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual qreal currentDigitalZoom() const = 0
*/
HB_FUNC_STATIC( QCAMERAZOOMCONTROL_CURRENTDIGITALZOOM )
{
  QCameraZoomControl * obj = (QCameraZoomControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->currentDigitalZoom () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual qreal currentOpticalZoom() const = 0
*/
HB_FUNC_STATIC( QCAMERAZOOMCONTROL_CURRENTOPTICALZOOM )
{
  QCameraZoomControl * obj = (QCameraZoomControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->currentOpticalZoom () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual qreal maximumDigitalZoom() const = 0
*/
HB_FUNC_STATIC( QCAMERAZOOMCONTROL_MAXIMUMDIGITALZOOM )
{
  QCameraZoomControl * obj = (QCameraZoomControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->maximumDigitalZoom () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual qreal maximumOpticalZoom() const = 0
*/
HB_FUNC_STATIC( QCAMERAZOOMCONTROL_MAXIMUMOPTICALZOOM )
{
  QCameraZoomControl * obj = (QCameraZoomControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->maximumOpticalZoom () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual qreal requestedDigitalZoom() const = 0
*/
HB_FUNC_STATIC( QCAMERAZOOMCONTROL_REQUESTEDDIGITALZOOM )
{
  QCameraZoomControl * obj = (QCameraZoomControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->requestedDigitalZoom () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual qreal requestedOpticalZoom() const = 0
*/
HB_FUNC_STATIC( QCAMERAZOOMCONTROL_REQUESTEDOPTICALZOOM )
{
  QCameraZoomControl * obj = (QCameraZoomControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->requestedOpticalZoom () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void zoomTo(qreal optical, qreal digital) = 0
*/
HB_FUNC_STATIC( QCAMERAZOOMCONTROL_ZOOMTO )
{
  QCameraZoomControl * obj = (QCameraZoomControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
      obj->zoomTo ( PQREAL(1), PQREAL(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QCameraZoomControlSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QCAMERAZOOMCONTROL_ONCURRENTDIGITALZOOMCHANGED )
{
  QCameraZoomControlSlots_connect_signal( "currentDigitalZoomChanged(qreal)", "currentDigitalZoomChanged(qreal)" );
}

HB_FUNC_STATIC( QCAMERAZOOMCONTROL_ONCURRENTOPTICALZOOMCHANGED )
{
  QCameraZoomControlSlots_connect_signal( "currentOpticalZoomChanged(qreal)", "currentOpticalZoomChanged(qreal)" );
}

HB_FUNC_STATIC( QCAMERAZOOMCONTROL_ONMAXIMUMDIGITALZOOMCHANGED )
{
  QCameraZoomControlSlots_connect_signal( "maximumDigitalZoomChanged(qreal)", "maximumDigitalZoomChanged(qreal)" );
}

HB_FUNC_STATIC( QCAMERAZOOMCONTROL_ONMAXIMUMOPTICALZOOMCHANGED )
{
  QCameraZoomControlSlots_connect_signal( "maximumOpticalZoomChanged(qreal)", "maximumOpticalZoomChanged(qreal)" );
}

HB_FUNC_STATIC( QCAMERAZOOMCONTROL_ONREQUESTEDDIGITALZOOMCHANGED )
{
  QCameraZoomControlSlots_connect_signal( "requestedDigitalZoomChanged(qreal)", "requestedDigitalZoomChanged(qreal)" );
}

HB_FUNC_STATIC( QCAMERAZOOMCONTROL_ONREQUESTEDOPTICALZOOMCHANGED )
{
  QCameraZoomControlSlots_connect_signal( "requestedOpticalZoomChanged(qreal)", "requestedOpticalZoomChanged(qreal)" );
}

#pragma ENDDUMP
