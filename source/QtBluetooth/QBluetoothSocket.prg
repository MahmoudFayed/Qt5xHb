/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHADDRESS
#endif

CLASS QBluetoothSocket INHERIT QIODevice

   METHOD new
   METHOD delete
   METHOD abort
   METHOD close
   METHOD isSequential
   METHOD bytesAvailable
   METHOD bytesToWrite
   METHOD canReadLine
   METHOD connectToService
   METHOD disconnectFromService
   METHOD localName
   METHOD localAddress
   METHOD localPort
   METHOD peerName
   METHOD peerAddress
   METHOD peerPort
   METHOD setSocketDescriptor
   METHOD socketDescriptor
   METHOD socketType
   METHOD state
   METHOD error
   METHOD errorString

   METHOD onConnected
   METHOD onDisconnected
   METHOD onError
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QBluetoothSocket
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothSocket>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothSocket>
#endif
#endif

/*
QBluetoothSocket(QBluetoothServiceInfo::Protocol socketType, QObject *parent = 0)
*/
void QBluetoothSocket_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * o = new QBluetoothSocket ( (QBluetoothServiceInfo::Protocol) hb_parni(1), OPQOBJECT(2,0) );
  _qt5xhb_returnNewObject( o, false );
#endif
}

/*
QBluetoothSocket(QObject *parent = 0)
*/
void QBluetoothSocket_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * o = new QBluetoothSocket ( OPQOBJECT(1,0) );
  _qt5xhb_returnNewObject( o, false );
#endif
}

//[1]QBluetoothSocket(QBluetoothServiceInfo::Protocol socketType, QObject *parent = 0)
//[2]QBluetoothSocket(QObject *parent = 0)

HB_FUNC_STATIC( QBLUETOOTHSOCKET_NEW )
{
  if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQOBJECT(2) )
  {
    QBluetoothSocket_new1();
  }
  else if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QBluetoothSocket_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QBLUETOOTHSOCKET_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qt5xhb_itemGetPtrStackSelfItem();

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
void abort()
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_ABORT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
virtual void close()
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_CLOSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->close ();
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
bool isSequential() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_ISSEQUENTIAL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isSequential () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
virtual qint64 bytesAvailable() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_BYTESAVAILABLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQINT64( obj->bytesAvailable () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
virtual qint64 bytesToWrite() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_BYTESTOWRITE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQINT64( obj->bytesToWrite () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
virtual bool canReadLine() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_CANREADLINE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->canReadLine () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void connectToService(const QBluetoothServiceInfo &service, OpenMode openMode = ReadWrite)
*/
void QBluetoothSocket_connectToService1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->connectToService ( *PQBLUETOOTHSERVICEINFO(1), ISNIL(2)? (QIODevice::OpenMode) QIODevice::ReadWrite : (QIODevice::OpenMode) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void connectToService(const QBluetoothAddress &address, const QBluetoothUuid &uuid, OpenMode openMode = ReadWrite)
*/
void QBluetoothSocket_connectToService2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->connectToService ( *PQBLUETOOTHADDRESS(1), *PQBLUETOOTHUUID(2), ISNIL(3)? (QIODevice::OpenMode) QIODevice::ReadWrite : (QIODevice::OpenMode) hb_parni(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void connectToService(const QBluetoothAddress &address, quint16 port, OpenMode openMode = ReadWrite)
*/
void QBluetoothSocket_connectToService3 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->connectToService ( *PQBLUETOOTHADDRESS(1), PQUINT16(2), ISNIL(3)? (QIODevice::OpenMode) QIODevice::ReadWrite : (QIODevice::OpenMode) hb_parni(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

//[1]void connectToService(const QBluetoothServiceInfo &service, OpenMode openMode = ReadWrite)
//[2]void connectToService(const QBluetoothAddress &address, const QBluetoothUuid &uuid, OpenMode openMode = ReadWrite)
//[3]void connectToService(const QBluetoothAddress &address, quint16 port, OpenMode openMode = ReadWrite)

HB_FUNC_STATIC( QBLUETOOTHSOCKET_CONNECTTOSERVICE )
{
  if( ISBETWEEN(1,2) && ISQBLUETOOTHSERVICEINFO(1) && ISOPTNUM(2) )
  {
    QBluetoothSocket_connectToService1();
  }
  else if( ISBETWEEN(2,3) && ISQBLUETOOTHADDRESS(1) && ISQBLUETOOTHUUID(2) && ISOPTNUM(3) )
  {
    QBluetoothSocket_connectToService2();
  }
  else if( ISBETWEEN(2,3) && ISQBLUETOOTHADDRESS(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QBluetoothSocket_connectToService3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void disconnectFromService()
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_DISCONNECTFROMSERVICE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->disconnectFromService ();
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
QString localName() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_LOCALNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->localName () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QBluetoothAddress localAddress() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_LOCALADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QBluetoothAddress * ptr = new QBluetoothAddress( obj->localAddress () );
      _qt5xhb_createReturnClass ( ptr, "QBLUETOOTHADDRESS", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
quint16 localPort() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_LOCALPORT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQUINT16( obj->localPort () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QString peerName() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_PEERNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->peerName () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QBluetoothAddress peerAddress() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_PEERADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QBluetoothAddress * ptr = new QBluetoothAddress( obj->peerAddress () );
      _qt5xhb_createReturnClass ( ptr, "QBLUETOOTHADDRESS", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
quint16 peerPort() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_PEERPORT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQUINT16( obj->peerPort () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
bool setSocketDescriptor(int socketDescriptor, QBluetoothServiceInfo::Protocol socketType,SocketState socketState = ConnectedState,OpenMode openMode = ReadWrite)
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_SETSOCKETDESCRIPTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(2,4) && ISNUM(1) && ISNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) )
    {
      RBOOL( obj->setSocketDescriptor ( PINT(1), (QBluetoothServiceInfo::Protocol) hb_parni(2), ISNIL(3)? (QBluetoothSocket::SocketState) QBluetoothSocket::ConnectedState : (QBluetoothSocket::SocketState) hb_parni(3), ISNIL(4)? (QIODevice::OpenMode) QIODevice::ReadWrite : (QIODevice::OpenMode) hb_parni(4) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
int socketDescriptor() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_SOCKETDESCRIPTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->socketDescriptor () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QBluetoothServiceInfo::Protocol socketType() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_SOCKETTYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->socketType () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
SocketState state() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_STATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->state () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
SocketError error() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
QString errorString() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_ERRORSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

void QBluetoothSocketSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QBLUETOOTHSOCKET_ONCONNECTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocketSlots_connect_signal( "connected()", "connected()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QBLUETOOTHSOCKET_ONDISCONNECTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocketSlots_connect_signal( "disconnected()", "disconnected()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QBLUETOOTHSOCKET_ONERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocketSlots_connect_signal( "error(QBluetoothSocket::SocketError)", "error(QBluetoothSocket::SocketError)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QBLUETOOTHSOCKET_ONSTATECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocketSlots_connect_signal( "stateChanged(QBluetoothSocket::SocketState)", "stateChanged(QBluetoothSocket::SocketState)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
