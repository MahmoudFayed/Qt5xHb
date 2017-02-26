/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QSGDynamicTexture INHERIT QSGTexture

   DATA class_id INIT Class_Id_QSGDynamicTexture
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD updateTexture
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSGDynamicTexture
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSGDynamicTexture>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSGDynamicTexture>
#endif
#endif


/*
virtual bool updateTexture() = 0
*/
HB_FUNC_STATIC( QSGDYNAMICTEXTURE_UPDATETEXTURE )
{
  QSGDynamicTexture * obj = (QSGDynamicTexture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->updateTexture (  ) );
  }
}



#pragma ENDDUMP
