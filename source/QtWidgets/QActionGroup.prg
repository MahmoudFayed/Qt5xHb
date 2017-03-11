/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
#endif

CLASS QActionGroup INHERIT QObject

   DATA class_id INIT Class_Id_QActionGroup
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addAction1
   METHOD addAction2
   METHOD addAction3
   METHOD addAction
   METHOD checkedAction
   METHOD isEnabled
   METHOD isExclusive
   METHOD isVisible
   METHOD removeAction
   METHOD setDisabled
   METHOD setEnabled
   METHOD setExclusive
   METHOD setVisible
   METHOD onHovered
   METHOD onTriggered
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QActionGroup
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QActionGroup>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QActionGroup>
#endif

/*
QActionGroup ( QObject * parent )
*/
HB_FUNC_STATIC( QACTIONGROUP_NEW )
{
  QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
  QActionGroup * o = new QActionGroup ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QACTIONGROUP_DELETE )
{
  QActionGroup * obj = (QActionGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QAction * addAction ( QAction * action )
*/
HB_FUNC_STATIC( QACTIONGROUP_ADDACTION1 )
{
  QActionGroup * obj = (QActionGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * par1 = (QAction *) _qt5xhb_itemGetPtr(1);
    QAction * ptr = obj->addAction ( par1 );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QString & text )
*/
HB_FUNC_STATIC( QACTIONGROUP_ADDACTION2 )
{
  QActionGroup * obj = (QActionGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QAction * ptr = obj->addAction ( par1 );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QIcon & icon, const QString & text )
*/
HB_FUNC_STATIC( QACTIONGROUP_ADDACTION3 )
{
  QActionGroup * obj = (QActionGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
    QString par2 = QLatin1String( hb_parc(2) );
    QAction * ptr = obj->addAction ( par1, par2 );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}


//[1]QAction * addAction ( QAction * action )
//[2]QAction * addAction ( const QString & text )
//[3]QAction * addAction ( const QIcon & icon, const QString & text )

HB_FUNC_STATIC( QACTIONGROUP_ADDACTION )
{
  if( ISNUMPAR(1) && ISQACTION(1) )
  {
    HB_FUNC_EXEC( QACTIONGROUP_ADDACTION1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QACTIONGROUP_ADDACTION2 );
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QACTIONGROUP_ADDACTION3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAction * checkedAction () const
*/
HB_FUNC_STATIC( QACTIONGROUP_CHECKEDACTION )
{
  QActionGroup * obj = (QActionGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->checkedAction (  );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
bool isEnabled () const
*/
HB_FUNC_STATIC( QACTIONGROUP_ISENABLED )
{
  QActionGroup * obj = (QActionGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEnabled (  ) );
  }
}


/*
bool isExclusive () const
*/
HB_FUNC_STATIC( QACTIONGROUP_ISEXCLUSIVE )
{
  QActionGroup * obj = (QActionGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isExclusive (  ) );
  }
}


/*
bool isVisible () const
*/
HB_FUNC_STATIC( QACTIONGROUP_ISVISIBLE )
{
  QActionGroup * obj = (QActionGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isVisible (  ) );
  }
}


/*
void removeAction ( QAction * action )
*/
HB_FUNC_STATIC( QACTIONGROUP_REMOVEACTION )
{
  QActionGroup * obj = (QActionGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * par1 = (QAction *) _qt5xhb_itemGetPtr(1);
    obj->removeAction ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDisabled ( bool b )
*/
HB_FUNC_STATIC( QACTIONGROUP_SETDISABLED )
{
  QActionGroup * obj = (QActionGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDisabled ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEnabled ( bool )
*/
HB_FUNC_STATIC( QACTIONGROUP_SETENABLED )
{
  QActionGroup * obj = (QActionGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setEnabled ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setExclusive ( bool )
*/
HB_FUNC_STATIC( QACTIONGROUP_SETEXCLUSIVE )
{
  QActionGroup * obj = (QActionGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setExclusive ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVisible ( bool )
*/
HB_FUNC_STATIC( QACTIONGROUP_SETVISIBLE )
{
  QActionGroup * obj = (QActionGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVisible ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
