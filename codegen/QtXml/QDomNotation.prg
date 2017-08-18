$header

#include "hbclass.ch"

CLASS QDomNotation INHERIT QDomNode

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD nodeType
   METHOD publicId
   METHOD systemId

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QDomNotation ()
*/
$constructor=|new1|

/*
QDomNotation ( const QDomNotation & x )
*/
$constructor=|new2|

//[1]QDomNotation ()
//[2]QDomNotation ( const QDomNotation & x )

HB_FUNC_STATIC( QDOMNOTATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMNOTATION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMNOTATION(1) )
  {
    HB_FUNC_EXEC( QDOMNOTATION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QDomNode::NodeType nodeType () const
*/
$method=|QDomNode::NodeType|nodeType|

/*
QString publicId () const
*/
$method=|QString|publicId|

/*
QString systemId () const
*/
$method=|QString|systemId|

#pragma ENDDUMP
