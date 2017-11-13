/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QMovieSlots.h"


static SlotsQMovie * s = NULL;

SlotsQMovie::SlotsQMovie(QObject *parent) : QObject(parent)
{
}

SlotsQMovie::~SlotsQMovie()
{
}

void SlotsQMovie::error ( QImageReader::ImageReaderError error )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QImageReader::ImageReaderError)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perror );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
}

void SlotsQMovie::finished ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQMovie::frameChanged ( int frameNumber )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "frameChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pframeNumber = hb_itemPutNI( NULL, frameNumber );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pframeNumber );
    hb_itemRelease( psender );
    hb_itemRelease( pframeNumber );
  }
}

void SlotsQMovie::resized ( const QSize & size )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "resized(QSize)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM psize = hb_itemPutPtr( NULL, (QSize *) &size );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psize );
    hb_itemRelease( psender );
    hb_itemRelease( psize );
  }
}

void SlotsQMovie::started ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "started()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQMovie::stateChanged ( QMovie::MovieState state )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(QMovie::MovieState)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstate = hb_itemPutNI( NULL, (int) state );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstate );
    hb_itemRelease( psender );
    hb_itemRelease( pstate );
  }
}

void SlotsQMovie::updated ( const QRect & rect )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "updated(QRect)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prect = hb_itemPutPtr( NULL, (QRect *) &rect );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, prect );
    hb_itemRelease( psender );
    hb_itemRelease( prect );
  }
}

HB_FUNC( QMOVIE_ONERROR )
{
  if( s == NULL )
  {
    s = new SlotsQMovie(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "error(QImageReader::ImageReaderError)", "error(QImageReader::ImageReaderError)" ) );

}

HB_FUNC( QMOVIE_ONFINISHED )
{
  if( s == NULL )
  {
    s = new SlotsQMovie(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "finished()", "finished()" ) );

}

HB_FUNC( QMOVIE_ONFRAMECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMovie(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "frameChanged(int)", "frameChanged(int)" ) );

}

HB_FUNC( QMOVIE_ONRESIZED )
{
  if( s == NULL )
  {
    s = new SlotsQMovie(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "resized(QSize)", "resized(QSize)" ) );

}

HB_FUNC( QMOVIE_ONSTARTED )
{
  if( s == NULL )
  {
    s = new SlotsQMovie(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "started()", "started()" ) );

}

HB_FUNC( QMOVIE_ONSTATECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMovie(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "stateChanged(QMovie::MovieState)", "stateChanged(QMovie::MovieState)" ) );

}

HB_FUNC( QMOVIE_ONUPDATED )
{
  if( s == NULL )
  {
    s = new SlotsQMovie(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "updated(QRect)", "updated(QRect)" ) );

}
