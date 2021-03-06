/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOROUTEREPLY
REQUEST QLOCALE
#endif

CLASS QGeoRoutingManagerEngine INHERIT QObject

   METHOD delete
   METHOD managerName
   METHOD managerVersion
   METHOD calculateRoute
   METHOD updateRoute
   METHOD supportedTravelModes
   METHOD supportedFeatureTypes
   METHOD supportedFeatureWeights
   METHOD supportedRouteOptimizations
   METHOD supportedSegmentDetails
   METHOD supportedManeuverDetails
   METHOD setLocale
   METHOD locale
   METHOD setMeasurementSystem
   METHOD measurementSystem

   METHOD onFinished
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGeoRoutingManagerEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QGeoRoutingManagerEngine>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QGeoRoutingManagerEngine>
#endif
#endif

HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngine * obj = (QGeoRoutingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

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
QString managerName() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_MANAGERNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngine * obj = (QGeoRoutingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->managerName () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
int managerVersion() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_MANAGERVERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngine * obj = (QGeoRoutingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->managerVersion () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
virtual QGeoRouteReply *calculateRoute(const QGeoRouteRequest &request) = 0
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_CALCULATEROUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngine * obj = (QGeoRoutingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQGEOROUTEREQUEST(1) )
    {
      QGeoRouteReply * ptr = obj->calculateRoute ( *PQGEOROUTEREQUEST(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QGEOROUTEREPLY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
virtual QGeoRouteReply *updateRoute(const QGeoRoute &route, const QGeoCoordinate &position)
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_UPDATEROUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngine * obj = (QGeoRoutingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISQGEOROUTE(1) && ISQGEOCOORDINATE(2) )
    {
      QGeoRouteReply * ptr = obj->updateRoute ( *PQGEOROUTE(1), *PQGEOCOORDINATE(2) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QGEOROUTEREPLY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QGeoRouteRequest::TravelModes supportedTravelModes() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_SUPPORTEDTRAVELMODES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngine * obj = (QGeoRoutingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->supportedTravelModes () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QGeoRouteRequest::FeatureTypes supportedFeatureTypes() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_SUPPORTEDFEATURETYPES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngine * obj = (QGeoRoutingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->supportedFeatureTypes () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QGeoRouteRequest::FeatureWeights supportedFeatureWeights() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_SUPPORTEDFEATUREWEIGHTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngine * obj = (QGeoRoutingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->supportedFeatureWeights () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QGeoRouteRequest::RouteOptimizations supportedRouteOptimizations() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_SUPPORTEDROUTEOPTIMIZATIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngine * obj = (QGeoRoutingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->supportedRouteOptimizations () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QGeoRouteRequest::SegmentDetails supportedSegmentDetails() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_SUPPORTEDSEGMENTDETAILS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngine * obj = (QGeoRoutingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->supportedSegmentDetails () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QGeoRouteRequest::ManeuverDetails supportedManeuverDetails() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_SUPPORTEDMANEUVERDETAILS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngine * obj = (QGeoRoutingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->supportedManeuverDetails () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setLocale(const QLocale &locale)
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_SETLOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngine * obj = (QGeoRoutingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQLOCALE(1) )
    {
      obj->setLocale ( *PQLOCALE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QLocale locale() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_LOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngine * obj = (QGeoRoutingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QLocale * ptr = new QLocale( obj->locale () );
      _qt5xhb_createReturnClass ( ptr, "QLOCALE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setMeasurementSystem(QLocale::MeasurementSystem system)
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_SETMEASUREMENTSYSTEM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngine * obj = (QGeoRoutingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setMeasurementSystem ( (QLocale::MeasurementSystem) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QLocale::MeasurementSystem measurementSystem() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_MEASUREMENTSYSTEM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngine * obj = (QGeoRoutingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->measurementSystem () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

void QGeoRoutingManagerEngineSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_ONFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngineSlots_connect_signal( "finished(QGeoRouteReply*)", "finished(QGeoRouteReply*)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_ONERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngineSlots_connect_signal( "error(QGeoRouteReply*,QGeoRouteReply::Error,QString)", "error(QGeoRouteReply*,QGeoRouteReply::Error,QString)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
