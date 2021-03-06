/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QSessionManager INHERIT QObject

   METHOD sessionId
   METHOD sessionKey
   METHOD allowsInteraction
   METHOD allowsErrorInteraction
   METHOD release
   METHOD cancel
   METHOD setRestartHint
   METHOD restartHint
   METHOD setRestartCommand
   METHOD restartCommand
   METHOD setDiscardCommand
   METHOD discardCommand
   METHOD setManagerProperty
   METHOD isPhase2
   METHOD requestPhase2

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSessionManager
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSessionManager>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSessionManager>
#endif

/*
QString sessionId() const
*/
HB_FUNC_STATIC( QSESSIONMANAGER_SESSIONID )
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->sessionId () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString sessionKey() const
*/
HB_FUNC_STATIC( QSESSIONMANAGER_SESSIONKEY )
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->sessionKey () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool allowsInteraction()
*/
HB_FUNC_STATIC( QSESSIONMANAGER_ALLOWSINTERACTION )
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->allowsInteraction () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool allowsErrorInteraction()
*/
HB_FUNC_STATIC( QSESSIONMANAGER_ALLOWSERRORINTERACTION )
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->allowsErrorInteraction () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void release()
*/
HB_FUNC_STATIC( QSESSIONMANAGER_RELEASE )
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->release ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void cancel()
*/
HB_FUNC_STATIC( QSESSIONMANAGER_CANCEL )
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->cancel ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRestartHint(RestartHint)
*/
HB_FUNC_STATIC( QSESSIONMANAGER_SETRESTARTHINT )
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setRestartHint ( (QSessionManager::RestartHint) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
RestartHint restartHint() const
*/
HB_FUNC_STATIC( QSESSIONMANAGER_RESTARTHINT )
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->restartHint () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setRestartCommand(const QStringList&)
*/
HB_FUNC_STATIC( QSESSIONMANAGER_SETRESTARTCOMMAND )
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
      obj->setRestartCommand ( PQSTRINGLIST(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList restartCommand() const
*/
HB_FUNC_STATIC( QSESSIONMANAGER_RESTARTCOMMAND )
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->restartCommand () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setDiscardCommand(const QStringList&)
*/
HB_FUNC_STATIC( QSESSIONMANAGER_SETDISCARDCOMMAND )
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
      obj->setDiscardCommand ( PQSTRINGLIST(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList discardCommand() const
*/
HB_FUNC_STATIC( QSESSIONMANAGER_DISCARDCOMMAND )
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->discardCommand () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setManagerProperty(const QString& name, const QString& value)
*/
void QSessionManager_setManagerProperty1 ()
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setManagerProperty ( PQSTRING(1), PQSTRING(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setManagerProperty(const QString& name, const QStringList& value)
*/
void QSessionManager_setManagerProperty2 ()
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setManagerProperty ( PQSTRING(1), PQSTRINGLIST(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setManagerProperty(const QString& name, const QString& value)
//[2]void setManagerProperty(const QString& name, const QStringList& value)

HB_FUNC_STATIC( QSESSIONMANAGER_SETMANAGERPROPERTY )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QSessionManager_setManagerProperty1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QSessionManager_setManagerProperty2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isPhase2() const
*/
HB_FUNC_STATIC( QSESSIONMANAGER_ISPHASE2 )
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isPhase2 () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void requestPhase2()
*/
HB_FUNC_STATIC( QSESSIONMANAGER_REQUESTPHASE2 )
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->requestPhase2 ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
