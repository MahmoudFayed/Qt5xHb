/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QLegendMarker INHERIT QObject

   METHOD delete

   METHOD brush
   METHOD font
   METHOD isVisible
   METHOD label
   METHOD labelBrush
   METHOD pen
   METHOD series
   METHOD setBrush
   METHOD setFont
   METHOD setLabel
   METHOD setLabelBrush
   METHOD setPen
   METHOD setShape
   METHOD setVisible
   METHOD shape
   METHOD type

   METHOD onBrushChanged
   METHOD onClicked
   METHOD onFontChanged
   METHOD onHovered
   METHOD onLabelBrushChanged
   METHOD onLabelChanged
   METHOD onPenChanged
   METHOD onShapeChanged
   METHOD onVisibleChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLegendMarker
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QLegendMarker>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QLegendMarker>
#endif
#endif

#include <QAbstractSeries>

using namespace QtCharts;

/*
explicit QLegendMarker(QLegendMarkerPrivate &d, QObject *parent = Q_NULLPTR) (protected)
*/

/*
virtual ~QLegendMarker()
*/
HB_FUNC_STATIC( QLEGENDMARKER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarker * obj = (QLegendMarker *) _qt5xhb_itemGetPtrStackSelfItem();

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
QString label() const
*/
HB_FUNC_STATIC( QLEGENDMARKER_LABEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarker * obj = (QLegendMarker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->label () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setLabel(const QString &label)
*/
HB_FUNC_STATIC( QLEGENDMARKER_SETLABEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarker * obj = (QLegendMarker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setLabel ( PQSTRING(1) );
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
QBrush labelBrush() const
*/
HB_FUNC_STATIC( QLEGENDMARKER_LABELBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarker * obj = (QLegendMarker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QBrush * ptr = new QBrush( obj->labelBrush () );
      _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setLabelBrush(const QBrush &brush)
*/
HB_FUNC_STATIC( QLEGENDMARKER_SETLABELBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarker * obj = (QLegendMarker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
      obj->setLabelBrush ( *PQBRUSH(1) );
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
QFont font() const
*/
HB_FUNC_STATIC( QLEGENDMARKER_FONT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarker * obj = (QLegendMarker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QFont * ptr = new QFont( obj->font () );
      _qt5xhb_createReturnClass ( ptr, "QFONT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setFont(const QFont &font)
*/
HB_FUNC_STATIC( QLEGENDMARKER_SETFONT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarker * obj = (QLegendMarker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQFONT(1) )
    {
      obj->setFont ( *PQFONT(1) );
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
QPen pen() const
*/
HB_FUNC_STATIC( QLEGENDMARKER_PEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarker * obj = (QLegendMarker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPen * ptr = new QPen( obj->pen () );
      _qt5xhb_createReturnClass ( ptr, "QPEN", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setPen(const QPen &pen)
*/
HB_FUNC_STATIC( QLEGENDMARKER_SETPEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarker * obj = (QLegendMarker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPEN(1) )
    {
      obj->setPen ( *PQPEN(1) );
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
QBrush brush() const
*/
HB_FUNC_STATIC( QLEGENDMARKER_BRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarker * obj = (QLegendMarker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QBrush * ptr = new QBrush( obj->brush () );
      _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setBrush(const QBrush &brush)
*/
HB_FUNC_STATIC( QLEGENDMARKER_SETBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarker * obj = (QLegendMarker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
      obj->setBrush ( *PQBRUSH(1) );
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
bool isVisible() const
*/
HB_FUNC_STATIC( QLEGENDMARKER_ISVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarker * obj = (QLegendMarker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isVisible () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setVisible(bool visible)
*/
HB_FUNC_STATIC( QLEGENDMARKER_SETVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarker * obj = (QLegendMarker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setVisible ( PBOOL(1) );
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
QLegend::MarkerShape shape() const
*/
HB_FUNC_STATIC( QLEGENDMARKER_SHAPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QLegendMarker * obj = (QLegendMarker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->shape () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setShape(QLegend::MarkerShape shape)
*/
HB_FUNC_STATIC( QLEGENDMARKER_SETSHAPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QLegendMarker * obj = (QLegendMarker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setShape ( (QLegend::MarkerShape) hb_parni(1) );
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
virtual LegendMarkerType type() = 0
*/
HB_FUNC_STATIC( QLEGENDMARKER_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarker * obj = (QLegendMarker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->type () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
virtual QAbstractSeries* series() = 0
*/
HB_FUNC_STATIC( QLEGENDMARKER_SERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarker * obj = (QLegendMarker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAbstractSeries * ptr = obj->series ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QABSTRACTSERIES" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

void QLegendMarkerSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QLEGENDMARKER_ONBRUSHCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarkerSlots_connect_signal( "brushChanged()", "brushChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QLEGENDMARKER_ONCLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarkerSlots_connect_signal( "clicked()", "clicked()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QLEGENDMARKER_ONFONTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarkerSlots_connect_signal( "fontChanged()", "fontChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QLEGENDMARKER_ONHOVERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarkerSlots_connect_signal( "hovered(bool)", "hovered(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QLEGENDMARKER_ONLABELBRUSHCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarkerSlots_connect_signal( "labelBrushChanged()", "labelBrushChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QLEGENDMARKER_ONLABELCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarkerSlots_connect_signal( "labelChanged()", "labelChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QLEGENDMARKER_ONPENCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarkerSlots_connect_signal( "penChanged()", "penChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QLEGENDMARKER_ONSHAPECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QLegendMarkerSlots_connect_signal( "shapeChanged()", "shapeChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QLEGENDMARKER_ONVISIBLECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarkerSlots_connect_signal( "visibleChanged()", "visibleChanged()" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
