/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDESIGNERFORMEDITORINTERFACE
#endif

CLASS QDesignerObjectInspectorInterface INHERIT QWidget

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD core
   METHOD setFormWindow

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDesignerObjectInspectorInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDesignerObjectInspectorInterface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDesignerObjectInspectorInterface>
#endif

HB_FUNC_STATIC( QDESIGNEROBJECTINSPECTORINTERFACE_DELETE )
{
  QDesignerObjectInspectorInterface * obj = (QDesignerObjectInspectorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual QDesignerFormEditorInterface * core () const
*/
HB_FUNC_STATIC( QDESIGNEROBJECTINSPECTORINTERFACE_CORE )
{
  QDesignerObjectInspectorInterface * obj = (QDesignerObjectInspectorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDesignerFormEditorInterface * ptr = obj->core (  );
    _qt5xhb_createReturnClass ( ptr, "QDESIGNERFORMEDITORINTERFACE" );
  }
}

/*
virtual void setFormWindow ( QDesignerFormWindowInterface * formWindow ) = 0
*/
HB_FUNC_STATIC( QDESIGNEROBJECTINSPECTORINTERFACE_SETFORMWINDOW )
{
  QDesignerObjectInspectorInterface * obj = (QDesignerObjectInspectorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDESIGNERFORMWINDOWINTERFACE(1) )
    {
      QDesignerFormWindowInterface * par1 = (QDesignerFormWindowInterface *) _qt5xhb_itemGetPtr(1);
      obj->setFormWindow ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
