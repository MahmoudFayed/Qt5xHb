/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOCOORDINATE
#endif

CLASS QGeoRectangle INHERIT QGeoShape

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD setTopLeft
   METHOD topLeft
   METHOD setTopRight
   METHOD topRight
   METHOD setBottomLeft
   METHOD bottomLeft
   METHOD setBottomRight
   METHOD bottomRight
   METHOD setCenter
   METHOD center
   METHOD setWidth
   METHOD width
   METHOD setHeight
   METHOD height
   METHOD contains1
   METHOD contains2
   METHOD contains
   METHOD intersects
   METHOD translate
   METHOD translated
   METHOD united

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGeoRectangle
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QGeoRectangle>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QGeoRectangle>
#endif
#endif

/*
QGeoRectangle()
*/
HB_FUNC_STATIC( QGEORECTANGLE_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * o = new QGeoRectangle ();
  _qt5xhb_returnNewObject( o, true );
#endif
}

/*
QGeoRectangle(const QGeoCoordinate &center, double degreesWidth, double degreesHeight)
*/
HB_FUNC_STATIC( QGEORECTANGLE_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * o = new QGeoRectangle ( *PQGEOCOORDINATE(1), PDOUBLE(2), PDOUBLE(3) );
  _qt5xhb_returnNewObject( o, true );
#endif
}

/*
QGeoRectangle(const QGeoCoordinate &topLeft, const QGeoCoordinate &bottomRight)
*/
HB_FUNC_STATIC( QGEORECTANGLE_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * o = new QGeoRectangle ( *PQGEOCOORDINATE(1), *PQGEOCOORDINATE(2) );
  _qt5xhb_returnNewObject( o, true );
#endif
}

/*
QGeoRectangle(const QGeoRectangle &other)
*/
HB_FUNC_STATIC( QGEORECTANGLE_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * o = new QGeoRectangle ( *PQGEORECTANGLE(1) );
  _qt5xhb_returnNewObject( o, true );
#endif
}

/*
QGeoRectangle(const QGeoShape &other)
*/
HB_FUNC_STATIC( QGEORECTANGLE_NEW5 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * o = new QGeoRectangle ( *PQGEOSHAPE(1) );
  _qt5xhb_returnNewObject( o, true );
#endif
}

//[1]QGeoRectangle()
//[2]QGeoRectangle(const QGeoCoordinate &center, double degreesWidth, double degreesHeight)
//[3]QGeoRectangle(const QGeoCoordinate &topLeft, const QGeoCoordinate &bottomRight)
//[4]QGeoRectangle(const QGeoRectangle &other)
//[5]QGeoRectangle(const QGeoShape &other)

HB_FUNC_STATIC( QGEORECTANGLE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGEORECTANGLE_NEW1 );
  }
  else if( ISNUMPAR(3) && ISQGEOCOORDINATE(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QGEORECTANGLE_NEW2 );
  }
  else if( ISNUMPAR(2) && ISQGEOCOORDINATE(1) && ISQGEOCOORDINATE(2) )
  {
    HB_FUNC_EXEC( QGEORECTANGLE_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQGEORECTANGLE(1) )
  {
    HB_FUNC_EXEC( QGEORECTANGLE_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQGEOSHAPE(1) )
  {
    HB_FUNC_EXEC( QGEORECTANGLE_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGEORECTANGLE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

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
void setTopLeft(const QGeoCoordinate &topLeft)
*/
HB_FUNC_STATIC( QGEORECTANGLE_SETTOPLEFT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQGEOCOORDINATE(1) )
    {
      obj->setTopLeft ( *PQGEOCOORDINATE(1) );
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
QGeoCoordinate topLeft() const
*/
HB_FUNC_STATIC( QGEORECTANGLE_TOPLEFT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QGeoCoordinate * ptr = new QGeoCoordinate( obj->topLeft () );
      _qt5xhb_createReturnClass ( ptr, "QGEOCOORDINATE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setTopRight(const QGeoCoordinate &topRight)
*/
HB_FUNC_STATIC( QGEORECTANGLE_SETTOPRIGHT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQGEOCOORDINATE(1) )
    {
      obj->setTopRight ( *PQGEOCOORDINATE(1) );
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
QGeoCoordinate topRight() const
*/
HB_FUNC_STATIC( QGEORECTANGLE_TOPRIGHT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QGeoCoordinate * ptr = new QGeoCoordinate( obj->topRight () );
      _qt5xhb_createReturnClass ( ptr, "QGEOCOORDINATE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setBottomLeft(const QGeoCoordinate &bottomLeft)
*/
HB_FUNC_STATIC( QGEORECTANGLE_SETBOTTOMLEFT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQGEOCOORDINATE(1) )
    {
      obj->setBottomLeft ( *PQGEOCOORDINATE(1) );
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
QGeoCoordinate bottomLeft() const
*/
HB_FUNC_STATIC( QGEORECTANGLE_BOTTOMLEFT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QGeoCoordinate * ptr = new QGeoCoordinate( obj->bottomLeft () );
      _qt5xhb_createReturnClass ( ptr, "QGEOCOORDINATE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setBottomRight(const QGeoCoordinate &bottomRight)
*/
HB_FUNC_STATIC( QGEORECTANGLE_SETBOTTOMRIGHT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQGEOCOORDINATE(1) )
    {
      obj->setBottomRight ( *PQGEOCOORDINATE(1) );
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
QGeoCoordinate bottomRight() const
*/
HB_FUNC_STATIC( QGEORECTANGLE_BOTTOMRIGHT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QGeoCoordinate * ptr = new QGeoCoordinate( obj->bottomRight () );
      _qt5xhb_createReturnClass ( ptr, "QGEOCOORDINATE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setCenter(const QGeoCoordinate &center)
*/
HB_FUNC_STATIC( QGEORECTANGLE_SETCENTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQGEOCOORDINATE(1) )
    {
      obj->setCenter ( *PQGEOCOORDINATE(1) );
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
QGeoCoordinate center() const
*/
HB_FUNC_STATIC( QGEORECTANGLE_CENTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QGeoCoordinate * ptr = new QGeoCoordinate( obj->center () );
      _qt5xhb_createReturnClass ( ptr, "QGEOCOORDINATE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setWidth(double degreesWidth)
*/
HB_FUNC_STATIC( QGEORECTANGLE_SETWIDTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setWidth ( PDOUBLE(1) );
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
double width() const
*/
HB_FUNC_STATIC( QGEORECTANGLE_WIDTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RDOUBLE( obj->width () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setHeight(double degreesHeight)
*/
HB_FUNC_STATIC( QGEORECTANGLE_SETHEIGHT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setHeight ( PDOUBLE(1) );
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
double height() const
*/
HB_FUNC_STATIC( QGEORECTANGLE_HEIGHT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RDOUBLE( obj->height () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
bool contains(const QGeoCoordinate &coordinate) const
*/
HB_FUNC_STATIC( QGEORECTANGLE_CONTAINS1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQGEOCOORDINATE(1) )
    {
      RBOOL( obj->contains ( *PQGEOCOORDINATE(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
bool contains(const QGeoRectangle &rectangle) const
*/
HB_FUNC_STATIC( QGEORECTANGLE_CONTAINS2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQGEORECTANGLE(1) )
    {
      RBOOL( obj->contains ( *PQGEORECTANGLE(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

//[1]bool contains(const QGeoCoordinate &coordinate) const
//[2]bool contains(const QGeoRectangle &rectangle) const

HB_FUNC_STATIC( QGEORECTANGLE_CONTAINS )
{
  if( ISNUMPAR(1) && ISQGEOCOORDINATE(1) )
  {
    HB_FUNC_EXEC( QGEORECTANGLE_CONTAINS1 );
  }
  else if( ISNUMPAR(1) && ISQGEORECTANGLE(1) )
  {
    HB_FUNC_EXEC( QGEORECTANGLE_CONTAINS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

}

/*
bool intersects(const QGeoRectangle &rectangle) const
*/
HB_FUNC_STATIC( QGEORECTANGLE_INTERSECTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQGEORECTANGLE(1) )
    {
      RBOOL( obj->intersects ( *PQGEORECTANGLE(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void translate(double degreesLatitude, double degreesLongitude)
*/
HB_FUNC_STATIC( QGEORECTANGLE_TRANSLATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
      obj->translate ( PDOUBLE(1), PDOUBLE(2) );
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
QGeoRectangle translated(double degreesLatitude, double degreesLongitude) const
*/
HB_FUNC_STATIC( QGEORECTANGLE_TRANSLATED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
      QGeoRectangle * ptr = new QGeoRectangle( obj->translated ( PDOUBLE(1), PDOUBLE(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QGEORECTANGLE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QGeoRectangle united(const QGeoRectangle &rectangle) const
*/
HB_FUNC_STATIC( QGEORECTANGLE_UNITED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQGEORECTANGLE(1) )
    {
      QGeoRectangle * ptr = new QGeoRectangle( obj->united ( *PQGEORECTANGLE(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QGEORECTANGLE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

#pragma ENDDUMP
