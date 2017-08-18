$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDOMATTR
REQUEST QDOMCDATASECTION
REQUEST QDOMCOMMENT
REQUEST QDOMDOCUMENTFRAGMENT
REQUEST QDOMELEMENT
REQUEST QDOMENTITYREFERENCE
REQUEST QDOMPROCESSINGINSTRUCTION
REQUEST QDOMTEXT
REQUEST QDOMDOCUMENTTYPE
REQUEST QDOMNODELIST
REQUEST QDOMIMPLEMENTATION
REQUEST QDOMNODE
REQUEST QBYTEARRAY
#endif

CLASS QDomDocument INHERIT QDomNode

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD createAttribute
   METHOD createAttributeNS
   METHOD createCDATASection
   METHOD createComment
   METHOD createDocumentFragment
   METHOD createElement
   METHOD createElementNS
   METHOD createEntityReference
   METHOD createProcessingInstruction
   METHOD createTextNode
   METHOD doctype
   METHOD documentElement
   METHOD elementById
   METHOD elementsByTagName
   METHOD elementsByTagNameNS
   METHOD implementation
   METHOD importNode
   METHOD nodeType
   METHOD setContent
   METHOD toByteArray
   METHOD toString

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QDomDocument ()
*/
$constructor=|new1|

/*
QDomDocument ( const QString & name )
*/
$constructor=|new2|const QString &

/*
QDomDocument ( const QDomDocumentType & doctype )
*/
$constructor=|new3|const QDomDocumentType &

/*
QDomDocument ( const QDomDocument & x )
*/
$constructor=|new4|const QDomDocument &

//[1]QDomDocument ()
//[2]QDomDocument ( const QString & name )
//[3]QDomDocument ( const QDomDocumentType & doctype )
//[4]QDomDocument ( const QDomDocument & x )

HB_FUNC_STATIC( QDOMDOCUMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMDOCUMENT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QDOMDOCUMENT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQDOMDOCUMENTTYPE(1) )
  {
    HB_FUNC_EXEC( QDOMDOCUMENT_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQDOMDOCUMENT(1) )
  {
    HB_FUNC_EXEC( QDOMDOCUMENT_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QDomAttr createAttribute ( const QString & name )
*/
$method=|QDomAttr|createAttribute|const QString &

/*
QDomAttr createAttributeNS ( const QString & nsURI, const QString & qName )
*/
$method=|QDomAttr|createAttributeNS|const QString &,const QString &

/*
QDomCDATASection createCDATASection ( const QString & value )
*/
$method=|QDomCDATASection|createCDATASection|const QString &

/*
QDomComment createComment ( const QString & value )
*/
$method=|QDomComment|createComment|const QString &

/*
QDomDocumentFragment createDocumentFragment ()
*/
$method=|QDomDocumentFragment|createDocumentFragment|

/*
QDomElement createElement ( const QString & tagName )
*/
$method=|QDomElement|createElement|const QString &

/*
QDomElement createElementNS ( const QString & nsURI, const QString & qName )
*/
$method=|QDomElement|createElementNS|const QString &,const QString &

/*
QDomEntityReference createEntityReference ( const QString & name )
*/
$method=|QDomEntityReference|createEntityReference|const QString &

/*
QDomProcessingInstruction createProcessingInstruction ( const QString & target, const QString & data )
*/
$method=|QDomProcessingInstruction|createProcessingInstruction|const QString &,const QString &

/*
QDomText createTextNode ( const QString & value )
*/
$method=|QDomText|createTextNode|const QString &

/*
QDomDocumentType doctype () const
*/
$method=|QDomDocumentType|doctype|

/*
QDomElement documentElement () const
*/
$method=|QDomElement|documentElement|

/*
QDomElement elementById ( const QString & elementId )
*/
$method=|QDomElement|elementById|const QString &

/*
QDomNodeList elementsByTagName ( const QString & tagname ) const
*/
$method=|QDomNodeList|elementsByTagName|const QString &

/*
QDomNodeList elementsByTagNameNS ( const QString & nsURI, const QString & localName )
*/
$method=|QDomNodeList|elementsByTagNameNS|const QString &,const QString &

/*
QDomImplementation implementation () const
*/
$method=|QDomImplementation|implementation|

/*
QDomNode importNode ( const QDomNode & importedNode, bool deep )
*/
$method=|QDomNode|importNode|const QDomNode &,bool

/*
QDomNode::NodeType nodeType () const
*/
$method=|QDomNode::NodeType|nodeType|

/*
bool setContent ( const QByteArray & data, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
*/
$method=|bool|setContent,setContent1|const QByteArray &,bool,QString *=0,int *=0,int *=0

/*
bool setContent ( const QString & text, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
*/
$method=|bool|setContent,setContent2|const QString &,bool,QString *=0,int *=0,int *=0

/*
bool setContent ( QIODevice * dev, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
*/
$method=|bool|setContent,setContent3|QIODevice *,bool,QString *=0,int *=0,int *=0

/*
bool setContent ( QXmlInputSource * source, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
*/
$method=|bool|setContent,setContent4|QXmlInputSource *,bool,QString *=0,int *=0,int *=0

/*
bool setContent ( const QString & text, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
*/
$method=|bool|setContent,setContent5|const QString &,QString *=0,int *=0,int *=0

/*
bool setContent ( const QByteArray & buffer, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
*/
$method=|bool|setContent,setContent6|const QByteArray &,QString *=0,int *=0,int *=0

/*
bool setContent ( QIODevice * dev, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
*/
$method=|bool|setContent,setContent7|QIODevice *,QString *=0,int *=0,int *=0

/*
bool setContent ( QXmlInputSource * source, QXmlReader * reader, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
*/
$method=|bool|setContent,setContent8|QXmlInputSource *,QXmlReader *,QString *=0,int *=0,int *=0

//[1]bool setContent ( const QByteArray & data, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[2]bool setContent ( const QString & text, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[3]bool setContent ( QIODevice * dev, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[4]bool setContent ( QXmlInputSource * source, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[5]bool setContent ( const QString & text, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[6]bool setContent ( const QByteArray & buffer, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[7]bool setContent ( QIODevice * dev, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[8]bool setContent ( QXmlInputSource * source, QXmlReader * reader, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )

%% TODO: implementar fun��o
HB_FUNC_STATIC( QDOMDOCUMENT_SETCONTENT )
{
}

/*
QByteArray toByteArray ( int indent = 1 ) const
*/
$method=|QByteArray|toByteArray|int=1

/*
QString toString ( int indent = 1 ) const
*/
$method=|QString|toString|int=1

#pragma ENDDUMP
