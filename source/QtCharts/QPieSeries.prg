/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QPieSeries INHERIT QAbstractSeries

   METHOD new
   METHOD delete

   METHOD append
   METHOD clear
   METHOD count
   METHOD holeSize
   METHOD horizontalPosition
   METHOD insert
   METHOD isEmpty
   METHOD pieEndAngle
   METHOD pieSize
   METHOD pieStartAngle
   METHOD remove
   METHOD setHoleSize
   METHOD setHorizontalPosition
   METHOD setLabelsPosition
   METHOD setLabelsVisible
   METHOD setPieEndAngle
   METHOD setPieSize
   METHOD setPieStartAngle
   METHOD setVerticalPosition
   METHOD slices
   METHOD sum
   METHOD take
   METHOD type
   METHOD verticalPosition

   METHOD onAdded
   METHOD onClicked
   METHOD onCountChanged
   METHOD onDoubleClicked
   METHOD onHovered
   METHOD onPressed
   METHOD onReleased
   METHOD onRemoved
   METHOD onSumChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPieSeries
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QPieSeries>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QPieSeries>
#endif

using namespace QtCharts;

/*
explicit QPieSeries(QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QPIESERIES_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QPieSeries * o = new QPieSeries ( OPQOBJECT(1,Q_NULLPTR) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~QPieSeries()
*/
HB_FUNC_STATIC( QPIESERIES_DELETE )
{
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

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
qreal horizontalPosition() const
*/
HB_FUNC_STATIC( QPIESERIES_HORIZONTALPOSITION )
{
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->horizontalPosition () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setHorizontalPosition(qreal relativePosition)
*/
HB_FUNC_STATIC( QPIESERIES_SETHORIZONTALPOSITION )
{
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setHorizontalPosition ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal verticalPosition() const
*/
HB_FUNC_STATIC( QPIESERIES_VERTICALPOSITION )
{
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->verticalPosition () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setVerticalPosition(qreal relativePosition)
*/
HB_FUNC_STATIC( QPIESERIES_SETVERTICALPOSITION )
{
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setVerticalPosition ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal pieSize() const
*/
HB_FUNC_STATIC( QPIESERIES_PIESIZE )
{
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->pieSize () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setPieSize(qreal relativeSize)
*/
HB_FUNC_STATIC( QPIESERIES_SETPIESIZE )
{
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setPieSize ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal pieStartAngle() const
*/
HB_FUNC_STATIC( QPIESERIES_PIESTARTANGLE )
{
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->pieStartAngle () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setPieStartAngle(qreal startAngle)
*/
HB_FUNC_STATIC( QPIESERIES_SETPIESTARTANGLE )
{
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setPieStartAngle ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal pieEndAngle() const
*/
HB_FUNC_STATIC( QPIESERIES_PIEENDANGLE )
{
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->pieEndAngle () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setPieEndAngle(qreal endAngle)
*/
HB_FUNC_STATIC( QPIESERIES_SETPIEENDANGLE )
{
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setPieEndAngle ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int count() const
*/
HB_FUNC_STATIC( QPIESERIES_COUNT )
{
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->count () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal sum() const
*/
HB_FUNC_STATIC( QPIESERIES_SUM )
{
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->sum () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal holeSize() const
*/
HB_FUNC_STATIC( QPIESERIES_HOLESIZE )
{
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->holeSize () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setHoleSize(qreal holeSize)
*/
HB_FUNC_STATIC( QPIESERIES_SETHOLESIZE )
{
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setHoleSize ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QAbstractSeries::SeriesType type() const
*/
HB_FUNC_STATIC( QPIESERIES_TYPE )
{
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->type () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool append(QPieSlice *slice)
*/
void QPieSeries_append1 ()
{
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RBOOL( obj->append ( PQPIESLICE(1) ) );
  }
}

/*
bool append(QList<QPieSlice *> slices)
*/
void QPieSeries_append2 ()
{
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
       QList<QPieSlice *> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
  par1 << (QPieSlice *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
      RBOOL( obj->append ( par1 ) );
  }
}

/*
QPieSlice *append(QString label, qreal value)
*/
void QPieSeries_append3 ()
{
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QPieSlice * ptr = obj->append ( PQSTRING(1), PQREAL(2) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QPIESLICE" );
  }
}

//[1]bool append(QPieSlice *slice)
//[2]bool append(QList<QPieSlice *> slices)
//[3]QPieSlice *append(QString label, qreal value)

HB_FUNC_STATIC( QPIESERIES_APPEND )
{
  if( ISNUMPAR(1) && ISQPIESLICE(1) )
  {
    QPieSeries_append1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QPieSeries_append2();
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISNUM(2) )
  {
    QPieSeries_append3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool insert(int index, QPieSlice *slice)
*/
HB_FUNC_STATIC( QPIESERIES_INSERT )
{
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISQPIESLICE(2) )
    {
      RBOOL( obj->insert ( PINT(1), PQPIESLICE(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool remove(QPieSlice *slice)
*/
HB_FUNC_STATIC( QPIESERIES_REMOVE )
{
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPIESLICE(1) )
    {
      RBOOL( obj->remove ( PQPIESLICE(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool take(QPieSlice *slice)
*/
HB_FUNC_STATIC( QPIESERIES_TAKE )
{
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPIESLICE(1) )
    {
      RBOOL( obj->take ( PQPIESLICE(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void clear()
*/
HB_FUNC_STATIC( QPIESERIES_CLEAR )
{
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

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
QList<QPieSlice *> slices() const
*/
HB_FUNC_STATIC( QPIESERIES_SLICES )
{
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<QPieSlice *> list = obj->slices ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QPIESLICE" );
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
          hb_itemPutPtr( pItem, (QPieSlice *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QPIESLICE", HB_ERR_ARGS_BASEPARAMS );
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

/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QPIESERIES_ISEMPTY )
{
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isEmpty () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setLabelsVisible(bool visible = true)
*/
HB_FUNC_STATIC( QPIESERIES_SETLABELSVISIBLE )
{
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
      obj->setLabelsVisible ( OPBOOL(1,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLabelsPosition(QPieSlice::LabelPosition position)
*/
HB_FUNC_STATIC( QPIESERIES_SETLABELSPOSITION )
{
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setLabelsPosition ( (QPieSlice::LabelPosition) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP