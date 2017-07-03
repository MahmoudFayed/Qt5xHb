/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QTextDecoder

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD toUnicode
   METHOD hasFailure

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextDecoder
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTextDecoder>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTextDecoder>
#endif

/*
QTextDecoder(const QTextCodec * codec)
*/
void QTextDecoder_new1 ()
{
  const QTextCodec * par1 = (const QTextCodec *) _qt5xhb_itemGetPtr(1);
  QTextDecoder * o = new QTextDecoder ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextDecoder(const QTextCodec * codec, QTextCodec::ConversionFlags flags)
*/
void QTextDecoder_new2 ()
{
  const QTextCodec * par1 = (const QTextCodec *) _qt5xhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  QTextDecoder * o = new QTextDecoder ( par1, (QTextCodec::ConversionFlags) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QTextDecoder(const QTextCodec * codec)
//[2]QTextDecoder(const QTextCodec * codec, QTextCodec::ConversionFlags flags)

HB_FUNC_STATIC( QTEXTDECODER_NEW )
{
  if( ISNUMPAR(1) && ISQTEXTCODEC(1) )
  {
    QTextDecoder_new1();
  }
  else if( ISNUMPAR(2) && ISQTEXTCODEC(1) && ISNUM(2) )
  {
    QTextDecoder_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTDECODER_DELETE )
{
  QTextDecoder * obj = (QTextDecoder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QString toUnicode(const char * chars, int len)
*/
void QTextDecoder_toUnicode1 ()
{
  QTextDecoder * obj = (QTextDecoder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->toUnicode ( PCONSTCHAR(1), PINT(2) ) );
  }
}

/*
QString toUnicode(const QByteArray & ba)
*/
void QTextDecoder_toUnicode3 ()
{
  QTextDecoder * obj = (QTextDecoder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->toUnicode ( *PQBYTEARRAY(1) ) );
  }
}

//[1]QString toUnicode(const char * chars, int len)
//[2]void toUnicode(QString * target, const char * chars, int len) // TODO: implementar(?)
//[3]QString toUnicode(const QByteArray & ba)

HB_FUNC_STATIC( QTEXTDECODER_TOUNICODE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QTextDecoder_toUnicode1();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QTextDecoder_toUnicode3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool hasFailure() const
*/
HB_FUNC_STATIC( QTEXTDECODER_HASFAILURE )
{
  QTextDecoder * obj = (QTextDecoder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->hasFailure () );
  }
}

HB_FUNC_STATIC( QTEXTDECODER_NEWFROM )
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

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QTEXTDECODER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTEXTDECODER_NEWFROM );
}

HB_FUNC_STATIC( QTEXTDECODER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTEXTDECODER_NEWFROM );
}

HB_FUNC_STATIC( QTEXTDECODER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTEXTDECODER_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP