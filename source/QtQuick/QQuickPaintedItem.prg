/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QSIZE
REQUEST QCOLOR
#endif

CLASS QQuickPaintedItem INHERIT QQuickItem

   METHOD delete
   METHOD antialiasing
   METHOD contentsBoundingRect
   METHOD contentsScale
   METHOD contentsSize
   METHOD fillColor
   METHOD mipmap
   METHOD opaquePainting
   METHOD paint
   METHOD performanceHints
   METHOD renderTarget
   METHOD resetContentsSize
   METHOD setAntialiasing
   METHOD setContentsScale
   METHOD setContentsSize
   METHOD setFillColor
   METHOD setMipmap
   METHOD setOpaquePainting
   METHOD setPerformanceHint
   METHOD setPerformanceHints
   METHOD setRenderTarget
   METHOD update

   METHOD onContentsScaleChanged
   METHOD onContentsSizeChanged
   METHOD onFillColorChanged
   METHOD onRenderTargetChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQuickPaintedItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QQuickPaintedItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QQuickPaintedItem>
#endif

HB_FUNC_STATIC( QQUICKPAINTEDITEM_DELETE )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
bool antialiasing() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_ANTIALIASING )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->antialiasing () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QRectF contentsBoundingRect() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_CONTENTSBOUNDINGRECT )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRectF * ptr = new QRectF( obj->contentsBoundingRect () );
      _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal contentsScale() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_CONTENTSSCALE )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->contentsScale () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSize contentsSize() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_CONTENTSSIZE )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->contentsSize () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QColor fillColor() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_FILLCOLOR )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QColor * ptr = new QColor( obj->fillColor () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool mipmap() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_MIPMAP )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->mipmap () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool opaquePainting() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_OPAQUEPAINTING )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->opaquePainting () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void paint(QPainter * painter) = 0
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_PAINT )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPAINTER(1) )
    {
      obj->paint ( PQPAINTER(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
PerformanceHints performanceHints() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_PERFORMANCEHINTS )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->performanceHints () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
RenderTarget renderTarget() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_RENDERTARGET )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->renderTarget () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void resetContentsSize()
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_RESETCONTENTSSIZE )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->resetContentsSize ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAntialiasing(bool enable)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETANTIALIASING )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setAntialiasing ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setContentsScale(qreal)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETCONTENTSSCALE )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setContentsScale ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setContentsSize(const QSize &)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETCONTENTSSIZE )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
      obj->setContentsSize ( *PQSIZE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFillColor(const QColor &)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETFILLCOLOR )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
      obj->setFillColor ( ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1)) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMipmap(bool enable)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETMIPMAP )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setMipmap ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOpaquePainting(bool opaque)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETOPAQUEPAINTING )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setOpaquePainting ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPerformanceHint(PerformanceHint hint, bool enabled = true)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETPERFORMANCEHINT )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTLOG(2) )
    {
      obj->setPerformanceHint ( (QQuickPaintedItem::PerformanceHint) hb_parni(1), OPBOOL(2,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPerformanceHints(PerformanceHints hints)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETPERFORMANCEHINTS )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setPerformanceHints ( (QQuickPaintedItem::PerformanceHints) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRenderTarget(RenderTarget target)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETRENDERTARGET )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setRenderTarget ( (QQuickPaintedItem::RenderTarget) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void update(const QRect & rect = QRect())
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_UPDATE )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && (ISQRECT(1)||ISNIL(1)) )
    {
      obj->update ( ISNIL(1)? QRect() : *(QRect *) _qt5xhb_itemGetPtr(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QQuickPaintedItemSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QQUICKPAINTEDITEM_ONCONTENTSSCALECHANGED )
{
  QQuickPaintedItemSlots_connect_signal( "contentsScaleChanged()", "contentsScaleChanged()" );
}

HB_FUNC_STATIC( QQUICKPAINTEDITEM_ONCONTENTSSIZECHANGED )
{
  QQuickPaintedItemSlots_connect_signal( "contentsSizeChanged()", "contentsSizeChanged()" );
}

HB_FUNC_STATIC( QQUICKPAINTEDITEM_ONFILLCOLORCHANGED )
{
  QQuickPaintedItemSlots_connect_signal( "fillColorChanged()", "fillColorChanged()" );
}

HB_FUNC_STATIC( QQUICKPAINTEDITEM_ONRENDERTARGETCHANGED )
{
  QQuickPaintedItemSlots_connect_signal( "renderTargetChanged()", "renderTargetChanged()" );
}


#pragma ENDDUMP
