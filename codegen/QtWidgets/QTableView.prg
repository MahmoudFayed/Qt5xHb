/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QHEADERVIEW
REQUEST QMODELINDEX
#endif

CLASS QTableView INHERIT QAbstractItemView

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD clearSpans
   METHOD columnAt
   METHOD columnSpan
   METHOD columnViewportPosition
   METHOD columnWidth
   METHOD gridStyle
   METHOD horizontalHeader
   METHOD isColumnHidden
   METHOD isCornerButtonEnabled
   METHOD isRowHidden
   METHOD isSortingEnabled
   METHOD rowAt
   METHOD rowHeight
   METHOD rowSpan
   METHOD rowViewportPosition
   METHOD setColumnHidden
   METHOD setColumnWidth
   METHOD setCornerButtonEnabled
   METHOD setGridStyle
   METHOD setHorizontalHeader
   METHOD setRowHeight
   METHOD setRowHidden
   METHOD setSortingEnabled
   METHOD setSpan
   METHOD setVerticalHeader
   METHOD setWordWrap
   METHOD showGrid
   METHOD sortByColumn
   METHOD verticalHeader
   METHOD wordWrap
   METHOD indexAt
   METHOD setModel
   METHOD setRootIndex
   METHOD setSelectionModel
   METHOD hideColumn
   METHOD hideRow
   METHOD resizeColumnToContents
   METHOD resizeColumnsToContents
   METHOD resizeRowToContents
   METHOD resizeRowsToContents
   METHOD selectColumn
   METHOD selectRow
   METHOD setShowGrid
   METHOD showColumn
   METHOD showRow

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTableView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTableView>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTableView>
#endif

/*
QTableView ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QTABLEVIEW_NEW )
{
  QTableView * o = new QTableView ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

HB_FUNC_STATIC( QTABLEVIEW_DELETE )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void clearSpans ()
*/
HB_FUNC_STATIC( QTABLEVIEW_CLEARSPANS )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clearSpans ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int columnAt ( int x ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_COLUMNAT )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RINT( obj->columnAt ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int columnSpan ( int row, int column ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_COLUMNSPAN )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      RINT( obj->columnSpan ( PINT(1), PINT(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int columnViewportPosition ( int column ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_COLUMNVIEWPORTPOSITION )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RINT( obj->columnViewportPosition ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int columnWidth ( int column ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_COLUMNWIDTH )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RINT( obj->columnWidth ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::PenStyle gridStyle () const
*/
HB_FUNC_STATIC( QTABLEVIEW_GRIDSTYLE )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->gridStyle () );
  }
}

/*
QHeaderView * horizontalHeader () const
*/
HB_FUNC_STATIC( QTABLEVIEW_HORIZONTALHEADER )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QHeaderView * ptr = obj->horizontalHeader ();
    _qt5xhb_createReturnClass ( ptr, "QHEADERVIEW" );
  }
}

/*
bool isColumnHidden ( int column ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_ISCOLUMNHIDDEN )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->isColumnHidden ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isCornerButtonEnabled () const
*/
HB_FUNC_STATIC( QTABLEVIEW_ISCORNERBUTTONENABLED )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isCornerButtonEnabled () );
  }
}

/*
bool isRowHidden ( int row ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_ISROWHIDDEN )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->isRowHidden ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isSortingEnabled () const
*/
HB_FUNC_STATIC( QTABLEVIEW_ISSORTINGENABLED )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isSortingEnabled () );
  }
}

/*
int rowAt ( int y ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_ROWAT )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RINT( obj->rowAt ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int rowHeight ( int row ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_ROWHEIGHT )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RINT( obj->rowHeight ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int rowSpan ( int row, int column ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_ROWSPAN )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      RINT( obj->rowSpan ( PINT(1), PINT(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int rowViewportPosition ( int row ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_ROWVIEWPORTPOSITION )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RINT( obj->rowViewportPosition ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setColumnHidden ( int column, bool hide )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETCOLUMNHIDDEN )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISLOG(2) )
    {
      obj->setColumnHidden ( PINT(1), PBOOL(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setColumnWidth ( int column, int width )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETCOLUMNWIDTH )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->setColumnWidth ( PINT(1), PINT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCornerButtonEnabled ( bool enable )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETCORNERBUTTONENABLED )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setCornerButtonEnabled ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setGridStyle ( Qt::PenStyle style )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETGRIDSTYLE )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setGridStyle ( (Qt::PenStyle) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHorizontalHeader ( QHeaderView * header )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETHORIZONTALHEADER )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQHEADERVIEW(1) )
    {
      obj->setHorizontalHeader ( PQHEADERVIEW(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRowHeight ( int row, int height )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETROWHEIGHT )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->setRowHeight ( PINT(1), PINT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRowHidden ( int row, bool hide )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETROWHIDDEN )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISLOG(2) )
    {
      obj->setRowHidden ( PINT(1), PBOOL(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSortingEnabled ( bool enable )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETSORTINGENABLED )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setSortingEnabled ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSpan ( int row, int column, int rowSpanCount, int columnSpanCount )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETSPAN )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
    {
      obj->setSpan ( PINT(1), PINT(2), PINT(3), PINT(4) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVerticalHeader ( QHeaderView * header )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETVERTICALHEADER )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQHEADERVIEW(1) )
    {
      obj->setVerticalHeader ( PQHEADERVIEW(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWordWrap ( bool on )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETWORDWRAP )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setWordWrap ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool showGrid () const
*/
HB_FUNC_STATIC( QTABLEVIEW_SHOWGRID )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->showGrid () );
  }
}

/*
void sortByColumn ( int column, Qt::SortOrder order )
*/
HB_FUNC_STATIC( QTABLEVIEW_SORTBYCOLUMN )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->sortByColumn ( PINT(1), (Qt::SortOrder) hb_parni(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QHeaderView * verticalHeader () const
*/
HB_FUNC_STATIC( QTABLEVIEW_VERTICALHEADER )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QHeaderView * ptr = obj->verticalHeader ();
    _qt5xhb_createReturnClass ( ptr, "QHEADERVIEW" );
  }
}

/*
bool wordWrap () const
*/
HB_FUNC_STATIC( QTABLEVIEW_WORDWRAP )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->wordWrap () );
  }
}

/*
virtual QModelIndex indexAt ( const QPoint & pos ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_INDEXAT )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOINT(1) )
    {
      QModelIndex * ptr = new QModelIndex( obj->indexAt ( *PQPOINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void setModel ( QAbstractItemModel * model )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETMODEL )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTITEMMODEL(1) )
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
virtual void setRootIndex ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETROOTINDEX )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQMODELINDEX(1) )
    {
      obj->setRootIndex ( *PQMODELINDEX(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setSelectionModel ( QItemSelectionModel * selectionModel )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETSELECTIONMODEL )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQITEMSELECTIONMODEL(1) )
    {
      obj->setSelectionModel ( PQITEMSELECTIONMODEL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void hideColumn ( int column )
*/
HB_FUNC_STATIC( QTABLEVIEW_HIDECOLUMN )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->hideColumn ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void hideRow ( int row )
*/
HB_FUNC_STATIC( QTABLEVIEW_HIDEROW )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->hideRow ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void resizeColumnToContents ( int column )
*/
HB_FUNC_STATIC( QTABLEVIEW_RESIZECOLUMNTOCONTENTS )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->resizeColumnToContents ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void resizeColumnsToContents ()
*/
HB_FUNC_STATIC( QTABLEVIEW_RESIZECOLUMNSTOCONTENTS )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->resizeColumnsToContents ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void resizeRowToContents ( int row )
*/
HB_FUNC_STATIC( QTABLEVIEW_RESIZEROWTOCONTENTS )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->resizeRowToContents ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void resizeRowsToContents ()
*/
HB_FUNC_STATIC( QTABLEVIEW_RESIZEROWSTOCONTENTS )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->resizeRowsToContents ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void selectColumn ( int column )
*/
HB_FUNC_STATIC( QTABLEVIEW_SELECTCOLUMN )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->selectColumn ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void selectRow ( int row )
*/
HB_FUNC_STATIC( QTABLEVIEW_SELECTROW )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->selectRow ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setShowGrid ( bool show )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETSHOWGRID )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setShowGrid ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void showColumn ( int column )
*/
HB_FUNC_STATIC( QTABLEVIEW_SHOWCOLUMN )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->showColumn ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void showRow ( int row )
*/
HB_FUNC_STATIC( QTABLEVIEW_SHOWROW )
{
  QTableView * obj = (QTableView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->showRow ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP