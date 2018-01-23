%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQAudioRecorder: public QObject
{
  Q_OBJECT
  public:
  SlotsQAudioRecorder(QObject *parent = 0);
  ~SlotsQAudioRecorder();
  public slots:
  void audioInputChanged(const QString & name);
  void availableAudioInputsChanged();
};