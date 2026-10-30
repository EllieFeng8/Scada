#include "QtMqttManager.hpp"

#include <QLoggingCategory>
#include <QTimer>

Q_LOGGING_CATEGORY(lcMqttStub, "qtdemo.mqtt.stub")

namespace QtMqttManager {

BackendData::BackendData(QObject *parent) : QObject(parent)
{
}

BackendServer::BackendServer(QObject *parent) : QObject(parent), m_backend(this)
{
}

void BackendServer::setMqttHost(const QUrl &host)
{
    m_host = host;
}

void BackendServer::setMqttRootTopic(const QString &topic)
{
    m_topic = topic;
}

void BackendServer::setClientID(const QString &clientId)
{
    m_clientId = clientId;
}

void BackendServer::setVersion(int version)
{
    m_version = version;
}

BackendData *BackendServer::backend()
{
    return &m_backend;
}

void BackendServer::connectToHost()
{
    qCWarning(lcMqttStub) << "QtMqttManager stub active: not actually connecting to"
                          << m_host << "- real qtmqttmanager submodule is unavailable";
    QTimer::singleShot(0, this, &BackendServer::mqttConnected);
}

void BackendServer::disconnectFromHost()
{
    emit mqttDisconnected();
}

} // namespace QtMqttManager
