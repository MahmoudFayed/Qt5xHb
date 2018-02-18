%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QCandlestickModelMapper INHERIT QObject

   METHOD new
%%   METHOD delete

   METHOD model
   METHOD orientation
   METHOD series
   METHOD setModel
   METHOD setSeries

   METHOD onModelReplaced
   METHOD onSeriesReplaced

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,7,0

#include <QAbstractItemModel>
#include <QCandlestickSeries>

using namespace QtCharts;

$prototype=explicit QCandlestickModelMapper(QObject *parent = nullptr) (abstract)
%% $constructor=5,7,0|new|QObject *=nullptr

%% $deleteMethod

%%
%% Q_PROPERTY(QAbstractItemModel *model READ model WRITE setModel NOTIFY modelReplaced)
%%

$prototype=QAbstractItemModel *model() const
$method=5,7,0|QAbstractItemModel *|model|

$prototype=void setModel(QAbstractItemModel *model)
$method=5,7,0|void|setModel|QAbstractItemModel *

%%
%% Q_PROPERTY(QCandlestickSeries *series READ series WRITE setSeries NOTIFY seriesReplaced)
%%

$prototype=QCandlestickSeries *series() const
$method=5,7,0|QCandlestickSeries *|series|

$prototype=void setSeries(QCandlestickSeries *series)
$method=5,7,0|void|setSeries|QCandlestickSeries *

%%
%%
%%

$prototype=virtual Qt::Orientation orientation() const = 0
$virtualMethod=5,7,0|Qt::Orientation|orientation|

$prototype=void setTimestamp(int timestamp) (protected)

$prototype=int timestamp() const (protected)

$prototype=void setOpen(int open) (protected)

$prototype=int open() const (protected)

$prototype=void setHigh(int high) (protected)

$prototype=int high() const (protected)

$prototype=void setLow(int low) (protected)

$prototype=int low() const (protected)

$prototype=void setClose(int close) (protected)

$prototype=int close() const (protected)

$prototype=void setFirstSetSection(int firstSetSection) (protected)

$prototype=int firstSetSection() const (protected)

$prototype=void setLastSetSection(int lastSetSection) (protected)

$prototype=int lastSetSection() const (protected)

#pragma ENDDUMP
