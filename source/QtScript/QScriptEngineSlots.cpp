/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QScriptEngineSlots.h"


static SlotsQScriptEngine * s = NULL;

SlotsQScriptEngine::SlotsQScriptEngine(QObject *parent) : QObject(parent)
{
}

SlotsQScriptEngine::~SlotsQScriptEngine()
{
}

void SlotsQScriptEngine::signalHandlerException(const QScriptValue & exception)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "signalHandlerException(QScriptValue)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pexception = hb_itemPutPtr( NULL, (QScriptValue *) &exception );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pexception );
    hb_itemRelease( psender );
    hb_itemRelease( pexception );
  }
#endif
}

HB_FUNC( QSCRIPTENGINE_ONSIGNALHANDLEREXCEPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQScriptEngine(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "signalHandlerException(QScriptValue)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(signalHandlerException(QScriptValue)), s, SLOT(signalHandlerException(QScriptValue)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "signalHandlerException(QScriptValue)";
    ret = object->disconnect(object, SIGNAL(signalHandlerException(QScriptValue)), s, SLOT(signalHandlerException(QScriptValue)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
#else
  hb_retl(false);
#endif
}

