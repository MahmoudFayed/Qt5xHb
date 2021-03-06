/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QStringMatcher

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setPattern
   METHOD setCaseSensitivity
   METHOD indexIn
   METHOD pattern
   METHOD caseSensitivity

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStringMatcher
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QStringMatcher>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QStringMatcher>
#endif

/*
QStringMatcher()
*/
void QStringMatcher_new1 ()
{
  QStringMatcher * o = new QStringMatcher ();
  _qt5xhb_returnNewObject( o, true );
}

/*
QStringMatcher(const QString &pattern,Qt::CaseSensitivity cs = Qt::CaseSensitive)
*/
void QStringMatcher_new2 ()
{
  QStringMatcher * o = new QStringMatcher ( PQSTRING(1), ISNIL(2)? (Qt::CaseSensitivity) Qt::CaseSensitive : (Qt::CaseSensitivity) hb_parni(2) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QStringMatcher(const QChar *uc, int len,Qt::CaseSensitivity cs = Qt::CaseSensitive)
*/
void QStringMatcher_new3 ()
{
  QStringMatcher * o = new QStringMatcher ( PQCHAR(1), PINT(2), ISNIL(3)? (Qt::CaseSensitivity) Qt::CaseSensitive : (Qt::CaseSensitivity) hb_parni(3) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QStringMatcher(const QStringMatcher &other)
*/
void QStringMatcher_new4 ()
{
  QStringMatcher * o = new QStringMatcher ( *PQSTRINGMATCHER(1) );
  _qt5xhb_returnNewObject( o, true );
}

//QStringMatcher()
//QStringMatcher(const QString &pattern,Qt::CaseSensitivity cs = Qt::CaseSensitive)
//QStringMatcher(const QChar *uc, int len,Qt::CaseSensitivity cs = Qt::CaseSensitive)
//QStringMatcher(const QStringMatcher &other)

HB_FUNC_STATIC( QSTRINGMATCHER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStringMatcher_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QStringMatcher_new2();
  }
  else if( ISBETWEEN(2,3) && ISQCHAR(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QStringMatcher_new3();
  }
  else if( ISNUMPAR(1) && ISQSTRINGMATCHER(1) )
  {
    QStringMatcher_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSTRINGMATCHER_DELETE )
{
  QStringMatcher * obj = (QStringMatcher *) _qt5xhb_itemGetPtrStackSelfItem();

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
void setPattern(const QString &pattern)
*/
HB_FUNC_STATIC( QSTRINGMATCHER_SETPATTERN )
{
  QStringMatcher * obj = (QStringMatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setPattern ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCaseSensitivity(Qt::CaseSensitivity cs)
*/
HB_FUNC_STATIC( QSTRINGMATCHER_SETCASESENSITIVITY )
{
  QStringMatcher * obj = (QStringMatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setCaseSensitivity ( (Qt::CaseSensitivity) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int indexIn(const QString &str, int from = 0) const
*/
void QStringMatcher_indexIn1 ()
{
  QStringMatcher * obj = (QStringMatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RINT( obj->indexIn ( PQSTRING(1), OPINT(2,0) ) );
  }
}

/*
int indexIn(const QChar *str, int length, int from = 0) const
*/
void QStringMatcher_indexIn2 ()
{
  QStringMatcher * obj = (QStringMatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RINT( obj->indexIn ( PQCHAR(1), PINT(2), OPINT(3,0) ) );
  }
}

//[1]int indexIn(const QString &str, int from = 0) const
//[2]int indexIn(const QChar *str, int length, int from = 0) const

HB_FUNC_STATIC( QSTRINGMATCHER_INDEXIN )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QStringMatcher_indexIn1();
  }
  else if( ISBETWEEN(2,3) && ISQCHAR(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QStringMatcher_indexIn2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString pattern() const
*/
HB_FUNC_STATIC( QSTRINGMATCHER_PATTERN )
{
  QStringMatcher * obj = (QStringMatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->pattern () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::CaseSensitivity caseSensitivity() const
*/
HB_FUNC_STATIC( QSTRINGMATCHER_CASESENSITIVITY )
{
  QStringMatcher * obj = (QStringMatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->caseSensitivity () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

HB_FUNC_STATIC( QSTRINGMATCHER_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QSTRINGMATCHER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSTRINGMATCHER_NEWFROM );
}

HB_FUNC_STATIC( QSTRINGMATCHER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSTRINGMATCHER_NEWFROM );
}

HB_FUNC_STATIC( QSTRINGMATCHER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSTRINGMATCHER_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
