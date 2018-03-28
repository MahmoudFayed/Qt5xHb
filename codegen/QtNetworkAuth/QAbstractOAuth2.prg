%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

%% TODO: class guarded by #ifndef QT_NO_HTTP ... #endif // QT_NO_HTTP

#include "hbclass.ch"

CLASS QAbstractOAuth2 INHERIT QAbstractOAuth

%%   METHOD new
   METHOD delete

   METHOD clientIdentifierSharedKey
   METHOD createAuthenticatedUrl
   METHOD deleteResource
   METHOD expirationAt
   METHOD get
   METHOD head
   METHOD post
   METHOD put
   METHOD refreshToken
   METHOD responseType
   METHOD scope
   METHOD setClientIdentifierSharedKey
   METHOD setRefreshToken
   METHOD setScope
   METHOD setState
   METHOD setUserAgent
   METHOD state
   METHOD userAgent

%%   METHOD onAuthorizationCallbackReceived
   METHOD onClientIdentifierSharedKeyChanged
   METHOD onError
   METHOD onExpirationAtChanged
   METHOD onResponseTypeChanged
   METHOD onScopeChanged
   METHOD onStateChanged
   METHOD onUserAgentChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,10,0

$prototype=explicit QAbstractOAuth2(QObject *parent = nullptr) (abstract)
%% $internalConstructor=|new1|QObject *=nullptr

$prototype=explicit QAbstractOAuth2(QNetworkAccessManager *manager, QObject *parent = nullptr) (abstract)
%% $internalConstructor=|new2|QNetworkAccessManager *,QObject *=nullptr

$prototype=explicit QAbstractOAuth2(QAbstractOAuth2Private &, QObject *parent = nullptr) (protected)

%% //[1]explicit QAbstractOAuth2(QObject *parent = nullptr)
%% //[2]explicit QAbstractOAuth2(QNetworkAccessManager *manager, QObject *parent = nullptr)
%% //[3]explicit QAbstractOAuth2(QAbstractOAuth2Private &, QObject *parent = nullptr) (protected)

%% HB_FUNC_STATIC( QABSTRACTOAUTH2_NEW )
%% {
%%   if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
%%   {
%%     QAbstractOAuth2_new1();
%%   }
%%   else if( ISBETWEEN(1,2) && ISQNETWORKACCESSMANAGER(1) && (ISQOBJECT(2)||ISNIL(2)) )
%%   {
%%     QAbstractOAuth2_new2();
%%   }
%% }

$prototype=~QAbstractOAuth2()
$deleteMethod=5,10,0

%%
%% Q_PROPERTY(QString scope READ scope WRITE setScope NOTIFY scopeChanged)
%%

$prototype=QString scope() const
$method=5,10,0|QString|scope|

$prototype=void setScope(const QString &scope)
$method=5,10,0|void|setScope|const QString &

%%
%% Q_PROPERTY(QString userAgent READ userAgent WRITE setUserAgent NOTIFY userAgentChanged)
%%

$prototype=QString userAgent() const
$method=5,10,0|QString|userAgent|

$prototype=void setUserAgent(const QString &userAgent)
$method=5,10,0|void|setUserAgent|const QString &

%%
%% Q_PROPERTY(QString clientIdentifierSharedKey READ clientIdentifierSharedKey WRITE setClientIdentifierSharedKey NOTIFY clientIdentifierSharedKeyChanged)
%%

$prototype=QString clientIdentifierSharedKey() const
$method=5,10,0|QString|clientIdentifierSharedKey|

$prototype=void setClientIdentifierSharedKey(const QString &clientIdentifierSharedKey)
$method=5,10,0|void|setClientIdentifierSharedKey|const QString &

%%
%% Q_PROPERTY(QString state READ state WRITE setState NOTIFY stateChanged)
%%

$prototype=QString state() const
$method=5,10,0|QString|state|

$prototype=void setState(const QString &state)
$method=5,10,0|void|setState|const QString &

%%
%% Q_PROPERTY(QDateTime expiration READ expirationAt NOTIFY expirationAtChanged)
%%

$prototype=QDateTime expirationAt() const
$method=5,10,0|QDateTime|expirationAt|

%%
%%
%%

$prototype=Q_INVOKABLE virtual QUrl createAuthenticatedUrl(const QUrl &url, const QVariantMap &parameters = QVariantMap())
%% TODO: implementar QVariantMap

$prototype=Q_INVOKABLE QNetworkReply *head(const QUrl &url, const QVariantMap &parameters = QVariantMap()) override
%% TODO: implementar QVariantMap

$prototype=Q_INVOKABLE QNetworkReply *get(const QUrl &url, const QVariantMap &parameters = QVariantMap()) override
%% TODO: implementar QVariantMap

$prototype=Q_INVOKABLE QNetworkReply *post(const QUrl &url, const QVariantMap &parameters = QVariantMap()) override
%% TODO: implementar QVariantMap

$prototype=Q_INVOKABLE QNetworkReply *put(const QUrl &url, const QVariantMap &parameters = QVariantMap()) override
%% TODO: implementar QVariantMap

$prototype=Q_INVOKABLE QNetworkReply *deleteResource(const QUrl &url, const QVariantMap &parameters = QVariantMap()) override
%% TODO: implementar QVariantMap

$prototype=QString responseType() const
$method=5,10,0|QString|responseType|

$prototype=void setResponseType(const QString &responseType) (protected)

$prototype=QString refreshToken() const
$method=5,10,0|QString|refreshToken|

$prototype=void setRefreshToken(const QString &refreshToken)
$method=5,10,0|void|setRefreshToken|const QString &

$beginSignals
%% $signal=|authorizationCallbackReceived(QVariantMap)
$signal=5,10,0|clientIdentifierSharedKeyChanged(QString)
$signal=5,10,0|error(QString,QString,QUrl)
$signal=5,10,0|expirationAtChanged(QDateTime)
$signal=5,10,0|responseTypeChanged(QString)
$signal=5,10,0|scopeChanged(QString)
$signal=5,10,0|stateChanged(QString)
$signal=5,10,0|userAgentChanged(QString)
$endSignals

#pragma ENDDUMP
