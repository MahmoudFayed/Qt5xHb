$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QSqlRelationalDelegate INHERIT QItemDelegate

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD createEditor
   METHOD setModelData

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QSqlRelationalDelegate(QObject *aParent = 0)
*/
HB_FUNC_STATIC( QSQLRELATIONALDELEGATE_NEW )
{
  QSqlRelationalDelegate * o = new QSqlRelationalDelegate ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QWidget *createEditor(QWidget *aParent, const QStyleOptionViewItem &option, const QModelIndex &index) const
*/
HB_FUNC_STATIC( QSQLRELATIONALDELEGATE_CREATEEDITOR )
{
  QSqlRelationalDelegate * obj = (QSqlRelationalDelegate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQWIDGET(1) && ISQSTYLEOPTIONVIEWITEM(2) && ISQMODELINDEX(3) )
    {
      QStyleOptionViewItem * par2 = (QStyleOptionViewItem *) _qt5xhb_itemGetPtr(2);
      QWidget * ptr = obj->createEditor ( PQWIDGET(1), *par2, *PQMODELINDEX(3) );
      _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setModelData(QWidget *editor, QAbstractItemModel *model, const QModelIndex &index) const
*/
HB_FUNC_STATIC( QSQLRELATIONALDELEGATE_SETMODELDATA )
{
  QSqlRelationalDelegate * obj = (QSqlRelationalDelegate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQWIDGET(1) && ISQABSTRACTITEMMODEL(2) && ISQMODELINDEX(3) )
    {
      obj->setModelData ( PQWIDGET(1), PQABSTRACTITEMMODEL(2), *PQMODELINDEX(3) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
