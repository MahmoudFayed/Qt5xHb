/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
REQUEST QDECLARATIVEIMAGEPROVIDER
REQUEST QNETWORKACCESSMANAGER
REQUEST QDECLARATIVENETWORKACCESSMANAGERFACTORY
REQUEST QDECLARATIVECONTEXT
#endif

CLASS QDeclarativeEngine INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addImageProvider
   METHOD addImportPath
   METHOD addPluginPath
   METHOD baseUrl
   METHOD clearComponentCache
   METHOD imageProvider
   METHOD importPathList
   METHOD networkAccessManager
   METHOD networkAccessManagerFactory
   METHOD offlineStoragePath
   METHOD outputWarningsToStandardError
   METHOD pluginPathList
   METHOD removeImageProvider
   METHOD rootContext
   METHOD setBaseUrl
   METHOD setImportPathList
   METHOD setNetworkAccessManagerFactory
   METHOD setOfflineStoragePath
   METHOD setOutputWarningsToStandardError
   METHOD setPluginPathList
   METHOD contextForObject
   METHOD objectOwnership
   METHOD setContextForObject
   METHOD setObjectOwnership

   METHOD onQuit
   METHOD onWarnings

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDeclarativeEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDeclarativeEngine>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDeclarativeEngine>
#endif

#include <QStringList>

/*
QDeclarativeEngine ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QDeclarativeEngine * o = new QDeclarativeEngine ( OPQOBJECT(1,0) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDECLARATIVEENGINE_DELETE )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void addImageProvider ( const QString & providerId, QDeclarativeImageProvider * provider )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_ADDIMAGEPROVIDER )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISQDECLARATIVEIMAGEPROVIDER(2) )
    {
      obj->addImageProvider ( PQSTRING(1), PQDECLARATIVEIMAGEPROVIDER(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addImportPath ( const QString & path )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_ADDIMPORTPATH )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->addImportPath ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addPluginPath ( const QString & path )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_ADDPLUGINPATH )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->addPluginPath ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QUrl baseUrl () const
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_BASEURL )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QUrl * ptr = new QUrl( obj->baseUrl () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}

/*
void clearComponentCache ()
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_CLEARCOMPONENTCACHE )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clearComponentCache ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QDeclarativeImageProvider * imageProvider ( const QString & providerId ) const
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_IMAGEPROVIDER )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QDeclarativeImageProvider * ptr = obj->imageProvider ( PQSTRING(1) );
      _qt5xhb_createReturnClass ( ptr, "QDECLARATIVEIMAGEPROVIDER" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringList importPathList () const
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_IMPORTPATHLIST )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRINGLIST( obj->importPathList () );
  }
}

/*
QNetworkAccessManager * networkAccessManager () const
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_NETWORKACCESSMANAGER )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QNetworkAccessManager * ptr = obj->networkAccessManager ();
    _qt5xhb_createReturnClass ( ptr, "QNETWORKACCESSMANAGER" );
  }
}

/*
QDeclarativeNetworkAccessManagerFactory * networkAccessManagerFactory () const
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_NETWORKACCESSMANAGERFACTORY )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDeclarativeNetworkAccessManagerFactory * ptr = obj->networkAccessManagerFactory ();
    _qt5xhb_createReturnClass ( ptr, "QDECLARATIVENETWORKACCESSMANAGERFACTORY" );
  }
}

/*
QString offlineStoragePath () const
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_OFFLINESTORAGEPATH )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->offlineStoragePath () );
  }
}

/*
bool outputWarningsToStandardError () const
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_OUTPUTWARNINGSTOSTANDARDERROR )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->outputWarningsToStandardError () );
  }
}

/*
QStringList pluginPathList () const
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_PLUGINPATHLIST )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRINGLIST( obj->pluginPathList () );
  }
}

/*
void removeImageProvider ( const QString & providerId )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_REMOVEIMAGEPROVIDER )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->removeImageProvider ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QDeclarativeContext * rootContext () const
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_ROOTCONTEXT )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDeclarativeContext * ptr = obj->rootContext ();
    _qt5xhb_createReturnClass ( ptr, "QDECLARATIVECONTEXT" );
  }
}

/*
void setBaseUrl ( const QUrl & url )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_SETBASEURL )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQURL(1) )
    {
      obj->setBaseUrl ( *PQURL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setImportPathList ( const QStringList & paths )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_SETIMPORTPATHLIST )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISARRAY(1) )
    {
      obj->setImportPathList ( PQSTRINGLIST(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setNetworkAccessManagerFactory ( QDeclarativeNetworkAccessManagerFactory * factory )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_SETNETWORKACCESSMANAGERFACTORY )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDECLARATIVENETWORKACCESSMANAGERFACTORY(1) )
    {
      QDeclarativeNetworkAccessManagerFactory * par1 = (QDeclarativeNetworkAccessManagerFactory *) _qt5xhb_itemGetPtr(1);
      obj->setNetworkAccessManagerFactory ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOfflineStoragePath ( const QString & dir )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_SETOFFLINESTORAGEPATH )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setOfflineStoragePath ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOutputWarningsToStandardError ( bool enabled )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_SETOUTPUTWARNINGSTOSTANDARDERROR )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setOutputWarningsToStandardError ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPluginPathList ( const QStringList & paths )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_SETPLUGINPATHLIST )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISARRAY(1) )
    {
      obj->setPluginPathList ( PQSTRINGLIST(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QDeclarativeContext * contextForObject ( const QObject * object )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_CONTEXTFOROBJECT )
{
  if( ISQOBJECT(1) )
  {
    const QObject * par1 = (const QObject *) _qt5xhb_itemGetPtr(1);
    QDeclarativeContext * ptr = QDeclarativeEngine::contextForObject ( par1 );
    _qt5xhb_createReturnClass ( ptr, "QDECLARATIVECONTEXT" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static ObjectOwnership objectOwnership ( QObject * object )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_OBJECTOWNERSHIP )
{
  if( ISQOBJECT(1) )
  {
    hb_retni( QDeclarativeEngine::objectOwnership ( PQOBJECT(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void setContextForObject ( QObject * object, QDeclarativeContext * context )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_SETCONTEXTFOROBJECT )
{
  if( ISQOBJECT(1) && ISQDECLARATIVECONTEXT(2) )
  {
    QDeclarativeEngine::setContextForObject ( PQOBJECT(1), PQDECLARATIVECONTEXT(2) );
    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void setObjectOwnership ( QObject * object, ObjectOwnership ownership )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_SETOBJECTOWNERSHIP )
{
  if( ISQOBJECT(1) && ISNUM(2) )
  {
    QDeclarativeEngine::setObjectOwnership ( PQOBJECT(1), (QDeclarativeEngine::ObjectOwnership) hb_parni(2) );
    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP