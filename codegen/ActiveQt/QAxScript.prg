$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QAXSCRIPTENGINE
#endif

CLASS QAxScript INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD call
   METHOD functions
   METHOD load
   METHOD scriptCode
   METHOD scriptEngine
   METHOD scriptName

   METHOD onEntered
   METHOD onError
   METHOD onFinished1
   METHOD onFinished2
   METHOD onFinished3
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAxScript
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

$includes

#include <QStringList>

/*
QAxScript ( const QString & name, QAxScriptManager * manager )
*/
HB_FUNC_STATIC( QAXSCRIPT_NEW )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISQAXSCRIPTMANAGER(2) )
  {
    QAxScript * o = new QAxScript ( PQSTRING(1), PQAXSCRIPTMANAGER(2) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QVariant call ( const QString & function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
*/
void QAxScript_call1 ()
{
  QAxScript * obj = (QAxScript *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant par2 = ISNIL(2)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(2);
    QVariant par3 = ISNIL(3)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(3);
    QVariant par4 = ISNIL(4)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(4);
    QVariant par5 = ISNIL(5)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(5);
    QVariant par6 = ISNIL(6)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(6);
    QVariant par7 = ISNIL(7)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(7);
    QVariant par8 = ISNIL(8)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(8);
    QVariant par9 = ISNIL(9)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(9);
    QVariant * ptr = new QVariant( obj->call ( PQSTRING(1), par2, par3, par4, par5, par6, par7, par8, par9 ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
QVariant call ( const QString & function, QList<QVariant> & arguments )
*/
void QAxScript_call2 ()
{
  QAxScript * obj = (QAxScript *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant * ptr = new QVariant( obj->call ( PQSTRING(1), PQVARIANTLIST(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

//[1]QVariant call ( const QString & function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
//[2]QVariant call ( const QString & function, QList<QVariant> & arguments )

HB_FUNC_STATIC( QAXSCRIPT_CALL )
{
  if( ISBETWEEN(1,9) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) && (ISQVARIANT(3)||ISNIL(3)) && (ISQVARIANT(4)||ISNIL(4)) && (ISQVARIANT(5)||ISNIL(5)) && (ISQVARIANT(6)||ISNIL(6)) && (ISQVARIANT(7)||ISNIL(7)) && (ISQVARIANT(8)||ISNIL(8)) && (ISQVARIANT(9)||ISNIL(9)) )
  {
    QAxScript_call1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QAxScript_call2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QStringList functions ( FunctionFlags flags = FunctionNames ) const
*/
HB_FUNC_STATIC( QAXSCRIPT_FUNCTIONS )
{
  QAxScript * obj = (QAxScript *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      int par1 = ISNIL(1)? (int) QAxScript::FunctionNames : hb_parni(1);
      RQSTRINGLIST( obj->functions ( (QAxScript::FunctionFlags) par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool load ( const QString & code, const QString & language = QString() )
*/
HB_FUNC_STATIC( QAXSCRIPT_LOAD )
{
  QAxScript * obj = (QAxScript *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISOPTCHAR(2) )
    {
      RBOOL( obj->load ( PQSTRING(1), OPQSTRING(2,QString()) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString scriptCode () const
*/
$method=|QString|scriptCode|

/*
QAxScriptEngine * scriptEngine () const
*/
HB_FUNC_STATIC( QAXSCRIPT_SCRIPTENGINE )
{
  QAxScript * obj = (QAxScript *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAxScriptEngine * ptr = obj->scriptEngine ();
    _qt5xhb_createReturnClass ( ptr, "QAXSCRIPTENGINE" );
  }
}

/*
QString scriptName () const
*/
$method=|QString|scriptName|

#pragma ENDDUMP