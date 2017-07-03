/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QSIZE
REQUEST QICON
REQUEST QTABBAR
#endif

CLASS QTabWidget INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addTab1
   METHOD addTab2
   METHOD addTab
   METHOD clear
   METHOD cornerWidget
   METHOD setCornerWidget
   METHOD count
   METHOD currentIndex
   METHOD setCurrentIndex
   METHOD currentWidget
   METHOD setCurrentWidget
   METHOD documentMode
   METHOD setDocumentMode
   METHOD elideMode
   METHOD setElideMode
   METHOD iconSize
   METHOD setIconSize
   METHOD indexOf
   METHOD insertTab1
   METHOD insertTab2
   METHOD insertTab
   METHOD isMovable
   METHOD setMovable
   METHOD isTabEnabled
   METHOD setTabEnabled
   METHOD removeTab
   METHOD tabIcon
   METHOD setTabIcon
   METHOD tabPosition
   METHOD setTabPosition
   METHOD tabShape
   METHOD setTabShape
   METHOD tabText
   METHOD setTabText
   METHOD tabToolTip
   METHOD setTabToolTip
   METHOD tabWhatsThis
   METHOD setTabWhatsThis
   METHOD usesScrollButtons
   METHOD setUsesScrollButtons
   METHOD tabsClosable
   METHOD setTabsClosable
   METHOD widget
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD heightForWidth
   METHOD hasHeightForWidth
   METHOD tabBarAutoHide
   METHOD setTabBarAutoHide
   METHOD tabBar

   METHOD onCurrentChanged
   METHOD onTabCloseRequested
   METHOD onTabBarClicked
   METHOD onTabBarDoubleClicked

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTabWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTabWidget>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTabWidget>
#endif

/*
explicit QTabWidget ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QTABWIDGET_NEW )
{
  QTabWidget * o = new QTabWidget ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QTABWIDGET_DELETE )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int addTab ( QWidget * page, const QString & label )
*/
HB_FUNC_STATIC( QTABWIDGET_ADDTAB1 )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->addTab ( PQWIDGET(1), PQSTRING(2) ) );
  }
}

/*
int addTab ( QWidget * page, const QIcon & icon, const QString & label )
*/
HB_FUNC_STATIC( QTABWIDGET_ADDTAB2 )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon par2 = ISOBJECT(2)? *(QIcon *) _qt5xhb_itemGetPtr(2) : QIcon(hb_parc(2));
    RINT( obj->addTab ( PQWIDGET(1), par2, PQSTRING(3) ) );
  }
}


//[1]int addTab ( QWidget * page, const QString & label )
//[2]int addTab ( QWidget * page, const QIcon & icon, const QString & label )

HB_FUNC_STATIC( QTABWIDGET_ADDTAB )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QTABWIDGET_ADDTAB1 );
  }
  else if( ISNUMPAR(3) && ISQWIDGET(1) && (ISQICON(2)||ISCHAR(2)) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QTABWIDGET_ADDTAB2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void clear ()
*/
HB_FUNC_STATIC( QTABWIDGET_CLEAR )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWidget * cornerWidget ( Qt::Corner corner = Qt::TopRightCorner ) const
*/
HB_FUNC_STATIC( QTABWIDGET_CORNERWIDGET )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) Qt::TopRightCorner : hb_parni(1);
    QWidget * ptr = obj->cornerWidget ( (Qt::Corner) par1 );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
void setCornerWidget ( QWidget * widget, Qt::Corner corner = Qt::TopRightCorner )
*/
HB_FUNC_STATIC( QTABWIDGET_SETCORNERWIDGET )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::TopRightCorner : hb_parni(2);
    obj->setCornerWidget ( PQWIDGET(1), (Qt::Corner) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int count () const
*/
HB_FUNC_STATIC( QTABWIDGET_COUNT )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->count () );
  }
}


/*
int currentIndex () const
*/
HB_FUNC_STATIC( QTABWIDGET_CURRENTINDEX )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->currentIndex () );
  }
}

/*
void setCurrentIndex ( int index )
*/
HB_FUNC_STATIC( QTABWIDGET_SETCURRENTINDEX )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setCurrentIndex ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWidget * currentWidget () const
*/
HB_FUNC_STATIC( QTABWIDGET_CURRENTWIDGET )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->currentWidget ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
void setCurrentWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QTABWIDGET_SETCURRENTWIDGET )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCurrentWidget ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool documentMode () const
*/
HB_FUNC_STATIC( QTABWIDGET_DOCUMENTMODE )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->documentMode () );
  }
}

/*
void setDocumentMode ( bool set )
*/
HB_FUNC_STATIC( QTABWIDGET_SETDOCUMENTMODE )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setDocumentMode ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::TextElideMode elideMode () const
*/
HB_FUNC_STATIC( QTABWIDGET_ELIDEMODE )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->elideMode () );
  }
}

/*
void setElideMode ( Qt::TextElideMode )
*/
HB_FUNC_STATIC( QTABWIDGET_SETELIDEMODE )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setElideMode ( (Qt::TextElideMode) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSize iconSize () const
*/
HB_FUNC_STATIC( QTABWIDGET_ICONSIZE )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->iconSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void setIconSize ( const QSize & size )
*/
HB_FUNC_STATIC( QTABWIDGET_SETICONSIZE )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setIconSize ( *PQSIZE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int indexOf ( QWidget * w ) const
*/
HB_FUNC_STATIC( QTABWIDGET_INDEXOF )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->indexOf ( PQWIDGET(1) ) );
  }
}


/*
int insertTab ( int index, QWidget * page, const QString & label )
*/
HB_FUNC_STATIC( QTABWIDGET_INSERTTAB1 )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->insertTab ( PINT(1), PQWIDGET(2), PQSTRING(3) ) );
  }
}

/*
int insertTab ( int index, QWidget * page, const QIcon & icon, const QString & label )
*/
HB_FUNC_STATIC( QTABWIDGET_INSERTTAB2 )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon par3 = ISOBJECT(3)? *(QIcon *) _qt5xhb_itemGetPtr(3) : QIcon(hb_parc(3));
    RINT( obj->insertTab ( PINT(1), PQWIDGET(2), par3, PQSTRING(4) ) );
  }
}


//[1]int insertTab ( int index, QWidget * page, const QString & label )
//[2]int insertTab ( int index, QWidget * page, const QIcon & icon, const QString & label )

HB_FUNC_STATIC( QTABWIDGET_INSERTTAB )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISQWIDGET(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QTABWIDGET_INSERTTAB1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISQWIDGET(2) && (ISQICON(3)||ISCHAR(3)) && ISCHAR(4) )
  {
    HB_FUNC_EXEC( QTABWIDGET_INSERTTAB2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isMovable () const
*/
HB_FUNC_STATIC( QTABWIDGET_ISMOVABLE )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isMovable () );
  }
}

/*
void setMovable ( bool movable )
*/
HB_FUNC_STATIC( QTABWIDGET_SETMOVABLE )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setMovable ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isTabEnabled ( int index ) const
*/
HB_FUNC_STATIC( QTABWIDGET_ISTABENABLED )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->isTabEnabled ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setTabEnabled ( int index, bool enable )
*/
HB_FUNC_STATIC( QTABWIDGET_SETTABENABLED )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) && ISLOG(2) )
    {
      obj->setTabEnabled ( PINT(1), PBOOL(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeTab ( int index )
*/
HB_FUNC_STATIC( QTABWIDGET_REMOVETAB )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->removeTab ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QIcon tabIcon ( int index ) const
*/
HB_FUNC_STATIC( QTABWIDGET_TABICON )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      QIcon * ptr = new QIcon( obj->tabIcon ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QICON", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setTabIcon ( int index, const QIcon & icon )
*/
HB_FUNC_STATIC( QTABWIDGET_SETTABICON )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon par2 = ISOBJECT(2)? *(QIcon *) _qt5xhb_itemGetPtr(2) : QIcon(hb_parc(2));
    obj->setTabIcon ( PINT(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
TabPosition tabPosition () const
*/
HB_FUNC_STATIC( QTABWIDGET_TABPOSITION )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->tabPosition () );
  }
}

/*
void setTabPosition ( TabPosition )
*/
HB_FUNC_STATIC( QTABWIDGET_SETTABPOSITION )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTabPosition ( (QTabWidget::TabPosition) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
TabShape tabShape () const
*/
HB_FUNC_STATIC( QTABWIDGET_TABSHAPE )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->tabShape () );
  }
}

/*
void setTabShape ( TabShape s )
*/
HB_FUNC_STATIC( QTABWIDGET_SETTABSHAPE )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTabShape ( (QTabWidget::TabShape) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString tabText ( int index ) const
*/
HB_FUNC_STATIC( QTABWIDGET_TABTEXT )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      RQSTRING( obj->tabText ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setTabText ( int index, const QString & label )
*/
HB_FUNC_STATIC( QTABWIDGET_SETTABTEXT )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTabText ( PINT(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString tabToolTip ( int index ) const
*/
HB_FUNC_STATIC( QTABWIDGET_TABTOOLTIP )
{
#ifndef QT_NO_TOOLTIP
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      RQSTRING( obj->tabToolTip ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setTabToolTip ( int index, const QString & tip )
*/
HB_FUNC_STATIC( QTABWIDGET_SETTABTOOLTIP )
{
#ifndef QT_NO_TOOLTIP
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTabToolTip ( PINT(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString tabWhatsThis ( int index ) const
*/
HB_FUNC_STATIC( QTABWIDGET_TABWHATSTHIS )
{
#ifndef QT_NO_WHATSTHIS
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      RQSTRING( obj->tabWhatsThis ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setTabWhatsThis ( int index, const QString & text )
*/
HB_FUNC_STATIC( QTABWIDGET_SETTABWHATSTHIS )
{
#ifndef QT_NO_WHATSTHIS
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTabWhatsThis ( PINT(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool usesScrollButtons () const
*/
HB_FUNC_STATIC( QTABWIDGET_USESSCROLLBUTTONS )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->usesScrollButtons () );
  }
}

/*
void setUsesScrollButtons ( bool useButtons )
*/
HB_FUNC_STATIC( QTABWIDGET_SETUSESSCROLLBUTTONS )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setUsesScrollButtons ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool tabsClosable () const
*/
HB_FUNC_STATIC( QTABWIDGET_TABSCLOSABLE )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->tabsClosable () );
  }
}

/*
void setTabsClosable ( bool closeable )
*/
HB_FUNC_STATIC( QTABWIDGET_SETTABSCLOSABLE )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setTabsClosable ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWidget * widget ( int index ) const
*/
HB_FUNC_STATIC( QTABWIDGET_WIDGET )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      QWidget * ptr = obj->widget ( PINT(1) );
      _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


/*
QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QTABWIDGET_MINIMUMSIZEHINT )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QSize sizeHint () const
*/
HB_FUNC_STATIC( QTABWIDGET_SIZEHINT )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
int heightForWidth(int width) const
*/
HB_FUNC_STATIC( QTABWIDGET_HEIGHTFORWIDTH )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->heightForWidth ( PINT(1) ) );
  }
}


/*
bool hasHeightForWidth() const
*/
HB_FUNC_STATIC( QTABWIDGET_HASHEIGHTFORWIDTH )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->hasHeightForWidth () );
  }
}


/*
bool tabBarAutoHide() const
*/
HB_FUNC_STATIC( QTABWIDGET_TABBARAUTOHIDE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->tabBarAutoHide () );
  }
#endif
}

/*
void setTabBarAutoHide(bool enabled)
*/
HB_FUNC_STATIC( QTABWIDGET_SETTABBARAUTOHIDE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTabBarAutoHide ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QTabBar* tabBar() const
*/
HB_FUNC_STATIC( QTABWIDGET_TABBAR )
{
  QTabWidget * obj = (QTabWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTabBar * ptr = obj->tabBar ();
    _qt5xhb_createReturnClass ( ptr, "QTABBAR" );
  }
}




#pragma ENDDUMP
