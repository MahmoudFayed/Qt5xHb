/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIMAGEENCODERSETTINGS
REQUEST QMEDIAOBJECT
REQUEST QSIZE
#endif

CLASS QCameraImageCapture INHERIT QObject,QMediaBindableInterface

   METHOD new
   METHOD delete

   METHOD availability
   METHOD bufferFormat
   METHOD captureDestination
   METHOD encodingSettings
   METHOD error
   METHOD errorString
   METHOD imageCodecDescription
   METHOD isAvailable
   METHOD isCaptureDestinationSupported
   METHOD isReadyForCapture
   METHOD mediaObject
   METHOD setBufferFormat
   METHOD setCaptureDestination
   METHOD setEncodingSettings
   METHOD supportedBufferFormats
   METHOD supportedImageCodecs
   METHOD supportedResolutions
   METHOD cancelCapture
   METHOD capture

   METHOD onBufferFormatChanged
   METHOD onCaptureDestinationChanged
   METHOD onError
   METHOD onImageAvailable
   METHOD onImageCaptured
   METHOD onImageExposed
   METHOD onImageMetadataAvailable
   METHOD onImageSaved
   METHOD onReadyForCaptureChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCameraImageCapture
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCameraImageCapture>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QCameraImageCapture>
#endif

/*
explicit QCameraImageCapture(QMediaObject * mediaObject, QObject * parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_NEW )
{
  if( ISBETWEEN(1,2) && ISQMEDIAOBJECT(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QCameraImageCapture * o = new QCameraImageCapture ( PQMEDIAOBJECT(1), OPQOBJECT(2,0) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QCameraImageCapture()
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_DELETE )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();

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
bool isReadyForCapture() const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ISREADYFORCAPTURE )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isReadyForCapture () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QMultimedia::AvailabilityStatus availability() const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_AVAILABILITY )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->availability () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QVideoFrame::PixelFormat bufferFormat() const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_BUFFERFORMAT )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->bufferFormat () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
CaptureDestinations captureDestination() const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_CAPTUREDESTINATION )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->captureDestination () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QImageEncoderSettings encodingSettings() const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ENCODINGSETTINGS )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QImageEncoderSettings * ptr = new QImageEncoderSettings( obj->encodingSettings () );
      _qt5xhb_createReturnClass ( ptr, "QIMAGEENCODERSETTINGS", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Error error() const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ERROR )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();

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
QString errorString() const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ERRORSTRING )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->errorString () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString imageCodecDescription(const QString & codecName) const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_IMAGECODECDESCRIPTION )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RQSTRING( obj->imageCodecDescription ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isAvailable() const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ISAVAILABLE )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isAvailable () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isCaptureDestinationSupported(CaptureDestinations destination) const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ISCAPTUREDESTINATIONSUPPORTED )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RBOOL( obj->isCaptureDestinationSupported ( (QCameraImageCapture::CaptureDestinations) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QMediaObject *mediaObject() const override
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_MEDIAOBJECT )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QMediaObject * ptr = obj->mediaObject ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QMEDIAOBJECT" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setBufferFormat(const QVideoFrame::PixelFormat format)
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_SETBUFFERFORMAT )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setBufferFormat ( (QVideoFrame::PixelFormat) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCaptureDestination(CaptureDestinations destination)
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_SETCAPTUREDESTINATION )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setCaptureDestination ( (QCameraImageCapture::CaptureDestinations) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setEncodingSettings(const QImageEncoderSettings & settings)
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_SETENCODINGSETTINGS )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQIMAGEENCODERSETTINGS(1) )
    {
      obj->setEncodingSettings ( *PQIMAGEENCODERSETTINGS(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QList<QVideoFrame::PixelFormat> supportedBufferFormats() const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_SUPPORTEDBUFFERFORMATS )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<QVideoFrame::PixelFormat> list = obj->supportedBufferFormats ();
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
        hb_arrayAddForward( pArray, pItem );
        hb_itemRelease(pItem);
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringList supportedImageCodecs() const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_SUPPORTEDIMAGECODECS )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->supportedImageCodecs () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QList<QSize> supportedResolutions(const QImageEncoderSettings & settings = QImageEncoderSettings(), bool * continuous = Q_NULLPTR) const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_SUPPORTEDRESOLUTIONS )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,2) && (ISQIMAGEENCODERSETTINGS(1)||ISNIL(1)) && ISOPTLOG(2) )
    {
      bool par2;
      QList<QSize> list = obj->supportedResolutions ( ISNIL(1)? QImageEncoderSettings() : *(QImageEncoderSettings *) _qt5xhb_itemGetPtr(1), &par2 );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QSIZE" );
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
          hb_itemPutPtr( pItem, (QSize *) new QSize ( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QSIZE", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
      hb_storl( par2, 2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void cancelCapture()
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_CANCELCAPTURE )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->cancelCapture ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int capture(const QString & location = QString())
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_CAPTURE )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTCHAR(1) )
    {
      RINT( obj->capture ( OPQSTRING(1,QString()) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool setMediaObject(QMediaObject *) override (protected)
*/

void QCameraImageCaptureSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ONBUFFERFORMATCHANGED )
{
  QCameraImageCaptureSlots_connect_signal( "bufferFormatChanged(QVideoFrame::PixelFormat)", "bufferFormatChanged(QVideoFrame::PixelFormat)" );
}

HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ONCAPTUREDESTINATIONCHANGED )
{
  QCameraImageCaptureSlots_connect_signal( "captureDestinationChanged(QCameraImageCapture::CaptureDestinations)", "captureDestinationChanged(QCameraImageCapture::CaptureDestinations)" );
}

HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ONERROR )
{
  QCameraImageCaptureSlots_connect_signal( "error(int,QCameraImageCapture::Error,QString)", "error(int,QCameraImageCapture::Error,QString)" );
}

HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ONIMAGEAVAILABLE )
{
  QCameraImageCaptureSlots_connect_signal( "imageAvailable(int,QVideoFrame)", "imageAvailable(int,QVideoFrame)" );
}

HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ONIMAGECAPTURED )
{
  QCameraImageCaptureSlots_connect_signal( "imageCaptured(int,QImage)", "imageCaptured(int,QImage)" );
}

HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ONIMAGEEXPOSED )
{
  QCameraImageCaptureSlots_connect_signal( "imageExposed(int)", "imageExposed(int)" );
}

HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ONIMAGEMETADATAAVAILABLE )
{
  QCameraImageCaptureSlots_connect_signal( "imageMetadataAvailable(int,QString,QVariant)", "imageMetadataAvailable(int,QString,QVariant)" );
}

HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ONIMAGESAVED )
{
  QCameraImageCaptureSlots_connect_signal( "imageSaved(int,QString)", "imageSaved(int,QString)" );
}

HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ONREADYFORCAPTURECHANGED )
{
  QCameraImageCaptureSlots_connect_signal( "readyForCaptureChanged(bool)", "readyForCaptureChanged(bool)" );
}

#pragma ENDDUMP
