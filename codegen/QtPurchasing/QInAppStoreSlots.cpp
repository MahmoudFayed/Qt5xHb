%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|productRegistered( QInAppProduct * product )
$slot=|productUnknown( QInAppProduct::ProductType productType, const QString & identifier )
$slot=|transactionReady( QInAppTransaction * transaction )
$endSlotsClass
