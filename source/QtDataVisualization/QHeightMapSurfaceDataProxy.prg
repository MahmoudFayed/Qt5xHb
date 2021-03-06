/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QHeightMapSurfaceDataProxy INHERIT QSurfaceDataProxy

   METHOD new
   METHOD delete

   METHOD heightMap
   METHOD heightMapFile
   METHOD maxXValue
   METHOD maxZValue
   METHOD minXValue
   METHOD minZValue
   METHOD setHeightMap
   METHOD setHeightMapFile
   METHOD setMaxXValue
   METHOD setMaxZValue
   METHOD setMinXValue
   METHOD setMinZValue
   METHOD setValueRanges

   METHOD onHeightMapChanged
   METHOD onHeightMapFileChanged
   METHOD onMaxXValueChanged
   METHOD onMaxZValueChanged
   METHOD onMinXValueChanged
   METHOD onMinZValueChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHeightMapSurfaceDataProxy
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QHeightMapSurfaceDataProxy>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QHeightMapSurfaceDataProxy>
#endif

using namespace QtDataVisualization;

/*
explicit QHeightMapSurfaceDataProxy(QObject *parent = Q_NULLPTR)
*/
void QHeightMapSurfaceDataProxy_new1 ()
{
  QHeightMapSurfaceDataProxy * o = new QHeightMapSurfaceDataProxy ( OPQOBJECT(1,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
}

/*
explicit QHeightMapSurfaceDataProxy(const QImage &image, QObject *parent = Q_NULLPTR)
*/
void QHeightMapSurfaceDataProxy_new2 ()
{
  QHeightMapSurfaceDataProxy * o = new QHeightMapSurfaceDataProxy ( *PQIMAGE(1), OPQOBJECT(2,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
}

/*
explicit QHeightMapSurfaceDataProxy(const QString &filename, QObject *parent = Q_NULLPTR)
*/
void QHeightMapSurfaceDataProxy_new3 ()
{
  QHeightMapSurfaceDataProxy * o = new QHeightMapSurfaceDataProxy ( PQSTRING(1), OPQOBJECT(2,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
}

/*
explicit QHeightMapSurfaceDataProxy(QHeightMapSurfaceDataProxyPrivate *d, QObject *parent = Q_NULLPTR) (protected)
*/

//[1]explicit QHeightMapSurfaceDataProxy(QObject *parent = Q_NULLPTR)
//[2]explicit QHeightMapSurfaceDataProxy(const QImage &image, QObject *parent = Q_NULLPTR)
//[3]explicit QHeightMapSurfaceDataProxy(const QString &filename, QObject *parent = Q_NULLPTR)

HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QHeightMapSurfaceDataProxy_new1();
  }
  else if( ISBETWEEN(1,2) && ISQIMAGE(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QHeightMapSurfaceDataProxy_new2();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QHeightMapSurfaceDataProxy_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~QHeightMapSurfaceDataProxy()
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_DELETE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

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
QImage heightMap() const
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_HEIGHTMAP )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QImage * ptr = new QImage( obj->heightMap () );
      _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setHeightMap(const QImage &image)
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_SETHEIGHTMAP )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQIMAGE(1) )
    {
      obj->setHeightMap ( *PQIMAGE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString heightMapFile() const
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_HEIGHTMAPFILE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->heightMapFile () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setHeightMapFile(const QString &filename)
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_SETHEIGHTMAPFILE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setHeightMapFile ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
float minXValue() const
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_MINXVALUE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RFLOAT( obj->minXValue () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setMinXValue(float min)
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_SETMINXVALUE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setMinXValue ( PFLOAT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
float maxXValue() const
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_MAXXVALUE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RFLOAT( obj->maxXValue () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setMaxXValue(float max)
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_SETMAXXVALUE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setMaxXValue ( PFLOAT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
float minZValue() const
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_MINZVALUE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RFLOAT( obj->minZValue () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setMinZValue(float min)
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_SETMINZVALUE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setMinZValue ( PFLOAT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
float maxZValue() const
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_MAXZVALUE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RFLOAT( obj->maxZValue () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setMaxZValue(float max)
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_SETMAXZVALUE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setMaxZValue ( PFLOAT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setValueRanges(float minX, float maxX, float minZ, float maxZ)
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_SETVALUERANGES )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
    {
      obj->setValueRanges ( PFLOAT(1), PFLOAT(2), PFLOAT(3), PFLOAT(4) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QHeightMapSurfaceDataProxySlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_ONHEIGHTMAPCHANGED )
{
  QHeightMapSurfaceDataProxySlots_connect_signal( "heightMapChanged(QImage)", "heightMapChanged(QImage)" );
}

HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_ONHEIGHTMAPFILECHANGED )
{
  QHeightMapSurfaceDataProxySlots_connect_signal( "heightMapFileChanged(QString)", "heightMapFileChanged(QString)" );
}

HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_ONMAXXVALUECHANGED )
{
  QHeightMapSurfaceDataProxySlots_connect_signal( "maxXValueChanged(float)", "maxXValueChanged(float)" );
}

HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_ONMAXZVALUECHANGED )
{
  QHeightMapSurfaceDataProxySlots_connect_signal( "maxZValueChanged(float)", "maxZValueChanged(float)" );
}

HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_ONMINXVALUECHANGED )
{
  QHeightMapSurfaceDataProxySlots_connect_signal( "minXValueChanged(float)", "minXValueChanged(float)" );
}

HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_ONMINZVALUECHANGED )
{
  QHeightMapSurfaceDataProxySlots_connect_signal( "minZValueChanged(float)", "minZValueChanged(float)" );
}

#pragma ENDDUMP
