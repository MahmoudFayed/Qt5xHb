/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTITEMMODEL
REQUEST QMODELINDEX
REQUEST QABSTRACTITEMVIEW
REQUEST QWIDGET
#endif

CLASS QCompleter INHERIT QObject

   METHOD new
   METHOD delete
   METHOD caseSensitivity
   METHOD completionColumn
   METHOD completionCount
   METHOD completionMode
   METHOD completionModel
   METHOD completionPrefix
   METHOD completionRole
   METHOD currentCompletion
   METHOD currentIndex
   METHOD currentRow
   METHOD maxVisibleItems
   METHOD model
   METHOD modelSorting
   METHOD pathFromIndex
   METHOD popup
   METHOD setCaseSensitivity
   METHOD setCompletionColumn
   METHOD setCompletionMode
   METHOD setCompletionRole
   METHOD setCurrentRow
   METHOD setMaxVisibleItems
   METHOD setModel
   METHOD setModelSorting
   METHOD setPopup
   METHOD setWidget
   METHOD splitPath
   METHOD widget
   METHOD wrapAround
   METHOD complete
   METHOD setCompletionPrefix
   METHOD setWrapAround
   METHOD setFilterMode
   METHOD filterMode

   METHOD onActivated1
   METHOD onActivated2
   METHOD onHighlighted1
   METHOD onHighlighted2

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCompleter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCompleter>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QCompleter>
#endif

#include <QStringList>

/*
QCompleter ( QObject * parent = 0 )
*/
void QCompleter_new1 ()
{
  QCompleter * o = new QCompleter ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QCompleter ( QAbstractItemModel * model, QObject * parent = 0 )
*/
void QCompleter_new2 ()
{
  QCompleter * o = new QCompleter ( PQABSTRACTITEMMODEL(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QCompleter ( const QStringList & list, QObject * parent = 0 )
*/
void QCompleter_new3 ()
{
#ifndef QT_NO_STRINGLISTMODEL
  QCompleter * o = new QCompleter ( PQSTRINGLIST(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

//[1]QCompleter ( QObject * parent = 0 )
//[2]QCompleter ( QAbstractItemModel * model, QObject * parent = 0 )
//[3]QCompleter ( const QStringList & list, QObject * parent = 0 )

HB_FUNC_STATIC( QCOMPLETER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QCompleter_new1();
  }
  else if( ISBETWEEN(1,2) && ISQABSTRACTITEMMODEL(1) && ISOPTQOBJECT(2) )
  {
    QCompleter_new2();
  }
#ifndef QT_NO_STRINGLISTMODEL
  else if( ISBETWEEN(1,2) && ISARRAY(1) && ISOPTQOBJECT(2) )
  {
    QCompleter_new3();
  }
#endif
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QCompleter()
*/
HB_FUNC_STATIC( QCOMPLETER_DELETE )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

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
Qt::CaseSensitivity caseSensitivity () const
*/
HB_FUNC_STATIC( QCOMPLETER_CASESENSITIVITY )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->caseSensitivity () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int completionColumn () const
*/
HB_FUNC_STATIC( QCOMPLETER_COMPLETIONCOLUMN )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->completionColumn () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int completionCount () const
*/
HB_FUNC_STATIC( QCOMPLETER_COMPLETIONCOUNT )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->completionCount () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
CompletionMode completionMode () const
*/
HB_FUNC_STATIC( QCOMPLETER_COMPLETIONMODE )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->completionMode () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAbstractItemModel * completionModel () const
*/
HB_FUNC_STATIC( QCOMPLETER_COMPLETIONMODEL )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAbstractItemModel * ptr = obj->completionModel ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QABSTRACTITEMMODEL" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString completionPrefix () const
*/
HB_FUNC_STATIC( QCOMPLETER_COMPLETIONPREFIX )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->completionPrefix () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int completionRole () const
*/
HB_FUNC_STATIC( QCOMPLETER_COMPLETIONROLE )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->completionRole () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString currentCompletion () const
*/
HB_FUNC_STATIC( QCOMPLETER_CURRENTCOMPLETION )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->currentCompletion () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QModelIndex currentIndex () const
*/
HB_FUNC_STATIC( QCOMPLETER_CURRENTINDEX )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QModelIndex * ptr = new QModelIndex( obj->currentIndex () );
      _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int currentRow () const
*/
HB_FUNC_STATIC( QCOMPLETER_CURRENTROW )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->currentRow () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int maxVisibleItems () const
*/
HB_FUNC_STATIC( QCOMPLETER_MAXVISIBLEITEMS )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->maxVisibleItems () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAbstractItemModel * model () const
*/
HB_FUNC_STATIC( QCOMPLETER_MODEL )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAbstractItemModel * ptr = obj->model ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QABSTRACTITEMMODEL" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
ModelSorting modelSorting () const
*/
HB_FUNC_STATIC( QCOMPLETER_MODELSORTING )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->modelSorting () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QString pathFromIndex ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QCOMPLETER_PATHFROMINDEX )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
      RQSTRING( obj->pathFromIndex ( *PQMODELINDEX(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAbstractItemView * popup () const
*/
HB_FUNC_STATIC( QCOMPLETER_POPUP )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAbstractItemView * ptr = obj->popup ();
      _qt5xhb_createReturnQWidgetClass ( (QWidget *) ptr, "QABSTRACTITEMVIEW" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setCaseSensitivity ( Qt::CaseSensitivity caseSensitivity )
*/
HB_FUNC_STATIC( QCOMPLETER_SETCASESENSITIVITY )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setCaseSensitivity ( (Qt::CaseSensitivity) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCompletionColumn ( int column )
*/
HB_FUNC_STATIC( QCOMPLETER_SETCOMPLETIONCOLUMN )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setCompletionColumn ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCompletionMode ( CompletionMode mode )
*/
HB_FUNC_STATIC( QCOMPLETER_SETCOMPLETIONMODE )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setCompletionMode ( (QCompleter::CompletionMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCompletionRole ( int role )
*/
HB_FUNC_STATIC( QCOMPLETER_SETCOMPLETIONROLE )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setCompletionRole ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool setCurrentRow ( int row )
*/
HB_FUNC_STATIC( QCOMPLETER_SETCURRENTROW )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RBOOL( obj->setCurrentRow ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setMaxVisibleItems ( int maxItems )
*/
HB_FUNC_STATIC( QCOMPLETER_SETMAXVISIBLEITEMS )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setMaxVisibleItems ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setModel ( QAbstractItemModel * model )
*/
HB_FUNC_STATIC( QCOMPLETER_SETMODEL )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1) )
    {
      obj->setModel ( PQABSTRACTITEMMODEL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setModelSorting ( ModelSorting sorting )
*/
HB_FUNC_STATIC( QCOMPLETER_SETMODELSORTING )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setModelSorting ( (QCompleter::ModelSorting) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPopup ( QAbstractItemView * popup )
*/
HB_FUNC_STATIC( QCOMPLETER_SETPOPUP )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQABSTRACTITEMVIEW(1) )
    {
      obj->setPopup ( PQABSTRACTITEMVIEW(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QCOMPLETER_SETWIDGET )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
      obj->setWidget ( PQWIDGET(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QStringList splitPath ( const QString & path ) const
*/
HB_FUNC_STATIC( QCOMPLETER_SPLITPATH )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RQSTRINGLIST( obj->splitPath ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QWidget * widget () const
*/
HB_FUNC_STATIC( QCOMPLETER_WIDGET )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QWidget * ptr = obj->widget ();
      _qt5xhb_createReturnQWidgetClass ( (QWidget *) ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool wrapAround () const
*/
HB_FUNC_STATIC( QCOMPLETER_WRAPAROUND )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->wrapAround () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void complete ( const QRect & rect = QRect() )
*/
HB_FUNC_STATIC( QCOMPLETER_COMPLETE )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && (ISQRECT(1)||ISNIL(1)) )
    {
      obj->complete ( ISNIL(1)? QRect() : *(QRect *) _qt5xhb_itemGetPtr(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCompletionPrefix ( const QString & prefix )
*/
HB_FUNC_STATIC( QCOMPLETER_SETCOMPLETIONPREFIX )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setCompletionPrefix ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWrapAround ( bool wrap )
*/
HB_FUNC_STATIC( QCOMPLETER_SETWRAPAROUND )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setWrapAround ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFilterMode(Qt::MatchFlags filterMode)
*/
HB_FUNC_STATIC( QCOMPLETER_SETFILTERMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setFilterMode ( (Qt::MatchFlags) hb_parni(1) );
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
Qt::MatchFlags filterMode() const
*/
HB_FUNC_STATIC( QCOMPLETER_FILTERMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->filterMode () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

#pragma ENDDUMP
