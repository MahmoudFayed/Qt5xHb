#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

# MOC flags
ifeq ($(MODULE_ACTIVEQT),yes)
   MOCFLAGS += -DQT_ACTIVEQT_LIB
endif
ifeq ($(MODULE_ACTIVEQT),yes)
   MOCFLAGS += -DQT_AXCONTAINER_LIB
endif
ifeq ($(MODULE_ACTIVEQT),yes)
   MOCFLAGS += -DQT_AXSERVER_LIB
endif
ifeq ($(MODULE_QTANDROIDEXTRAS),yes)
   MOCFLAGS += -DQT_ANDROIDEXTRAS_LIB
endif
ifeq ($(MODULE_QTBLUETOOTH),yes)
   MOCFLAGS += -DQT_BLUETOOTH_LIB
endif
ifeq ($(MODULE_QTCORE),yes)
   MOCFLAGS += -DQT_CORE_LIB
endif
ifeq ($(MODULE_QTDECLARATIVE),yes)
   MOCFLAGS += -DQT_DECLARATIVE_LIB
endif
ifeq ($(MODULE_QTDESIGNER),yes)
   MOCFLAGS += -DQT_DESIGNER_LIB
endif
ifeq ($(MODULE_QTGUI),yes)
   MOCFLAGS += -DQT_GUI_LIB
endif
ifeq ($(MODULE_QTHELP),yes)
   MOCFLAGS += -DQT_HELP_LIB
endif
ifeq ($(MODULE_QTLOCATION),yes)
   MOCFLAGS += -DQT_LOCATION_LIB
endif
ifeq ($(MODULE_QTMACEXTRAS),yes)
   MOCFLAGS += -DQT_MACEXTRAS_LIB
endif
ifeq ($(MODULE_QTMULTIMEDIA),yes)
   MOCFLAGS += -DQT_MULTIMEDIA_LIB
endif
ifeq ($(MODULE_QTMULTIMEDIAWIDGETS),yes)
   MOCFLAGS += -DQT_MULTIMEDIAWIDGETS_LIB
endif
ifeq ($(MODULE_QTNETWORK),yes)
   MOCFLAGS += -DQT_NETWORK_LIB
endif
ifeq ($(MODULE_QTOPENGL),yes)
   MOCFLAGS += -DQT_OPENGL_LIB
endif
ifeq ($(MODULE_QTPOSITIONING),yes)
   MOCFLAGS += -DQT_POSITIONING_LIB
endif
ifeq ($(MODULE_QTPRINTSUPPORT),yes)
   MOCFLAGS += -DQT_PRINTSUPPORT_LIB
endif
ifeq ($(MODULE_QTQML),yes)
   MOCFLAGS += -DQT_QML_LIB
endif
ifeq ($(MODULE_QTQUICK),yes)
   MOCFLAGS += -DQT_QUICK_LIB
endif
ifeq ($(MODULE_QTQUICKWIDGETS),yes)
   MOCFLAGS += -DQT_QUICKWIDGETS_LIB
endif
ifeq ($(MODULE_QTSCRIPT),yes)
   MOCFLAGS += -DQT_SCRIPT_LIB
endif
ifeq ($(MODULE_QTSCRIPTTOOLS),yes)
   MOCFLAGS += -DQT_SCRIPTTOOLS_LIB
endif
ifeq ($(MODULE_QTSENSORS),yes)
   MOCFLAGS += -DQT_SENSORS_LIB
endif
ifeq ($(MODULE_QTSERIALPORT),yes)
   MOCFLAGS += -DQT_SERIALPORT_LIB
endif
ifeq ($(MODULE_QTSQL),yes)
   MOCFLAGS += -DQT_SQL_LIB
endif
ifeq ($(MODULE_QTSVG),yes)
   MOCFLAGS += -DQT_SVG_LIB
endif
ifeq ($(MODULE_QTUITOOLS),yes)
   MOCFLAGS += -DQT_UITOOLS_LIB
endif
ifeq ($(MODULE_QTWEBKIT),yes)
   MOCFLAGS += -DQT_WEBKIT_LIB
endif
ifeq ($(MODULE_QTWEBKITWIDGETS),yes)
   MOCFLAGS += -DQT_WEBKITWIDGETS_LIB
endif
ifeq ($(MODULE_QTWEBSOCKETS),yes)
   MOCFLAGS += -DQT_WEBSOCKETS_LIB
endif
ifeq ($(MODULE_QTWIDGETS),yes)
   MOCFLAGS += -DQT_WIDGETS_LIB
endif
ifeq ($(MODULE_QTWINEXTRAS),yes)
   MOCFLAGS += -DQT_WINEXTRAS_LIB
endif
ifeq ($(MODULE_QTX11EXTRAS),yes)
   MOCFLAGS += -DQT_X11EXTRAS_LIB
endif
ifeq ($(MODULE_QTXML),yes)
   MOCFLAGS += -DQT_XML_LIB
endif
ifeq ($(MODULE_QTXMLPATTERNS),yes)
   MOCFLAGS += -DQT_XMLPATTERNS_LIB
endif
