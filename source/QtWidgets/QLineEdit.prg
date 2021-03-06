/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOMPLETER
REQUEST QMENU
REQUEST QSIZE
REQUEST QVALIDATOR
REQUEST QMARGINS
REQUEST QVARIANT
REQUEST QACTION
#endif

CLASS QLineEdit INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD alignment
   METHOD setAlignment
   METHOD backspace
   METHOD completer
   METHOD setCompleter
   METHOD createStandardContextMenu
   METHOD cursorBackward
   METHOD cursorForward
   METHOD cursorPosition
   METHOD setCursorPosition
   METHOD cursorPositionAt
   METHOD cursorWordBackward
   METHOD cursorWordForward
   METHOD del
   METHOD deselect
   METHOD displayText
   METHOD dragEnabled
   METHOD setDragEnabled
   METHOD echoMode
   METHOD setEchoMode
   METHOD end
   METHOD getTextMargins
   METHOD hasAcceptableInput
   METHOD hasSelectedText
   METHOD home
   METHOD inputMask
   METHOD setInputMask
   METHOD insert
   METHOD isModified
   METHOD setModified
   METHOD isReadOnly
   METHOD setReadOnly
   METHOD isRedoAvailable
   METHOD isUndoAvailable
   METHOD maxLength
   METHOD setMaxLength
   METHOD placeholderText
   METHOD setPlaceholderText
   METHOD minimumSizeHint
   METHOD selectedText
   METHOD selectionStart
   METHOD hasFrame
   METHOD setFrame
   METHOD setSelection
   METHOD setTextMargins
   METHOD setValidator
   METHOD validator
   METHOD sizeHint
   METHOD text
   METHOD setText
   METHOD textMargins
   METHOD event
   METHOD inputMethodQuery
   METHOD copy
   METHOD cut
   METHOD paste
   METHOD redo
   METHOD selectAll
   METHOD undo
   METHOD setCursorMoveStyle
   METHOD cursorMoveStyle
   METHOD clear
   METHOD addAction
   METHOD setClearButtonEnabled
   METHOD isClearButtonEnabled

   METHOD onCursorPositionChanged
   METHOD onEditingFinished
   METHOD onReturnPressed
   METHOD onSelectionChanged
   METHOD onTextChanged
   METHOD onTextEdited

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLineEdit
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QLineEdit>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QLineEdit>
#endif

#include <QVariant>
#include <QIcon>
#include <QCompleter>
#include <QValidator>
#include <QAction>
#include <QMenu>

/*
explicit QLineEdit ( QWidget * parent = 0 )
*/
void QLineEdit_new1 ()
{
  QLineEdit * o = new QLineEdit ( OPQWIDGET(1,0) );
  _qt5xhb_returnNewObject( o, false );
}

/*
explicit QLineEdit ( const QString & contents, QWidget * parent = 0 )
*/
void QLineEdit_new2 ()
{
  QLineEdit * o = new QLineEdit ( PQSTRING(1), OPQWIDGET(2,0) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]explicit QLineEdit ( QWidget * parent = 0 )
//[2]explicit QLineEdit ( const QString & contents, QWidget * parent = 0 )

HB_FUNC_STATIC( QLINEEDIT_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QLineEdit_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    QLineEdit_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QLINEEDIT_DELETE )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

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
Qt::Alignment alignment () const
*/
HB_FUNC_STATIC( QLINEEDIT_ALIGNMENT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->alignment () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setAlignment ( Qt::Alignment flag )
*/
HB_FUNC_STATIC( QLINEEDIT_SETALIGNMENT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setAlignment ( (Qt::Alignment) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void backspace ()
*/
HB_FUNC_STATIC( QLINEEDIT_BACKSPACE )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->backspace ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QCompleter * completer () const
*/
HB_FUNC_STATIC( QLINEEDIT_COMPLETER )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QCompleter * ptr = obj->completer ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QCOMPLETER" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setCompleter ( QCompleter * c )
*/
HB_FUNC_STATIC( QLINEEDIT_SETCOMPLETER )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQCOMPLETER(1) )
    {
      obj->setCompleter ( PQCOMPLETER(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QMenu * createStandardContextMenu ()
*/
HB_FUNC_STATIC( QLINEEDIT_CREATESTANDARDCONTEXTMENU )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QMenu * ptr = obj->createStandardContextMenu ();
      _qt5xhb_createReturnQWidgetClass ( ptr, "QMENU" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void cursorBackward ( bool mark, int steps = 1 )
*/
HB_FUNC_STATIC( QLINEEDIT_CURSORBACKWARD )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISLOG(1) && ISOPTNUM(2) )
    {
      obj->cursorBackward ( PBOOL(1), OPINT(2,1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void cursorForward ( bool mark, int steps = 1 )
*/
HB_FUNC_STATIC( QLINEEDIT_CURSORFORWARD )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISLOG(1) && ISOPTNUM(2) )
    {
      obj->cursorForward ( PBOOL(1), OPINT(2,1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int cursorPosition () const
*/
HB_FUNC_STATIC( QLINEEDIT_CURSORPOSITION )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->cursorPosition () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setCursorPosition ( int )
*/
HB_FUNC_STATIC( QLINEEDIT_SETCURSORPOSITION )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setCursorPosition ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int cursorPositionAt ( const QPoint & pos )
*/
HB_FUNC_STATIC( QLINEEDIT_CURSORPOSITIONAT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
      RINT( obj->cursorPositionAt ( *PQPOINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void cursorWordBackward ( bool mark )
*/
HB_FUNC_STATIC( QLINEEDIT_CURSORWORDBACKWARD )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->cursorWordBackward ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void cursorWordForward ( bool mark )
*/
HB_FUNC_STATIC( QLINEEDIT_CURSORWORDFORWARD )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->cursorWordForward ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void del ()
*/
HB_FUNC_STATIC( QLINEEDIT_DEL )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->del ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void deselect ()
*/
HB_FUNC_STATIC( QLINEEDIT_DESELECT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->deselect ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString displayText () const
*/
HB_FUNC_STATIC( QLINEEDIT_DISPLAYTEXT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->displayText () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool dragEnabled () const
*/
HB_FUNC_STATIC( QLINEEDIT_DRAGENABLED )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->dragEnabled () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setDragEnabled ( bool b )
*/
HB_FUNC_STATIC( QLINEEDIT_SETDRAGENABLED )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setDragEnabled ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
EchoMode echoMode () const
*/
HB_FUNC_STATIC( QLINEEDIT_ECHOMODE )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->echoMode () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setEchoMode ( EchoMode )
*/
HB_FUNC_STATIC( QLINEEDIT_SETECHOMODE )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setEchoMode ( (QLineEdit::EchoMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void end ( bool mark )
*/
HB_FUNC_STATIC( QLINEEDIT_END )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->end ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void getTextMargins ( int * left, int * top, int * right, int * bottom ) const
*/
HB_FUNC_STATIC( QLINEEDIT_GETTEXTMARGINS )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
    {
      int par1;
int par2;
int par3;
int par4;
      obj->getTextMargins ( &par1, &par2, &par3, &par4 );
      hb_storni( par1, 1 );
hb_storni( par2, 2 );
hb_storni( par3, 3 );
hb_storni( par4, 4 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool hasAcceptableInput () const
*/
HB_FUNC_STATIC( QLINEEDIT_HASACCEPTABLEINPUT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->hasAcceptableInput () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool hasSelectedText () const
*/
HB_FUNC_STATIC( QLINEEDIT_HASSELECTEDTEXT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->hasSelectedText () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void home ( bool mark )
*/
HB_FUNC_STATIC( QLINEEDIT_HOME )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->home ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString inputMask () const
*/
HB_FUNC_STATIC( QLINEEDIT_INPUTMASK )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->inputMask () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setInputMask ( const QString & inputMask )
*/
HB_FUNC_STATIC( QLINEEDIT_SETINPUTMASK )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setInputMask ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insert ( const QString & newText )
*/
HB_FUNC_STATIC( QLINEEDIT_INSERT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->insert ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isModified () const
*/
HB_FUNC_STATIC( QLINEEDIT_ISMODIFIED )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isModified () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setModified ( bool )
*/
HB_FUNC_STATIC( QLINEEDIT_SETMODIFIED )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setModified ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isReadOnly () const
*/
HB_FUNC_STATIC( QLINEEDIT_ISREADONLY )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isReadOnly () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setReadOnly ( bool )
*/
HB_FUNC_STATIC( QLINEEDIT_SETREADONLY )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setReadOnly ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isRedoAvailable () const
*/
HB_FUNC_STATIC( QLINEEDIT_ISREDOAVAILABLE )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isRedoAvailable () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isUndoAvailable () const
*/
HB_FUNC_STATIC( QLINEEDIT_ISUNDOAVAILABLE )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isUndoAvailable () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int maxLength () const
*/
HB_FUNC_STATIC( QLINEEDIT_MAXLENGTH )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->maxLength () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setMaxLength ( int )
*/
HB_FUNC_STATIC( QLINEEDIT_SETMAXLENGTH )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setMaxLength ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString placeholderText () const
*/
HB_FUNC_STATIC( QLINEEDIT_PLACEHOLDERTEXT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->placeholderText () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setPlaceholderText ( const QString & )
*/
HB_FUNC_STATIC( QLINEEDIT_SETPLACEHOLDERTEXT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setPlaceholderText ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QLINEEDIT_MINIMUMSIZEHINT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->minimumSizeHint () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString selectedText () const
*/
HB_FUNC_STATIC( QLINEEDIT_SELECTEDTEXT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->selectedText () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int selectionStart () const
*/
HB_FUNC_STATIC( QLINEEDIT_SELECTIONSTART )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->selectionStart () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool hasFrame () const
*/
HB_FUNC_STATIC( QLINEEDIT_HASFRAME )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->hasFrame () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setFrame ( bool )
*/
HB_FUNC_STATIC( QLINEEDIT_SETFRAME )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setFrame ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSelection ( int start, int length )
*/
HB_FUNC_STATIC( QLINEEDIT_SETSELECTION )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
      obj->setSelection ( PINT(1), PINT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextMargins ( int left, int top, int right, int bottom )
*/
void QLineEdit_setTextMargins1 ()
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setTextMargins ( PINT(1), PINT(2), PINT(3), PINT(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextMargins ( const QMargins & margins )
*/
void QLineEdit_setTextMargins2 ()
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setTextMargins ( *PQMARGINS(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setTextMargins ( int left, int top, int right, int bottom )
//[2]void setTextMargins ( const QMargins & margins )

HB_FUNC_STATIC( QLINEEDIT_SETTEXTMARGINS )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QLineEdit_setTextMargins1();
  }
  else if( ISNUMPAR(1) && ISQMARGINS(1) )
  {
    QLineEdit_setTextMargins2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setValidator ( const QValidator * v )
*/
HB_FUNC_STATIC( QLINEEDIT_SETVALIDATOR )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && (ISQVALIDATOR(1)||ISNIL(1)) )
    {
      obj->setValidator ( OPQVALIDATOR(1,0) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
const QValidator * validator () const
*/
HB_FUNC_STATIC( QLINEEDIT_VALIDATOR )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      const QValidator * ptr = obj->validator ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QVALIDATOR" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSize sizeHint () const
*/
HB_FUNC_STATIC( QLINEEDIT_SIZEHINT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->sizeHint () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString text () const
*/
HB_FUNC_STATIC( QLINEEDIT_TEXT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->text () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setText ( const QString & )
*/
HB_FUNC_STATIC( QLINEEDIT_SETTEXT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setText ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QMargins textMargins () const
*/
HB_FUNC_STATIC( QLINEEDIT_TEXTMARGINS )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QMargins * ptr = new QMargins( obj->textMargins () );
      _qt5xhb_createReturnClass ( ptr, "QMARGINS", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool event ( QEvent * e )
*/
HB_FUNC_STATIC( QLINEEDIT_EVENT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQEVENT(1) )
    {
      RBOOL( obj->event ( PQEVENT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QVariant inputMethodQuery ( Qt::InputMethodQuery property ) const
*/
HB_FUNC_STATIC( QLINEEDIT_INPUTMETHODQUERY )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QVariant * ptr = new QVariant( obj->inputMethodQuery ( (Qt::InputMethodQuery) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void copy () const
*/
HB_FUNC_STATIC( QLINEEDIT_COPY )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->copy ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void cut ()
*/
HB_FUNC_STATIC( QLINEEDIT_CUT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->cut ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void paste ()
*/
HB_FUNC_STATIC( QLINEEDIT_PASTE )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->paste ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void redo ()
*/
HB_FUNC_STATIC( QLINEEDIT_REDO )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->redo ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void selectAll ()
*/
HB_FUNC_STATIC( QLINEEDIT_SELECTALL )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->selectAll ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void undo ()
*/
HB_FUNC_STATIC( QLINEEDIT_UNDO )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->undo ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCursorMoveStyle(Qt::CursorMoveStyle style)
*/
HB_FUNC_STATIC( QLINEEDIT_SETCURSORMOVESTYLE )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setCursorMoveStyle ( (Qt::CursorMoveStyle) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::CursorMoveStyle cursorMoveStyle() const
*/
HB_FUNC_STATIC( QLINEEDIT_CURSORMOVESTYLE )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->cursorMoveStyle () );
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
HB_FUNC_STATIC( QLINEEDIT_CLEAR )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

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
void addAction(QAction *action, ActionPosition position)
*/
void QLineEdit_addAction1 ()
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->addAction ( PQACTION(1), (QLineEdit::ActionPosition) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QAction * addAction(const QIcon &icon, ActionPosition position)
*/
void QLineEdit_addAction2 ()
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QAction * ptr = obj->addAction ( ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1)), (QLineEdit::ActionPosition) hb_parni(2) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QACTION" );
  }
}

//[1]void addAction(QAction *action, ActionPosition position)
//[2]QAction *addAction(const QIcon &icon, ActionPosition position)

HB_FUNC_STATIC( QLINEEDIT_ADDACTION )
{
  if( ISNUMPAR(2) && ISQACTION(1) && ISNUM(2) )
  {
    QLineEdit_addAction1();
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISNUM(2) )
  {
    QLineEdit_addAction2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setClearButtonEnabled(bool enable)
*/
HB_FUNC_STATIC( QLINEEDIT_SETCLEARBUTTONENABLED )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setClearButtonEnabled ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isClearButtonEnabled() const
*/
HB_FUNC_STATIC( QLINEEDIT_ISCLEARBUTTONENABLED )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isClearButtonEnabled () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

void QLineEditSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QLINEEDIT_ONCURSORPOSITIONCHANGED )
{
  QLineEditSlots_connect_signal( "cursorPositionChanged(int,int)", "cursorPositionChanged(int,int)" );
}

HB_FUNC_STATIC( QLINEEDIT_ONEDITINGFINISHED )
{
  QLineEditSlots_connect_signal( "editingFinished()", "editingFinished()" );
}

HB_FUNC_STATIC( QLINEEDIT_ONRETURNPRESSED )
{
  QLineEditSlots_connect_signal( "returnPressed()", "returnPressed()" );
}

HB_FUNC_STATIC( QLINEEDIT_ONSELECTIONCHANGED )
{
  QLineEditSlots_connect_signal( "selectionChanged()", "selectionChanged()" );
}

HB_FUNC_STATIC( QLINEEDIT_ONTEXTCHANGED )
{
  QLineEditSlots_connect_signal( "textChanged(QString)", "textChanged(QString)" );
}

HB_FUNC_STATIC( QLINEEDIT_ONTEXTEDITED )
{
  QLineEditSlots_connect_signal( "textEdited(QString)", "textEdited(QString)" );
}

#pragma ENDDUMP
