/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QDomCDATASection INHERIT QDomText

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD nodeType

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDomCDATASection
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDomCDATASection>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDomCDATASection>
#endif

/*
QDomCDATASection ()
*/
HB_FUNC_STATIC( QDOMCDATASECTION_NEW1 )
{
  QDomCDATASection * o = new QDomCDATASection ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QDomCDATASection ( const QDomCDATASection & x )
*/
HB_FUNC_STATIC( QDOMCDATASECTION_NEW2 )
{
  QDomCDATASection * o = new QDomCDATASection ( *PQDOMCDATASECTION(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QDomCDATASection ()
//[2]QDomCDATASection ( const QDomCDATASection & x )

HB_FUNC_STATIC( QDOMCDATASECTION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMCDATASECTION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMCDATASECTION(1) )
  {
    HB_FUNC_EXEC( QDOMCDATASECTION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDOMCDATASECTION_DELETE )
{
  QDomCDATASection * obj = (QDomCDATASection *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QDomNode::NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMCDATASECTION_NODETYPE )
{
  QDomCDATASection * obj = (QDomCDATASection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->nodeType () );
  }
}



#pragma ENDDUMP
