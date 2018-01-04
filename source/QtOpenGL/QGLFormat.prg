/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QGLFormat

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD accum
   METHOD accumBufferSize
   METHOD alpha
   METHOD alphaBufferSize
   METHOD blueBufferSize
   METHOD depth
   METHOD depthBufferSize
   METHOD directRendering
   METHOD doubleBuffer
   METHOD greenBufferSize
   METHOD hasOverlay
   METHOD majorVersion
   METHOD minorVersion
   METHOD plane
   METHOD profile
   METHOD redBufferSize
   METHOD rgba
   METHOD sampleBuffers
   METHOD samples
   METHOD setAccum
   METHOD setAccumBufferSize
   METHOD setAlpha
   METHOD setAlphaBufferSize
   METHOD setBlueBufferSize
   METHOD setDepth
   METHOD setDepthBufferSize
   METHOD setDirectRendering
   METHOD setDoubleBuffer
   METHOD setGreenBufferSize
   METHOD setOption
   METHOD setOverlay
   METHOD setPlane
   METHOD setProfile
   METHOD setRedBufferSize
   METHOD setRgba
   METHOD setSampleBuffers
   METHOD setSamples
   METHOD setStencil
   METHOD setStencilBufferSize
   METHOD setStereo
   METHOD setSwapInterval
   METHOD setVersion
   METHOD stencil
   METHOD stencilBufferSize
   METHOD stereo
   METHOD swapInterval
   METHOD testOption
   METHOD defaultFormat
   METHOD defaultOverlayFormat
   METHOD hasOpenGL
   METHOD hasOpenGLOverlays
   METHOD openGLVersionFlags
   METHOD setDefaultFormat
   METHOD setDefaultOverlayFormat

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGLFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGLFormat>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGLFormat>
#endif

/*
QGLFormat ()
*/
HB_FUNC_STATIC( QGLFORMAT_NEW1 )
{
  QGLFormat * o = new QGLFormat ();
  _qt5xhb_returnNewObject( o, false );
}

/*
QGLFormat ( QGL::FormatOptions options, int plane = 0 )
*/
HB_FUNC_STATIC( QGLFORMAT_NEW2 )
{
  int par1 = hb_parni(1);
  QGLFormat * o = new QGLFormat ( (QGL::FormatOptions) par1, OPINT(2,0) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QGLFormat ( const QGLFormat & other )
*/
HB_FUNC_STATIC( QGLFORMAT_NEW3 )
{
  QGLFormat * o = new QGLFormat ( *PQGLFORMAT(1) );
  _qt5xhb_returnNewObject( o, false );
}


//[1]QGLFormat ()
//[2]QGLFormat ( QGL::FormatOptions options, int plane = 0 )
//[3]QGLFormat ( const QGLFormat & other )

HB_FUNC_STATIC( QGLFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGLFORMAT_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QGLFORMAT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQGLFORMAT(1) )
  {
    HB_FUNC_EXEC( QGLFORMAT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGLFORMAT_DELETE )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool accum () const
*/
HB_FUNC_STATIC( QGLFORMAT_ACCUM )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->accum () );
  }
}


/*
int accumBufferSize () const
*/
HB_FUNC_STATIC( QGLFORMAT_ACCUMBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->accumBufferSize () );
  }
}


/*
bool alpha () const
*/
HB_FUNC_STATIC( QGLFORMAT_ALPHA )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->alpha () );
  }
}


/*
int alphaBufferSize () const
*/
HB_FUNC_STATIC( QGLFORMAT_ALPHABUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->alphaBufferSize () );
  }
}


/*
int blueBufferSize () const
*/
HB_FUNC_STATIC( QGLFORMAT_BLUEBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->blueBufferSize () );
  }
}


/*
bool depth () const
*/
HB_FUNC_STATIC( QGLFORMAT_DEPTH )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->depth () );
  }
}


/*
int depthBufferSize () const
*/
HB_FUNC_STATIC( QGLFORMAT_DEPTHBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->depthBufferSize () );
  }
}


/*
bool directRendering () const
*/
HB_FUNC_STATIC( QGLFORMAT_DIRECTRENDERING )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->directRendering () );
  }
}


/*
bool doubleBuffer () const
*/
HB_FUNC_STATIC( QGLFORMAT_DOUBLEBUFFER )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->doubleBuffer () );
  }
}


/*
int greenBufferSize () const
*/
HB_FUNC_STATIC( QGLFORMAT_GREENBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->greenBufferSize () );
  }
}


/*
bool hasOverlay () const
*/
HB_FUNC_STATIC( QGLFORMAT_HASOVERLAY )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->hasOverlay () );
  }
}


/*
int majorVersion () const
*/
HB_FUNC_STATIC( QGLFORMAT_MAJORVERSION )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->majorVersion () );
  }
}


/*
int minorVersion () const
*/
HB_FUNC_STATIC( QGLFORMAT_MINORVERSION )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->minorVersion () );
  }
}


/*
int plane () const
*/
HB_FUNC_STATIC( QGLFORMAT_PLANE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->plane () );
  }
}


/*
OpenGLContextProfile profile () const
*/
HB_FUNC_STATIC( QGLFORMAT_PROFILE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->profile () );
  }
}


/*
int redBufferSize () const
*/
HB_FUNC_STATIC( QGLFORMAT_REDBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->redBufferSize () );
  }
}


/*
bool rgba () const
*/
HB_FUNC_STATIC( QGLFORMAT_RGBA )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->rgba () );
  }
}


/*
bool sampleBuffers () const
*/
HB_FUNC_STATIC( QGLFORMAT_SAMPLEBUFFERS )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->sampleBuffers () );
  }
}


/*
int samples () const
*/
HB_FUNC_STATIC( QGLFORMAT_SAMPLES )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->samples () );
  }
}


/*
void setAccum ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETACCUM )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAccum ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAccumBufferSize ( int size )
*/
HB_FUNC_STATIC( QGLFORMAT_SETACCUMBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAccumBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAlpha ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETALPHA )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAlpha ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAlphaBufferSize ( int size )
*/
HB_FUNC_STATIC( QGLFORMAT_SETALPHABUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAlphaBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBlueBufferSize ( int size )
*/
HB_FUNC_STATIC( QGLFORMAT_SETBLUEBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBlueBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDepth ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETDEPTH )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDepth ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDepthBufferSize ( int size )
*/
HB_FUNC_STATIC( QGLFORMAT_SETDEPTHBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDepthBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDirectRendering ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETDIRECTRENDERING )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDirectRendering ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDoubleBuffer ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETDOUBLEBUFFER )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDoubleBuffer ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setGreenBufferSize ( int size )
*/
HB_FUNC_STATIC( QGLFORMAT_SETGREENBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setGreenBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOption ( QGL::FormatOptions opt )
*/
HB_FUNC_STATIC( QGLFORMAT_SETOPTION )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOption ( (QGL::FormatOptions) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOverlay ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETOVERLAY )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOverlay ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPlane ( int plane )
*/
HB_FUNC_STATIC( QGLFORMAT_SETPLANE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPlane ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setProfile ( OpenGLContextProfile profile )
*/
HB_FUNC_STATIC( QGLFORMAT_SETPROFILE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setProfile ( (QGLFormat::OpenGLContextProfile) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRedBufferSize ( int size )
*/
HB_FUNC_STATIC( QGLFORMAT_SETREDBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRedBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRgba ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETRGBA )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRgba ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSampleBuffers ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETSAMPLEBUFFERS )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSampleBuffers ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSamples ( int numSamples )
*/
HB_FUNC_STATIC( QGLFORMAT_SETSAMPLES )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSamples ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStencil ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETSTENCIL )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setStencil ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStencilBufferSize ( int size )
*/
HB_FUNC_STATIC( QGLFORMAT_SETSTENCILBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setStencilBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStereo ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETSTEREO )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setStereo ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSwapInterval ( int interval )
*/
HB_FUNC_STATIC( QGLFORMAT_SETSWAPINTERVAL )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSwapInterval ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVersion ( int major, int minor )
*/
HB_FUNC_STATIC( QGLFORMAT_SETVERSION )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVersion ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool stencil () const
*/
HB_FUNC_STATIC( QGLFORMAT_STENCIL )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->stencil () );
  }
}


/*
int stencilBufferSize () const
*/
HB_FUNC_STATIC( QGLFORMAT_STENCILBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->stencilBufferSize () );
  }
}


/*
bool stereo () const
*/
HB_FUNC_STATIC( QGLFORMAT_STEREO )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->stereo () );
  }
}


/*
int swapInterval () const
*/
HB_FUNC_STATIC( QGLFORMAT_SWAPINTERVAL )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->swapInterval () );
  }
}


/*
bool testOption ( QGL::FormatOptions opt ) const
*/
HB_FUNC_STATIC( QGLFORMAT_TESTOPTION )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    RBOOL( obj->testOption ( (QGL::FormatOptions) par1 ) );
  }
}


/*
static QGLFormat defaultFormat ()
*/
HB_FUNC_STATIC( QGLFORMAT_DEFAULTFORMAT )
{
  QGLFormat * ptr = new QGLFormat( QGLFormat::defaultFormat () );
  _qt5xhb_createReturnClass ( ptr, "QGLFORMAT" );
}


/*
static QGLFormat defaultOverlayFormat ()
*/
HB_FUNC_STATIC( QGLFORMAT_DEFAULTOVERLAYFORMAT )
{
  QGLFormat * ptr = new QGLFormat( QGLFormat::defaultOverlayFormat () );
  _qt5xhb_createReturnClass ( ptr, "QGLFORMAT" );
}


/*
static bool hasOpenGL ()
*/
HB_FUNC_STATIC( QGLFORMAT_HASOPENGL )
{
  RBOOL( QGLFormat::hasOpenGL () );
}


/*
static bool hasOpenGLOverlays ()
*/
HB_FUNC_STATIC( QGLFORMAT_HASOPENGLOVERLAYS )
{
  RBOOL( QGLFormat::hasOpenGLOverlays () );
}


/*
static OpenGLVersionFlags openGLVersionFlags ()
*/
HB_FUNC_STATIC( QGLFORMAT_OPENGLVERSIONFLAGS )
{
  hb_retni( QGLFormat::openGLVersionFlags () );
}


/*
static void setDefaultFormat ( const QGLFormat & f )
*/
HB_FUNC_STATIC( QGLFORMAT_SETDEFAULTFORMAT )
{
  QGLFormat::setDefaultFormat ( *PQGLFORMAT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setDefaultOverlayFormat ( const QGLFormat & f )
*/
HB_FUNC_STATIC( QGLFORMAT_SETDEFAULTOVERLAYFORMAT )
{
  QGLFormat::setDefaultOverlayFormat ( *PQGLFORMAT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QGLFORMAT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QGLFORMAT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QGLFORMAT_NEWFROM );
}

HB_FUNC_STATIC( QGLFORMAT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QGLFORMAT_NEWFROM );
}

HB_FUNC_STATIC( QGLFORMAT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QGLFORMAT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
