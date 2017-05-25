/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtWebEngineVersion>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtWebEngineVersion>
#endif
#endif

HB_FUNC( QTWEBENGINE_VERSION_STR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  hb_retc( (const char *) QTWEBENGINE_VERSION_STR );
#else
  hb_retc( (const char *) "" );
#endif
}

HB_FUNC( QTWEBENGINE_VERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  hb_retni( QTWEBENGINE_VERSION );
#else
  hb_retni( 0 );
#endif
}