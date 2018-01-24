%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQDBusServiceWatcher: public QObject
{
  Q_OBJECT
  public:
  SlotsQDBusServiceWatcher(QObject *parent = 0);
  ~SlotsQDBusServiceWatcher();
  public slots:
  void serviceRegistered(const QString &service);
  void serviceUnregistered(const QString &service);
  void serviceOwnerChanged(const QString &service, const QString &oldOwner, const QString &newOwner);
};