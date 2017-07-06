$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACCELEROMETERREADING
#endif

CLASS QAccelerometer INHERIT QSensor

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD accelerationMode
   METHOD setAccelerationMode
   METHOD reading

   METHOD onAccelerationModeChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

/*
QAccelerometer(QObject *parent = 0)
*/
HB_FUNC_STATIC( QACCELEROMETER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAccelerometer * o = new QAccelerometer ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

$deleteMethod=5,1,0

/*
AccelerationMode accelerationMode() const
*/
HB_FUNC_STATIC( QACCELEROMETER_ACCELERATIONMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAccelerometer * obj = (QAccelerometer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->accelerationMode () );
  }
#endif
}


/*
void setAccelerationMode(AccelerationMode accelerationMode)
*/
HB_FUNC_STATIC( QACCELEROMETER_SETACCELERATIONMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAccelerometer * obj = (QAccelerometer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAccelerationMode ( (QAccelerometer::AccelerationMode) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QAccelerometerReading *reading() const
*/
HB_FUNC_STATIC( QACCELEROMETER_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAccelerometer * obj = (QAccelerometer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccelerometerReading * ptr = obj->reading ();
    _qt5xhb_createReturnClass ( ptr, "QACCELEROMETERREADING" );
  }
#endif
}




#pragma ENDDUMP
