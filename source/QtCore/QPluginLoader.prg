/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QPluginLoader INHERIT QObject

   METHOD new
   METHOD delete
   METHOD errorString
   METHOD fileName
   METHOD instance
   METHOD isLoaded
   METHOD load
   METHOD loadHints
   METHOD setFileName
   METHOD setLoadHints
   METHOD unload
   METHOD staticInstances

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPluginLoader
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QPluginLoader>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QPluginLoader>
#endif

/*
QPluginLoader ( QObject * parent = 0 )
*/
void QPluginLoader_new1 ()
{
  QPluginLoader * o = new QPluginLoader ( OPQOBJECT(1,0) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QPluginLoader ( const QString & fileName, QObject * parent = 0 )
*/
void QPluginLoader_new2 ()
{
  QPluginLoader * o = new QPluginLoader ( PQSTRING(1), OPQOBJECT(2,0) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]QPluginLoader ( QObject * parent = 0 )
//[2]QPluginLoader ( const QString & fileName, QObject * parent = 0 )

HB_FUNC_STATIC( QPLUGINLOADER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QPluginLoader_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQOBJECT(2) )
  {
    QPluginLoader_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPLUGINLOADER_DELETE )
{
  QPluginLoader * obj = (QPluginLoader *) _qt5xhb_itemGetPtrStackSelfItem();

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
QString errorString () const
*/
HB_FUNC_STATIC( QPLUGINLOADER_ERRORSTRING )
{
  QPluginLoader * obj = (QPluginLoader *) _qt5xhb_itemGetPtrStackSelfItem();

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
QString fileName () const
*/
HB_FUNC_STATIC( QPLUGINLOADER_FILENAME )
{
  QPluginLoader * obj = (QPluginLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->fileName () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QObject * instance ()
*/
HB_FUNC_STATIC( QPLUGINLOADER_INSTANCE )
{
  QPluginLoader * obj = (QPluginLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QObject * ptr = obj->instance ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isLoaded () const
*/
HB_FUNC_STATIC( QPLUGINLOADER_ISLOADED )
{
  QPluginLoader * obj = (QPluginLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isLoaded () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool load ()
*/
HB_FUNC_STATIC( QPLUGINLOADER_LOAD )
{
  QPluginLoader * obj = (QPluginLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->load () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QLibrary::LoadHints loadHints () const
*/
HB_FUNC_STATIC( QPLUGINLOADER_LOADHINTS )
{
  QPluginLoader * obj = (QPluginLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->loadHints () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setFileName ( const QString & fileName )
*/
HB_FUNC_STATIC( QPLUGINLOADER_SETFILENAME )
{
  QPluginLoader * obj = (QPluginLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setFileName ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLoadHints ( QLibrary::LoadHints loadHints )
*/
HB_FUNC_STATIC( QPLUGINLOADER_SETLOADHINTS )
{
  QPluginLoader * obj = (QPluginLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setLoadHints ( (QLibrary::LoadHints) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool unload ()
*/
HB_FUNC_STATIC( QPLUGINLOADER_UNLOAD )
{
  QPluginLoader * obj = (QPluginLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->unload () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QObjectList staticInstances ()
*/
HB_FUNC_STATIC( QPLUGINLOADER_STATICINSTANCES )
{
  QPluginLoader * obj = (QPluginLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QObjectList list = obj->staticInstances ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QOBJECT" );
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
          hb_itemPutPtr( pItem, (QObject *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QOBJECT", HB_ERR_ARGS_BASEPARAMS );
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

#pragma ENDDUMP
