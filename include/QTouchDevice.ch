/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QTOUCHDEVICE_CH
#define QTOUCHDEVICE_CH

/*
enum QTouchDevice::DeviceType
*/
#define QTouchDevice_TouchScreen                                     0
#define QTouchDevice_TouchPad                                        1

/*
enum QTouchDevice::CapabilityFlag
*/
#define QTouchDevice_Position                                        0x0001
#define QTouchDevice_Area                                            0x0002
#define QTouchDevice_Pressure                                        0x0004
#define QTouchDevice_Velocity                                        0x0008
#define QTouchDevice_RawPositions                                    0x0010
#define QTouchDevice_NormalizedPosition                              0x0020

#endif /* QTOUCHDEVICE_CH */
