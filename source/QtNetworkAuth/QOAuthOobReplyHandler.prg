/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QOAuthOobReplyHandler INHERIT QAbstractOAuthReplyHandler

   METHOD new
   METHOD delete

   METHOD callback

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QOAuthOobReplyHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QOAuthOobReplyHandler>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QOAuthOobReplyHandler>
#endif
#endif

/*
explicit QOAuthOobReplyHandler(QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QOAUTHOOBREPLYHANDLER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QOAuthOobReplyHandler * o = new QOAuthOobReplyHandler ( OPQOBJECT(1,nullptr) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QOAUTHOOBREPLYHANDLER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QOAuthOobReplyHandler * obj = (QOAuthOobReplyHandler *) _qt5xhb_itemGetPtrStackSelfItem();

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
QString callback() const override
*/
HB_FUNC_STATIC( QOAUTHOOBREPLYHANDLER_CALLBACK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QOAuthOobReplyHandler * obj = (QOAuthOobReplyHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->callback () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void networkReplyFinished(QNetworkReply *reply) override (protected)
*/

/*
QVariantMap parseResponse(const QByteArray &response) (private)
*/

#pragma ENDDUMP
