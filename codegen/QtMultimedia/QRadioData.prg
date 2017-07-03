/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIAOBJECT
#endif

CLASS QRadioData INHERIT QObject,QMediaBindableInterface

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD availability
   METHOD mediaObject
   METHOD stationId
   METHOD programType
   METHOD programTypeName
   METHOD stationName
   METHOD radioText
   METHOD isAlternativeFrequenciesEnabled
   METHOD error
   METHOD errorString
   METHOD setAlternativeFrequenciesEnabled

   METHOD onStationIdChanged
   METHOD onProgramTypeChanged
   METHOD onProgramTypeNameChanged
   METHOD onStationNameChanged
   METHOD onRadioTextChanged
   METHOD onAlternativeFrequenciesEnabledChanged
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QRadioData
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QRadioData>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QRadioData>
#endif

/*
QRadioData(QMediaObject *mediaObject, QObject *parent = 0)
*/
HB_FUNC_STATIC( QRADIODATA_NEW )
{
  QMediaObject * par1 = (QMediaObject *) _qt5xhb_itemGetPtr(1);
  QRadioData * o = new QRadioData ( par1, OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QRADIODATA_DELETE )
{
  QRadioData * obj = (QRadioData *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QMultimedia::AvailabilityStatus availability() const
*/
HB_FUNC_STATIC( QRADIODATA_AVAILABILITY )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->availability () );
  }
}


/*
QMediaObject *mediaObject() const
*/
HB_FUNC_STATIC( QRADIODATA_MEDIAOBJECT )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaObject * ptr = obj->mediaObject ();
    _qt5xhb_createReturnClass ( ptr, "QMEDIAOBJECT" );
  }
}


/*
QString stationId() const
*/
HB_FUNC_STATIC( QRADIODATA_STATIONID )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->stationId () );
  }
}


/*
ProgramType programType() const
*/
HB_FUNC_STATIC( QRADIODATA_PROGRAMTYPE )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->programType () );
  }
}


/*
QString programTypeName() const
*/
HB_FUNC_STATIC( QRADIODATA_PROGRAMTYPENAME )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->programTypeName () );
  }
}


/*
QString stationName() const
*/
HB_FUNC_STATIC( QRADIODATA_STATIONNAME )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->stationName () );
  }
}


/*
QString radioText() const
*/
HB_FUNC_STATIC( QRADIODATA_RADIOTEXT )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->radioText () );
  }
}


/*
bool isAlternativeFrequenciesEnabled() const
*/
HB_FUNC_STATIC( QRADIODATA_ISALTERNATIVEFREQUENCIESENABLED )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isAlternativeFrequenciesEnabled () );
  }
}


/*
Error error() const
*/
HB_FUNC_STATIC( QRADIODATA_ERROR )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error () );
  }
}


/*
QString errorString() const
*/
HB_FUNC_STATIC( QRADIODATA_ERRORSTRING )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->errorString () );
  }
}


/*
void setAlternativeFrequenciesEnabled(bool enabled)
*/
HB_FUNC_STATIC( QRADIODATA_SETALTERNATIVEFREQUENCIESENABLED )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAlternativeFrequenciesEnabled ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
