/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSSLCERTIFICATE
REQUEST QSSLCIPHER
REQUEST QSSLKEY
#endif

CLASS QSslConfiguration

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   METHOD allowedNextProtocols
   METHOD caCertificates
   METHOD ciphers
   METHOD defaultConfiguration
   METHOD ephemeralServerKey
   METHOD isNull
   METHOD localCertificate
   METHOD localCertificateChain
   METHOD nextNegotiatedProtocol
   METHOD nextProtocolNegotiationStatus
   METHOD peerCertificate
   METHOD peerCertificateChain
   METHOD peerVerifyDepth
   METHOD peerVerifyMode
   METHOD preSharedKeyIdentityHint
   METHOD privateKey
   METHOD protocol
   METHOD sessionCipher
   METHOD sessionProtocol
   METHOD sessionTicket
   METHOD sessionTicketLifeTimeHint
   METHOD setAllowedNextProtocols
   METHOD setCaCertificates
   METHOD setCiphers
   METHOD setDefaultConfiguration
   METHOD setLocalCertificate
   METHOD setLocalCertificateChain
   METHOD setPeerVerifyDepth
   METHOD setPeerVerifyMode
   METHOD setPreSharedKeyIdentityHint
   METHOD setPrivateKey
   METHOD setProtocol
   METHOD setSessionTicket
   METHOD setSslOption
   METHOD supportedCiphers
   METHOD swap
   METHOD systemCaCertificates
   METHOD testSslOption

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSslConfiguration
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSslConfiguration>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSslConfiguration>
#endif

#include <QSslKey>
#include <QSslCipher>

/*
QSslConfiguration()
*/
void QSslConfiguration_new1 ()
{
  QSslConfiguration * o = new QSslConfiguration ();
  _qt5xhb_returnNewObject( o, true );
}

/*
QSslConfiguration( const QSslConfiguration & other )
*/
void QSslConfiguration_new2 ()
{
  QSslConfiguration * o = new QSslConfiguration ( *PQSSLCONFIGURATION(1) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]QSslConfiguration()
//[2]QSslConfiguration( const QSslConfiguration & other )

HB_FUNC_STATIC( QSSLCONFIGURATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSslConfiguration_new1();
  }
  else if( ISNUMPAR(1) && ISQSSLCONFIGURATION(1) )
  {
    QSslConfiguration_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QSslConfiguration()
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_DELETE )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

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
void swap(QSslConfiguration &other) Q_DECL_NOTHROW
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SWAP )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSSLCONFIGURATION(1) )
    {
      obj->swap ( *PQSSLCONFIGURATION(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isNull() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_ISNULL )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isNull () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSsl::SslProtocol protocol() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_PROTOCOL )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->protocol () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setProtocol(QSsl::SslProtocol protocol)
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETPROTOCOL )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setProtocol ( (QSsl::SslProtocol) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSslSocket::PeerVerifyMode peerVerifyMode() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_PEERVERIFYMODE )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->peerVerifyMode () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setPeerVerifyMode(QSslSocket::PeerVerifyMode mode)
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETPEERVERIFYMODE )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setPeerVerifyMode ( (QSslSocket::PeerVerifyMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int peerVerifyDepth() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_PEERVERIFYDEPTH )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->peerVerifyDepth () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setPeerVerifyDepth(int depth)
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETPEERVERIFYDEPTH )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setPeerVerifyDepth ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QList<QSslCertificate> localCertificateChain() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_LOCALCERTIFICATECHAIN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<QSslCertificate> list = obj->localCertificateChain ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QSSLCERTIFICATE" );
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
          hb_itemPutPtr( pItem, (QSslCertificate *) new QSslCertificate ( list[i] ) );
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
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QSSLCERTIFICATE", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setLocalCertificateChain(const QList<QSslCertificate> &localChain)
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETLOCALCERTIFICATECHAIN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
      QList<QSslCertificate> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
  par1 << *(QSslCertificate *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
      obj->setLocalCertificateChain ( par1 );
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
QSslCertificate localCertificate() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_LOCALCERTIFICATE )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSslCertificate * ptr = new QSslCertificate( obj->localCertificate () );
      _qt5xhb_createReturnClass ( ptr, "QSSLCERTIFICATE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setLocalCertificate(const QSslCertificate &certificate)
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETLOCALCERTIFICATE )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSSLCERTIFICATE(1) )
    {
      obj->setLocalCertificate ( *PQSSLCERTIFICATE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSslCertificate peerCertificate() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_PEERCERTIFICATE )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSslCertificate * ptr = new QSslCertificate( obj->peerCertificate () );
      _qt5xhb_createReturnClass ( ptr, "QSSLCERTIFICATE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QList<QSslCertificate> peerCertificateChain() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_PEERCERTIFICATECHAIN )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<QSslCertificate> list = obj->peerCertificateChain ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QSSLCERTIFICATE" );
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
          hb_itemPutPtr( pItem, (QSslCertificate *) new QSslCertificate ( list[i] ) );
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
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QSSLCERTIFICATE", HB_ERR_ARGS_BASEPARAMS );
        }
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
QSslCipher sessionCipher() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SESSIONCIPHER )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSslCipher * ptr = new QSslCipher( obj->sessionCipher () );
      _qt5xhb_createReturnClass ( ptr, "QSSLCIPHER", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSsl::SslProtocol sessionProtocol() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SESSIONPROTOCOL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->sessionProtocol () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QSslKey privateKey() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_PRIVATEKEY )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSslKey * ptr = new QSslKey( obj->privateKey () );
      _qt5xhb_createReturnClass ( ptr, "QSSLKEY", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setPrivateKey(const QSslKey &key)
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETPRIVATEKEY )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSSLKEY(1) )
    {
      obj->setPrivateKey ( *PQSSLKEY(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QList<QSslCipher> ciphers() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_CIPHERS )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<QSslCipher> list = obj->ciphers ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QSSLCIPHER" );
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
          hb_itemPutPtr( pItem, (QSslCipher *) new QSslCipher ( list[i] ) );
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
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QSSLCIPHER", HB_ERR_ARGS_BASEPARAMS );
        }
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
void setCiphers(const QList<QSslCipher> &ciphers)
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETCIPHERS )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
      QList<QSslCipher> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
  par1 << *(QSslCipher *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
      obj->setCiphers ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QList<QSslCipher> supportedCiphers()
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SUPPORTEDCIPHERS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
    if( ISNUMPAR(0) )
  {
      QList<QSslCipher> list = QSslConfiguration::supportedCiphers ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QSSLCIPHER" );
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
          hb_itemPutPtr( pItem, (QSslCipher *) new QSslCipher ( list[i] ) );
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
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QSSLCIPHER", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
QList<QSslCertificate> caCertificates() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_CACERTIFICATES )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<QSslCertificate> list = obj->caCertificates ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QSSLCERTIFICATE" );
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
          hb_itemPutPtr( pItem, (QSslCertificate *) new QSslCertificate ( list[i] ) );
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
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QSSLCERTIFICATE", HB_ERR_ARGS_BASEPARAMS );
        }
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
void setCaCertificates(const QList<QSslCertificate> &certificates)
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETCACERTIFICATES )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
      QList<QSslCertificate> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
  par1 << *(QSslCertificate *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
      obj->setCaCertificates ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QList<QSslCertificate> systemCaCertificates()
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SYSTEMCACERTIFICATES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
    if( ISNUMPAR(0) )
  {
      QList<QSslCertificate> list = QSslConfiguration::systemCaCertificates ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QSSLCERTIFICATE" );
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
          hb_itemPutPtr( pItem, (QSslCertificate *) new QSslCertificate ( list[i] ) );
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
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QSSLCERTIFICATE", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
void setSslOption(QSsl::SslOption option, bool on)
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETSSLOPTION )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISLOG(2) )
    {
      obj->setSslOption ( (QSsl::SslOption) hb_parni(1), PBOOL(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool testSslOption(QSsl::SslOption option) const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_TESTSSLOPTION )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RBOOL( obj->testSslOption ( (QSsl::SslOption) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray sessionTicket() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SESSIONTICKET )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QByteArray * ptr = new QByteArray( obj->sessionTicket () );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setSessionTicket(const QByteArray &sessionTicket)
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETSESSIONTICKET )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
    {
      obj->setSessionTicket ( *PQBYTEARRAY(1) );
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
int sessionTicketLifeTimeHint() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SESSIONTICKETLIFETIMEHINT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->sessionTicketLifeTimeHint () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QSslKey ephemeralServerKey() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_EPHEMERALSERVERKEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSslKey * ptr = new QSslKey( obj->ephemeralServerKey () );
      _qt5xhb_createReturnClass ( ptr, "QSSLKEY", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QVector<QSslEllipticCurve> ellipticCurves() const
*/

/*
void setEllipticCurves(const QVector<QSslEllipticCurve> &curves)
*/

/*
static QVector<QSslEllipticCurve> supportedEllipticCurves()
*/

/*
QByteArray preSharedKeyIdentityHint() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_PRESHAREDKEYIDENTITYHINT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QByteArray * ptr = new QByteArray( obj->preSharedKeyIdentityHint () );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setPreSharedKeyIdentityHint(const QByteArray &hint)
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETPRESHAREDKEYIDENTITYHINT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
    {
      obj->setPreSharedKeyIdentityHint ( *PQBYTEARRAY(1) );
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
QSslDiffieHellmanParameters diffieHellmanParameters() const
*/

/*
void setDiffieHellmanParameters(const QSslDiffieHellmanParameters &dhparams)
*/

/*
static QSslConfiguration defaultConfiguration()
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_DEFAULTCONFIGURATION )
{
    if( ISNUMPAR(0) )
  {
      QSslConfiguration * ptr = new QSslConfiguration( QSslConfiguration::defaultConfiguration () );
      _qt5xhb_createReturnClass ( ptr, "QSSLCONFIGURATION", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void setDefaultConfiguration(const QSslConfiguration &configuration)
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETDEFAULTCONFIGURATION )
{
    if( ISNUMPAR(1) && ISQSSLCONFIGURATION(1) )
  {
      QSslConfiguration::setDefaultConfiguration ( *PQSSLCONFIGURATION(1) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAllowedNextProtocols(QList<QByteArray> protocols)
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETALLOWEDNEXTPROTOCOLS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
      QList<QByteArray> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
  par1 << *(QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
      obj->setAllowedNextProtocols ( par1 );
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
QList<QByteArray> allowedNextProtocols() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_ALLOWEDNEXTPROTOCOLS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<QByteArray> list = obj->allowedNextProtocols ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
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
          hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
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
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBYTEARRAY", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QByteArray nextNegotiatedProtocol() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_NEXTNEGOTIATEDPROTOCOL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QByteArray * ptr = new QByteArray( obj->nextNegotiatedProtocol () );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
NextProtocolNegotiationStatus nextProtocolNegotiationStatus() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_NEXTPROTOCOLNEGOTIATIONSTATUS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->nextProtocolNegotiationStatus () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

HB_FUNC_STATIC( QSSLCONFIGURATION_NEWFROM )
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

HB_FUNC_STATIC( QSSLCONFIGURATION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSSLCONFIGURATION_NEWFROM );
}

HB_FUNC_STATIC( QSSLCONFIGURATION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSSLCONFIGURATION_NEWFROM );
}

HB_FUNC_STATIC( QSSLCONFIGURATION_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSSLCONFIGURATION_SETSELFDESTRUCTION )
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
