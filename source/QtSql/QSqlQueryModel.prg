/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSQLERROR
REQUEST QSQLQUERY
REQUEST QSQLRECORD
REQUEST QVARIANT
#endif

CLASS QSqlQueryModel INHERIT QAbstractTableModel

   METHOD new
   METHOD delete

   METHOD canFetchMore
   METHOD clear
   METHOD columnCount
   METHOD data
   METHOD fetchMore
   METHOD headerData
   METHOD insertColumns
   METHOD lastError
   METHOD query
   METHOD record
   METHOD removeColumns
   METHOD rowCount
   METHOD setHeaderData
   METHOD setQuery

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSqlQueryModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSqlQueryModel>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSqlQueryModel>
#endif

#include <QSqlError>
#include <QSqlQuery>
#include <QSqlRecord>

/*
explicit QSqlQueryModel ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QSqlQueryModel * o = new QSqlQueryModel ( OPQOBJECT(1,0) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSQLQUERYMODEL_DELETE )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual void clear ()
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_CLEAR )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->clear ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSqlError lastError () const
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_LASTERROR )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSqlError * ptr = new QSqlError( obj->lastError () );
      _qt5xhb_createReturnClass ( ptr, "QSQLERROR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSqlQuery query () const
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_QUERY )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSqlQuery * ptr = new QSqlQuery( obj->query () );
      _qt5xhb_createReturnClass ( ptr, "QSQLQUERY", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setQuery ( const QSqlQuery & query )
*/
void QSqlQueryModel_setQuery1 ()
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setQuery ( *PQSQLQUERY(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setQuery ( const QString & query, const QSqlDatabase & db = QSqlDatabase() )
*/
void QSqlQueryModel_setQuery2 ()
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setQuery ( PQSTRING(1), ISNIL(2)? QSqlDatabase() : *(QSqlDatabase *) _qt5xhb_itemGetPtr(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setQuery ( const QSqlQuery & query )
//[2]void setQuery ( const QString & query, const QSqlDatabase & db = QSqlDatabase() )

HB_FUNC_STATIC( QSQLQUERYMODEL_SETQUERY )
{
  if( ISNUMPAR(1) && ISQSQLQUERY(1) )
  {
    QSqlQueryModel_setQuery1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQSQLDATABASE(2)||ISNIL(2)) )
  {
    QSqlQueryModel_setQuery2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QSqlRecord record ( int row ) const
*/
void QSqlQueryModel_record1 ()
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QSqlRecord * ptr = new QSqlRecord( obj->record ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QSQLRECORD", true );
  }
}

/*
QSqlRecord record () const
*/
void QSqlQueryModel_record2 ()
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QSqlRecord * ptr = new QSqlRecord( obj->record () );
      _qt5xhb_createReturnClass ( ptr, "QSQLRECORD", true );
  }
}

//[1]QSqlRecord record ( int row ) const
//[2]QSqlRecord record () const

HB_FUNC_STATIC( QSQLQUERYMODEL_RECORD )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSqlQueryModel_record1();
  }
  else if( ISNUMPAR(0) )
  {
    QSqlQueryModel_record2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool canFetchMore ( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_CANFETCHMORE )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && (ISQMODELINDEX(1)||ISNIL(1)) )
    {
      RBOOL( obj->canFetchMore ( ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int columnCount ( const QModelIndex & index = QModelIndex() ) const
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_COLUMNCOUNT )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && (ISQMODELINDEX(1)||ISNIL(1)) )
    {
      RINT( obj->columnCount ( ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QVariant data ( const QModelIndex & item, int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_DATA )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISQMODELINDEX(1) && ISOPTNUM(2) )
    {
      QVariant * ptr = new QVariant( obj->data ( *PQMODELINDEX(1), OPINT(2,Qt::DisplayRole) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void fetchMore ( const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_FETCHMORE )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && (ISQMODELINDEX(1)||ISNIL(1)) )
    {
      obj->fetchMore ( ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QVariant headerData ( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_HEADERDATA )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && ISOPTNUM(3) )
    {
      QVariant * ptr = new QVariant( obj->headerData ( PINT(1), (Qt::Orientation) hb_parni(2), OPINT(3,Qt::DisplayRole) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool setHeaderData ( int section, Qt::Orientation orientation, const QVariant & value, int role = Qt::EditRole )
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_SETHEADERDATA )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISQVARIANT(3) && ISOPTNUM(4) )
    {
      RBOOL( obj->setHeaderData ( PINT(1), (Qt::Orientation) hb_parni(2), *PQVARIANT(3), OPINT(4,Qt::EditRole) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool insertColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_INSERTCOLUMNS )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
    {
      RBOOL( obj->insertColumns ( PINT(1), PINT(2), ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool removeColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_REMOVECOLUMNS )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
    {
      RBOOL( obj->removeColumns ( PINT(1), PINT(2), ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int rowCount ( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_ROWCOUNT )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && (ISQMODELINDEX(1)||ISNIL(1)) )
    {
      RINT( obj->rowCount ( ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
