/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVIDEOSURFACEFORMAT
#endif

CLASS QAbstractVideoSurface INHERIT QObject

   METHOD delete

   METHOD error
   METHOD isActive
   METHOD isFormatSupported
   METHOD nativeResolution
   METHOD nearestFormat
   METHOD present
   METHOD start
   METHOD stop
   METHOD surfaceFormat

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractVideoSurface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAbstractVideoSurface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAbstractVideoSurface>
#endif

#include <QVideoSurfaceFormat>

/*
explicit QAbstractVideoSurface(QObject *parent = Q_NULLPTR)
*/

/*
~QAbstractVideoSurface()
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_DELETE )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) _qt5xhb_itemGetPtrStackSelfItem();

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
QSize nativeResolution() const
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_NATIVERESOLUTION )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->nativeResolution () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Error error () const
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_ERROR )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->error () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isActive () const
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_ISACTIVE )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isActive () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool isFormatSupported ( const QVideoSurfaceFormat & format ) const
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_ISFORMATSUPPORTED )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQVIDEOSURFACEFORMAT(1) )
    {
      RBOOL( obj->isFormatSupported ( *PQVIDEOSURFACEFORMAT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QVideoSurfaceFormat nearestFormat ( const QVideoSurfaceFormat & format ) const
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_NEARESTFORMAT )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQVIDEOSURFACEFORMAT(1) )
    {
      QVideoSurfaceFormat * ptr = new QVideoSurfaceFormat( obj->nearestFormat ( *PQVIDEOSURFACEFORMAT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QVIDEOSURFACEFORMAT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool present ( const QVideoFrame & frame ) = 0
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_PRESENT )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQVIDEOFRAME(1) )
    {
      RBOOL( obj->present ( *PQVIDEOFRAME(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool start ( const QVideoSurfaceFormat & format )
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_START )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQVIDEOSURFACEFORMAT(1) )
    {
      RBOOL( obj->start ( *PQVIDEOSURFACEFORMAT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void stop ()
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_STOP )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->stop ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QVideoSurfaceFormat surfaceFormat () const
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_SURFACEFORMAT )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QVideoSurfaceFormat * ptr = new QVideoSurfaceFormat( obj->surfaceFormat () );
      _qt5xhb_createReturnClass ( ptr, "QVIDEOSURFACEFORMAT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QList<QVideoFrame::PixelFormat> supportedPixelFormats( QAbstractVideoBuffer::HandleType handleType = QAbstractVideoBuffer::NoHandle) const = 0
*/

/*
void setError(Error error) (protected)
*/

/*
void setNativeResolution(const QSize &resolution) (protected)
*/

#pragma ENDDUMP

