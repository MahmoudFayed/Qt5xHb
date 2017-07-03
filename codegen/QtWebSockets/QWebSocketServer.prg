/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QHOSTADDRESS
REQUEST QWEBSOCKET
REQUEST QNETWORKPROXY
REQUEST QSSLCONFIGURATION
#endif

CLASS QWebSocketServer INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD listen
   METHOD close
   METHOD isListening
   METHOD maxPendingConnections
   METHOD setMaxPendingConnections
   METHOD serverPort
   METHOD serverAddress
   METHOD secureMode
   METHOD socketDescriptor
   METHOD setSocketDescriptor
   METHOD hasPendingConnections
   METHOD nextPendingConnection
   METHOD error
   METHOD errorString
   METHOD pauseAccepting
   METHOD resumeAccepting
   METHOD serverName
   METHOD setServerName
   METHOD proxy
   METHOD setProxy
   METHOD setSslConfiguration
   METHOD sslConfiguration
   METHOD supportedVersions

   METHOD onAcceptError
   METHOD onServerError
   METHOD onOriginAuthenticationRequired
   METHOD onNewConnection
   METHOD onPeerVerifyError
   METHOD onSslErrors
   METHOD onClosed

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebSocketServer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QWebSocketServer>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QWebSocketServer>
#endif
#endif

#include <QNetworkProxy>

/*
explicit QWebSocketServer(const QString &serverName, SslMode secureMode, QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * o = new QWebSocketServer ( PQSTRING(1), (QWebSocketServer::SslMode) hb_parni(2), OPQOBJECT(3,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QWEBSOCKETSERVER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool listen(const QHostAddress &address = QHostAddress::Any, quint16 port = 0)
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_LISTEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHostAddress par1 = ISNIL(1)? QHostAddress::Any : *(QHostAddress *) _qt5xhb_itemGetPtr(1);
    RBOOL( obj->listen ( par1, OPQUINT16(2,0) ) );
  }
#endif
}


/*
void close()
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_CLOSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->close ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isListening() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_ISLISTENING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isListening () );
  }
#endif
}


/*
int maxPendingConnections() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_MAXPENDINGCONNECTIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->maxPendingConnections () );
  }
#endif
}

/*
void setMaxPendingConnections(int numConnections)
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SETMAXPENDINGCONNECTIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMaxPendingConnections ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
quint16 serverPort() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SERVERPORT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQUINT16( obj->serverPort () );
  }
#endif
}


/*
QHostAddress serverAddress() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SERVERADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHostAddress * ptr = new QHostAddress( obj->serverAddress () );
    _qt5xhb_createReturnClass ( ptr, "QHOSTADDRESS", true );
  }
#endif
}


/*
SslMode secureMode() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SECUREMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->secureMode () );
  }
#endif
}


/*
int socketDescriptor() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SOCKETDESCRIPTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->socketDescriptor () );
  }
#endif
}

/*
bool setSocketDescriptor(int socketDescriptor)
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SETSOCKETDESCRIPTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->setSocketDescriptor ( PINT(1) ) );
  }
#endif
}


/*
bool hasPendingConnections() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_HASPENDINGCONNECTIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->hasPendingConnections () );
  }
#endif
}


/*
virtual QWebSocket *nextPendingConnection()
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_NEXTPENDINGCONNECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebSocket * ptr = obj->nextPendingConnection ();
    _qt5xhb_createReturnClass ( ptr, "QWEBSOCKET" );
  }
#endif
}


/*
QWebSocketProtocol::CloseCode error() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error () );
  }
#endif
}


/*
QString errorString() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_ERRORSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->errorString () );
  }
#endif
}


/*
void pauseAccepting()
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_PAUSEACCEPTING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->pauseAccepting ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void resumeAccepting()
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_RESUMEACCEPTING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resumeAccepting ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString serverName() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SERVERNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->serverName () );
  }
#endif
}

/*
void setServerName(const QString &serverName)
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SETSERVERNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setServerName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QNetworkProxy proxy() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_PROXY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkProxy * ptr = new QNetworkProxy( obj->proxy () );
    _qt5xhb_createReturnClass ( ptr, "QNETWORKPROXY", true );
  }
#endif
}

/*
void setProxy(const QNetworkProxy &networkProxy)
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SETPROXY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setProxy ( *PQNETWORKPROXY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void setSslConfiguration(const QSslConfiguration &sslConfiguration)
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SETSSLCONFIGURATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSslConfiguration ( *PQSSLCONFIGURATION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QSslConfiguration sslConfiguration() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SSLCONFIGURATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSslConfiguration * ptr = new QSslConfiguration( obj->sslConfiguration () );
    _qt5xhb_createReturnClass ( ptr, "QSSLCONFIGURATION", true );
  }
#endif
}


/*
QList<QWebSocketProtocol::Version> supportedVersions() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SUPPORTEDVERSIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QWebSocketProtocol::Version> list = obj->supportedVersions ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
#endif
}




#pragma ENDDUMP
