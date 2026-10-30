// TEMP stub (build/run verification only, see chat): minimal stand-in for the
// missing git submodule git@git.qt.io:sales-engineers/qtmqttmanager.git.
// Provides just the API surface App/main.cpp needs to build and run; it does
// not actually speak MQTT. Replace with the real submodule for real use.
#pragma once

#include <QObject>
#include <QUrl>
#include <QString>
#include <QVariant>

namespace QtMqttManager {

class BackendData : public QObject
{
    Q_OBJECT
public:
    explicit BackendData(QObject *parent = nullptr);

signals:
    void valueChanged(const QString &key, const QVariant &value);
};

class BackendServer : public QObject
{
    Q_OBJECT
public:
    explicit BackendServer(QObject *parent = nullptr);

    void setMqttHost(const QUrl &host);
    void setMqttRootTopic(const QString &topic);
    void setClientID(const QString &clientId);
    void setVersion(int version);

    BackendData *backend();

public slots:
    void connectToHost();
    void disconnectFromHost();

signals:
    void mqttConnected();
    void mqttDisconnected();

private:
    BackendData m_backend;
    QUrl m_host;
    QString m_topic;
    QString m_clientId;
    int m_version = 3;
};

} // namespace QtMqttManager
