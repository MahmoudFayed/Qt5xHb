%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QSIZE
REQUEST QWIDGET
#endif

$beginClassFrom=QLayoutItem

   METHOD new
   METHOD delete
   METHOD controlTypes
   METHOD expandingDirections
   METHOD geometry
   METHOD hasHeightForWidth
   METHOD heightForWidth
   METHOD isEmpty
   METHOD maximumSize
   METHOD minimumSize
   METHOD setGeometry
   METHOD sizeHint
   METHOD widget

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QWidgetItem(QWidget * widget)
$constructor=|new|QWidget *

$deleteMethod

$prototype=virtual QSizePolicy::ControlTypes controlTypes() const
$virtualMethod=|QSizePolicy::ControlTypes|controlTypes|

$prototype=virtual Qt::Orientations expandingDirections() const
$virtualMethod=|Qt::Orientations|expandingDirections|

$prototype=virtual QRect geometry() const
$virtualMethod=|QRect|geometry|

$prototype=virtual bool hasHeightForWidth() const
$virtualMethod=|bool|hasHeightForWidth|

$prototype=virtual int heightForWidth(int w) const
$virtualMethod=|int|heightForWidth|int

$prototype=virtual bool isEmpty() const
$virtualMethod=|bool|isEmpty|

$prototype=virtual QSize maximumSize() const
$virtualMethod=|QSize|maximumSize|

$prototype=virtual QSize minimumSize() const
$virtualMethod=|QSize|minimumSize|

$prototype=virtual void setGeometry(const QRect & rect)
$virtualMethod=|void|setGeometry|const QRect &

$prototype=virtual QSize sizeHint() const
$virtualMethod=|QSize|sizeHint|

$prototype=virtual QWidget * widget()
$virtualMethod=|QWidget *|widget|

#pragma ENDDUMP
