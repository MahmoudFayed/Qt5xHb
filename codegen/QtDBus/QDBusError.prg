/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QDBusError

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD type
   METHOD name
   METHOD message
   METHOD isValid
   METHOD errorString

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDBusError
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDBusError>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDBusError>
#endif

/*
QDBusError()
*/
void QDBusError_new1 ()
{
  QDBusError * o = new QDBusError ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QDBusError(const DBusError *error)
*/
void QDBusError_new2 ()
{
  DBusError * par1 = (DBusError *) _qt5xhb_itemGetPtr(1);
  QDBusError * o = new QDBusError ( par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QDBusError(const QDBusMessage& msg)
*/
void QDBusError_new3 ()
{
  QDBusError * o = new QDBusError ( *PQDBUSMESSAGE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QDBusError(ErrorType error, const QString &message)
*/
void QDBusError_new4 ()
{
  QDBusError * o = new QDBusError ( (QDBusError::ErrorType) hb_parni(1), PQSTRING(2) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QDBusError(const QDBusError &other)
*/
void QDBusError_new5 ()
{
  QDBusError * o = new QDBusError ();
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QDBusError()
//[2]QDBusError(const DBusError *error)
//[3]QDBusError(const QDBusMessage& msg)
//[4]QDBusError(ErrorType error, const QString &message)
//[5]QDBusError(const QDBusError &other)

HB_FUNC_STATIC( QDBUSERROR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDBusError_new1();
  }
  //else if( ISNUMPAR(1) && ISDBUSERROR(1) )
  //{
  //  QDBusError_new2();
  //}
  else if( ISNUMPAR(1) && ISQDBUSMESSAGE(1) )
  {
    QDBusError_new3();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    QDBusError_new4();
  }
  else if( ISNUMPAR(1) && ISQDBUSERROR(1) )
  {
    QDBusError_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDBUSERROR_DELETE )
{
  QDBusError * obj = (QDBusError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
ErrorType type() const
*/
HB_FUNC_STATIC( QDBUSERROR_TYPE )
{
  QDBusError * obj = (QDBusError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->type () );
  }
}

/*
QString name() const
*/
HB_FUNC_STATIC( QDBUSERROR_NAME )
{
  QDBusError * obj = (QDBusError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->name () );
  }
}

/*
QString message() const
*/
HB_FUNC_STATIC( QDBUSERROR_MESSAGE )
{
  QDBusError * obj = (QDBusError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->message () );
  }
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QDBUSERROR_ISVALID )
{
  QDBusError * obj = (QDBusError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}

/*
static QString errorString(ErrorType error)
*/
HB_FUNC_STATIC( QDBUSERROR_ERRORSTRING )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    RQSTRING( QDBusError::errorString ( (QDBusError::ErrorType) hb_parni(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDBUSERROR_NEWFROM )
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

HB_FUNC_STATIC( QDBUSERROR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDBUSERROR_NEWFROM );
}

HB_FUNC_STATIC( QDBUSERROR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDBUSERROR_NEWFROM );
}

HB_FUNC_STATIC( QDBUSERROR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDBUSERROR_SETSELFDESTRUCTION )
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