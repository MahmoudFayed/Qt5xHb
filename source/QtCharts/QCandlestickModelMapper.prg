/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QCandlestickModelMapper INHERIT QObject

   METHOD model
   METHOD orientation
   METHOD series
   METHOD setModel
   METHOD setSeries

   METHOD onModelReplaced
   METHOD onSeriesReplaced

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCandlestickModelMapper
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QCandlestickModelMapper>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QCandlestickModelMapper>
#endif
#endif

#include <QAbstractItemModel>
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QCandlestickSeries>
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
using namespace QtCharts;
#endif

/*
explicit QCandlestickModelMapper(QObject *parent = nullptr) (abstract)
*/

/*
QAbstractItemModel *model() const
*/
HB_FUNC_STATIC( QCANDLESTICKMODELMAPPER_MODEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickModelMapper * obj = (QCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAbstractItemModel * ptr = obj->model ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QABSTRACTITEMMODEL" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setModel(QAbstractItemModel *model)
*/
HB_FUNC_STATIC( QCANDLESTICKMODELMAPPER_SETMODEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickModelMapper * obj = (QCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1) )
    {
      obj->setModel ( PQABSTRACTITEMMODEL(1) );
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
QCandlestickSeries *series() const
*/
HB_FUNC_STATIC( QCANDLESTICKMODELMAPPER_SERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickModelMapper * obj = (QCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QCandlestickSeries * ptr = obj->series ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QCANDLESTICKSERIES" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setSeries(QCandlestickSeries *series)
*/
HB_FUNC_STATIC( QCANDLESTICKMODELMAPPER_SETSERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickModelMapper * obj = (QCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQCANDLESTICKSERIES(1) )
    {
      obj->setSeries ( PQCANDLESTICKSERIES(1) );
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
virtual Qt::Orientation orientation() const = 0
*/
HB_FUNC_STATIC( QCANDLESTICKMODELMAPPER_ORIENTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickModelMapper * obj = (QCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->orientation () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setTimestamp(int timestamp) (protected)
*/

/*
int timestamp() const (protected)
*/

/*
void setOpen(int open) (protected)
*/

/*
int open() const (protected)
*/

/*
void setHigh(int high) (protected)
*/

/*
int high() const (protected)
*/

/*
void setLow(int low) (protected)
*/

/*
int low() const (protected)
*/

/*
void setClose(int close) (protected)
*/

/*
int close() const (protected)
*/

/*
void setFirstSetSection(int firstSetSection) (protected)
*/

/*
int firstSetSection() const (protected)
*/

/*
void setLastSetSection(int lastSetSection) (protected)
*/

/*
int lastSetSection() const (protected)
*/

void QCandlestickModelMapperSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QCANDLESTICKMODELMAPPER_ONMODELREPLACED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickModelMapperSlots_connect_signal( "modelReplaced()", "modelReplaced()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QCANDLESTICKMODELMAPPER_ONSERIESREPLACED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCandlestickModelMapperSlots_connect_signal( "seriesReplaced()", "seriesReplaced()" );
#else
  hb_retl( false );
#endif
}


#pragma ENDDUMP
