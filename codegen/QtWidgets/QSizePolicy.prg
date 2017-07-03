/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QSizePolicy

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD controlType
   METHOD expandingDirections
   METHOD hasHeightForWidth
   METHOD hasWidthForHeight
   METHOD horizontalPolicy
   METHOD horizontalStretch
   METHOD setControlType
   METHOD setHeightForWidth
   METHOD setHorizontalPolicy
   METHOD setHorizontalStretch
   METHOD setVerticalPolicy
   METHOD setVerticalStretch
   METHOD setWidthForHeight
   METHOD transpose
   METHOD verticalPolicy
   METHOD verticalStretch

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSizePolicy
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSizePolicy>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSizePolicy>
#endif

/*
QSizePolicy()
*/
void QSizePolicy_new1 ()
{
  QSizePolicy * o = new QSizePolicy ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QSizePolicy(Policy horizontal, Policy vertical, ControlType type = DefaultType)
*/
void QSizePolicy_new2 ()
{
  int par3 = ISNIL(3)? (int) QSizePolicy::DefaultType : hb_parni(3);
  QSizePolicy * o = new QSizePolicy ( (QSizePolicy::Policy) hb_parni(1), (QSizePolicy::Policy) hb_parni(2), (QSizePolicy::ControlType) par3 );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QSizePolicy()
//[2]QSizePolicy(Policy horizontal, Policy vertical, ControlType type = DefaultType)

HB_FUNC_STATIC( QSIZEPOLICY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSizePolicy_new1();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QSizePolicy_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSIZEPOLICY_DELETE )
{
  QSizePolicy * obj = (QSizePolicy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
ControlType controlType() const
*/
HB_FUNC_STATIC( QSIZEPOLICY_CONTROLTYPE )
{
  QSizePolicy * obj = (QSizePolicy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->controlType () );
  }
}

/*
Qt::Orientations expandingDirections() const
*/
HB_FUNC_STATIC( QSIZEPOLICY_EXPANDINGDIRECTIONS )
{
  QSizePolicy * obj = (QSizePolicy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->expandingDirections () );
  }
}

/*
bool hasHeightForWidth() const
*/
HB_FUNC_STATIC( QSIZEPOLICY_HASHEIGHTFORWIDTH )
{
  QSizePolicy * obj = (QSizePolicy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->hasHeightForWidth () );
  }
}

/*
bool hasWidthForHeight() const
*/
HB_FUNC_STATIC( QSIZEPOLICY_HASWIDTHFORHEIGHT )
{
  QSizePolicy * obj = (QSizePolicy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->hasWidthForHeight () );
  }
}

/*
Policy horizontalPolicy() const
*/
HB_FUNC_STATIC( QSIZEPOLICY_HORIZONTALPOLICY )
{
  QSizePolicy * obj = (QSizePolicy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->horizontalPolicy () );
  }
}

/*
int horizontalStretch() const
*/
HB_FUNC_STATIC( QSIZEPOLICY_HORIZONTALSTRETCH )
{
  QSizePolicy * obj = (QSizePolicy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->horizontalStretch () );
  }
}

/*
void setControlType(ControlType type)
*/
HB_FUNC_STATIC( QSIZEPOLICY_SETCONTROLTYPE )
{
  QSizePolicy * obj = (QSizePolicy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setControlType ( (QSizePolicy::ControlType) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHeightForWidth(bool dependent)
*/
HB_FUNC_STATIC( QSIZEPOLICY_SETHEIGHTFORWIDTH )
{
  QSizePolicy * obj = (QSizePolicy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setHeightForWidth ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHorizontalPolicy(Policy policy)
*/
HB_FUNC_STATIC( QSIZEPOLICY_SETHORIZONTALPOLICY )
{
  QSizePolicy * obj = (QSizePolicy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setHorizontalPolicy ( (QSizePolicy::Policy) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHorizontalStretch(int stretchFactor)
*/
HB_FUNC_STATIC( QSIZEPOLICY_SETHORIZONTALSTRETCH )
{
  QSizePolicy * obj = (QSizePolicy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setHorizontalStretch ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVerticalPolicy(Policy policy)
*/
HB_FUNC_STATIC( QSIZEPOLICY_SETVERTICALPOLICY )
{
  QSizePolicy * obj = (QSizePolicy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setVerticalPolicy ( (QSizePolicy::Policy) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVerticalStretch(int stretchFactor)
*/
HB_FUNC_STATIC( QSIZEPOLICY_SETVERTICALSTRETCH )
{
  QSizePolicy * obj = (QSizePolicy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setVerticalStretch ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWidthForHeight(bool dependent)
*/
HB_FUNC_STATIC( QSIZEPOLICY_SETWIDTHFORHEIGHT )
{
  QSizePolicy * obj = (QSizePolicy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setWidthForHeight ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void transpose()
*/
HB_FUNC_STATIC( QSIZEPOLICY_TRANSPOSE )
{
  QSizePolicy * obj = (QSizePolicy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->transpose ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Policy verticalPolicy() const
*/
HB_FUNC_STATIC( QSIZEPOLICY_VERTICALPOLICY )
{
  QSizePolicy * obj = (QSizePolicy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->verticalPolicy () );
  }
}

/*
int verticalStretch() const
*/
HB_FUNC_STATIC( QSIZEPOLICY_VERTICALSTRETCH )
{
  QSizePolicy * obj = (QSizePolicy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->verticalStretch () );
  }
}

HB_FUNC_STATIC( QSIZEPOLICY_NEWFROM )
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

HB_FUNC_STATIC( QSIZEPOLICY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSIZEPOLICY_NEWFROM );
}

HB_FUNC_STATIC( QSIZEPOLICY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSIZEPOLICY_NEWFROM );
}

HB_FUNC_STATIC( QSIZEPOLICY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSIZEPOLICY_SETSELFDESTRUCTION )
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