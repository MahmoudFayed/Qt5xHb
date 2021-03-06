/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QDnsLookup INHERIT QObject

   METHOD new
   METHOD delete

   METHOD abort
   METHOD canonicalNameRecords
   METHOD error
   METHOD errorString
   METHOD hostAddressRecords
   METHOD isFinished
   METHOD lookup
   METHOD mailExchangeRecords
   METHOD name
   METHOD nameserver
   METHOD nameServerRecords
   METHOD pointerRecords
   METHOD serviceRecords
   METHOD setName
   METHOD setNameserver
   METHOD setType
   METHOD textRecords
   METHOD type

   METHOD onFinished
   METHOD onNameChanged
   METHOD onNameserverChanged
   METHOD onTypeChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDnsLookup
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDnsLookup>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDnsLookup>
#endif

#include <QHostAddress>

/*
explicit QDnsLookup(QObject *parent = Q_NULLPTR)
*/
void QDnsLookup_new1 ()
{
  QDnsLookup * o = new QDnsLookup ( OPQOBJECT(1,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QDnsLookup(Type type, const QString &name, QObject *parent = Q_NULLPTR)
*/
void QDnsLookup_new2 ()
{
  QDnsLookup * o = new QDnsLookup ( (QDnsLookup::Type) hb_parni(1), PQSTRING(2), OPQOBJECT(3,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QDnsLookup(Type type, const QString &name, const QHostAddress &nameserver, QObject *parent = Q_NULLPTR)
*/
void QDnsLookup_new3 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QDnsLookup * o = new QDnsLookup ( (QDnsLookup::Type) hb_parni(1), PQSTRING(2), *PQHOSTADDRESS(3), OPQOBJECT(4,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
#endif
}

//[1]explicit QDnsLookup(QObject *parent = Q_NULLPTR)
//[2]QDnsLookup(Type type, const QString &name, QObject *parent = Q_NULLPTR)
//[3]QDnsLookup(Type type, const QString &name, const QHostAddress &nameserver, QObject *parent = Q_NULLPTR)

HB_FUNC_STATIC( QDNSLOOKUP_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QDnsLookup_new1();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISCHAR(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    QDnsLookup_new2();
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISCHAR(2) && ISQHOSTADDRESS(3) && (ISQOBJECT(4)||ISNIL(4)) )
  {
    QDnsLookup_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QDnsLookup()
*/
HB_FUNC_STATIC( QDNSLOOKUP_DELETE )
{
  QDnsLookup * obj = (QDnsLookup *) _qt5xhb_itemGetPtrStackSelfItem();

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
Error error() const
*/
HB_FUNC_STATIC( QDNSLOOKUP_ERROR )
{
  QDnsLookup * obj = (QDnsLookup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->error () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString errorString() const
*/
HB_FUNC_STATIC( QDNSLOOKUP_ERRORSTRING )
{
  QDnsLookup * obj = (QDnsLookup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->errorString () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString name() const
*/
HB_FUNC_STATIC( QDNSLOOKUP_NAME )
{
  QDnsLookup * obj = (QDnsLookup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->name () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setName(const QString &name)
*/
HB_FUNC_STATIC( QDNSLOOKUP_SETNAME )
{
  QDnsLookup * obj = (QDnsLookup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setName ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Type type() const
*/
HB_FUNC_STATIC( QDNSLOOKUP_TYPE )
{
  QDnsLookup * obj = (QDnsLookup *) _qt5xhb_itemGetPtrStackSelfItem();

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
}

/*
void setType(QDnsLookup::Type)
*/
HB_FUNC_STATIC( QDNSLOOKUP_SETTYPE )
{
  QDnsLookup * obj = (QDnsLookup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setType ( (QDnsLookup::Type) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QHostAddress nameserver() const
*/
HB_FUNC_STATIC( QDNSLOOKUP_NAMESERVER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QDnsLookup * obj = (QDnsLookup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QHostAddress * ptr = new QHostAddress( obj->nameserver () );
      _qt5xhb_createReturnClass ( ptr, "QHOSTADDRESS", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setNameserver(const QHostAddress &nameserver)
*/
HB_FUNC_STATIC( QDNSLOOKUP_SETNAMESERVER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QDnsLookup * obj = (QDnsLookup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQHOSTADDRESS(1) )
    {
      obj->setNameserver ( *PQHOSTADDRESS(1) );
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
bool isFinished() const
*/
HB_FUNC_STATIC( QDNSLOOKUP_ISFINISHED )
{
  QDnsLookup * obj = (QDnsLookup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isFinished () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QList<QDnsDomainNameRecord> canonicalNameRecords() const
*/
HB_FUNC_STATIC( QDNSLOOKUP_CANONICALNAMERECORDS )
{
  QDnsLookup * obj = (QDnsLookup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<QDnsDomainNameRecord> list = obj->canonicalNameRecords ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QDNSDOMAINNAMERECORD" );
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
          hb_itemPutPtr( pItem, (QDnsDomainNameRecord *) new QDnsDomainNameRecord ( list[i] ) );
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
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QDNSDOMAINNAMERECORD", HB_ERR_ARGS_BASEPARAMS );
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
QList<QDnsHostAddressRecord> hostAddressRecords() const
*/
HB_FUNC_STATIC( QDNSLOOKUP_HOSTADDRESSRECORDS )
{
  QDnsLookup * obj = (QDnsLookup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<QDnsHostAddressRecord> list = obj->hostAddressRecords ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QDNSHOSTADDRESSRECORD" );
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
          hb_itemPutPtr( pItem, (QDnsHostAddressRecord *) new QDnsHostAddressRecord ( list[i] ) );
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
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QDNSHOSTADDRESSRECORD", HB_ERR_ARGS_BASEPARAMS );
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
QList<QDnsMailExchangeRecord> mailExchangeRecords() const
*/
HB_FUNC_STATIC( QDNSLOOKUP_MAILEXCHANGERECORDS )
{
  QDnsLookup * obj = (QDnsLookup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<QDnsMailExchangeRecord> list = obj->mailExchangeRecords ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QDNSMAILEXCHANGERECORD" );
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
          hb_itemPutPtr( pItem, (QDnsMailExchangeRecord *) new QDnsMailExchangeRecord ( list[i] ) );
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
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QDNSMAILEXCHANGERECORD", HB_ERR_ARGS_BASEPARAMS );
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
QList<QDnsDomainNameRecord> nameServerRecords() const
*/
HB_FUNC_STATIC( QDNSLOOKUP_NAMESERVERRECORDS )
{
  QDnsLookup * obj = (QDnsLookup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<QDnsDomainNameRecord> list = obj->nameServerRecords ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QDNSDOMAINNAMERECORD" );
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
          hb_itemPutPtr( pItem, (QDnsDomainNameRecord *) new QDnsDomainNameRecord ( list[i] ) );
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
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QDNSDOMAINNAMERECORD", HB_ERR_ARGS_BASEPARAMS );
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
QList<QDnsDomainNameRecord> pointerRecords() const
*/
HB_FUNC_STATIC( QDNSLOOKUP_POINTERRECORDS )
{
  QDnsLookup * obj = (QDnsLookup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<QDnsDomainNameRecord> list = obj->pointerRecords ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QDNSDOMAINNAMERECORD" );
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
          hb_itemPutPtr( pItem, (QDnsDomainNameRecord *) new QDnsDomainNameRecord ( list[i] ) );
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
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QDNSDOMAINNAMERECORD", HB_ERR_ARGS_BASEPARAMS );
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
QList<QDnsServiceRecord> serviceRecords() const
*/
HB_FUNC_STATIC( QDNSLOOKUP_SERVICERECORDS )
{
  QDnsLookup * obj = (QDnsLookup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<QDnsServiceRecord> list = obj->serviceRecords ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QDNSSERVICERECORD" );
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
          hb_itemPutPtr( pItem, (QDnsServiceRecord *) new QDnsServiceRecord ( list[i] ) );
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
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QDNSSERVICERECORD", HB_ERR_ARGS_BASEPARAMS );
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
QList<QDnsTextRecord> textRecords() const
*/
HB_FUNC_STATIC( QDNSLOOKUP_TEXTRECORDS )
{
  QDnsLookup * obj = (QDnsLookup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<QDnsTextRecord> list = obj->textRecords ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QDNSTEXTRECORD" );
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
          hb_itemPutPtr( pItem, (QDnsTextRecord *) new QDnsTextRecord ( list[i] ) );
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
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QDNSTEXTRECORD", HB_ERR_ARGS_BASEPARAMS );
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
void abort() (slot)
*/
HB_FUNC_STATIC( QDNSLOOKUP_ABORT )
{
  QDnsLookup * obj = (QDnsLookup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->abort ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void lookup() (slot)
*/
HB_FUNC_STATIC( QDNSLOOKUP_LOOKUP )
{
  QDnsLookup * obj = (QDnsLookup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->lookup ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QDnsLookupSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QDNSLOOKUP_ONFINISHED )
{
  QDnsLookupSlots_connect_signal( "finished()", "finished()" );
}

HB_FUNC_STATIC( QDNSLOOKUP_ONNAMECHANGED )
{
  QDnsLookupSlots_connect_signal( "nameChanged(QString)", "nameChanged(QString)" );
}

HB_FUNC_STATIC( QDNSLOOKUP_ONNAMESERVERCHANGED )
{
  QDnsLookupSlots_connect_signal( "nameserverChanged(QHostAddress)", "nameserverChanged(QHostAddress)" );
}

HB_FUNC_STATIC( QDNSLOOKUP_ONTYPECHANGED )
{
  QDnsLookupSlots_connect_signal( "typeChanged(QDnsLookup::Type)", "typeChanged(QDnsLookup::Type)" );
}

#pragma ENDDUMP
