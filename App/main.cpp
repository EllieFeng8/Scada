// Copyright (C) 2024 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

#include <QApplication>
#include <QQmlApplicationEngine>
#include <QCommandLineParser>
#include <QRandomGenerator>
#include <QLoggingCategory>

#include "autogen/environment.h"
#include "QtMqttManager.hpp"
#include "datamodel.h"

int main(int argc, char *argv[])
{
    set_qt_environment();
    QApplication app(argc, argv);
    QCommandLineParser parser;
    parser.setApplicationDescription(QCoreApplication::translate("main", "QtMqttManager test application"));
    parser.addHelpOption();
    parser.addVersionOption();

    // [2] An options {{{
    QCommandLineOption mqttBrokerUrlOption(QStringList() << "u" << "mqtt-broker" << "url",
                                           QCoreApplication::translate("ctxmain", "MQTT broker url"),
                                           QCoreApplication::translate("ctxmain", "url")
                                           );
    parser.addOption(mqttBrokerUrlOption);

    QCommandLineOption mqttBrokerMainTopic(QStringList() << "t" << "mqtt-topicr" << "topic",
                                           QCoreApplication::translate("ctxmain", "MQTT main topic"),
                                           QCoreApplication::translate("ctxmain", "topic"),
                                           "Workshop/Dashboard/"
                                           );
    parser.addOption(mqttBrokerMainTopic);

    QCommandLineOption mqttVersionOption(QStringList() << "m" << "mqtt-version",
                                         QStringLiteral("MQTT protocol version.\n3: MQTT 3.1\n4: MQTT 3.1.1"),
                                         "version", "3");
    parser.addOption(mqttVersionOption);
    // }}} [2]

    // Process the actual command line arguments given by the user
    parser.process(app);

    // [3] Get the values of the options {{{
    QString mqttBrokerUrlString = parser.value(mqttBrokerUrlOption);
    const QString versionString = parser.value(mqttVersionOption);
    const QString mainTopic = parser.value(mqttBrokerMainTopic);
    QUrl mqttBrokerUrl;
    int mqttVersion = versionString.toInt();

    if (mqttBrokerUrlString.isEmpty()) {
        // --mqtt-broker mqtt://user:password@hairdresser.cloudmqtt.com:15751
        // --mqtt-broker wss://user:password@hairdresser.cloudmqtt.com:35751
        // mqttBrokerUrlString = qEnvironmentVariable("QUICKMQTT_URL", "wss://techworkshop:TechWorkshop@hairdresser.cloudmqtt.com:35751/");
        // mqttBrokerUrlString = qEnvironmentVariable("QUICKMQTT_URL", "wss://rw:readwrite@test.mosquitto.org:8091/");
        mqttBrokerUrlString = qEnvironmentVariable("QUICKMQTT_URL", "wss://mining-demo1:MiningDemo1@rnkcsx.stackhero-network.com:443/mqtt");
    }

    if (!mqttBrokerUrlString.isEmpty()) {
        mqttBrokerUrl.setUrl(mqttBrokerUrlString);
    }

    // Enable / Disable logs
    QLoggingCategory::setFilterRules("qtdemo.mqtt.*=true\n"
                                     "qtdemo.backenddata=true\n");

    // Initilaize MQTT manager
    QtMqttManager::BackendServer backendData;
    backendData.setMqttHost(QUrl(mqttBrokerUrlString));
    backendData.setMqttRootTopic(mainTopic);
    QString clientId = "qtmqttmanager" + QString::number(QRandomGenerator::global()->generate() % 1000);
    qDebug() << "Client ID:" << clientId;
    backendData.setClientID(clientId);
    backendData.setVersion(mqttVersion);
    backendData.connectToHost();
    // }}} [3]

    QQmlApplicationEngine engine;
    const QUrl url(mainQmlFile);

    // DataModel exists only from Qml engine initialization,
    // let's delay the connection of the signal
    QObject::connect(
        &engine, &QQmlApplicationEngine::objectCreated, &app,
        [&backendData]() {
            DataModel* datamodel = DataModel::getInstance();
            if (datamodel) {
                QObject::connect(backendData.backend(), &QtMqttManager::BackendData::valueChanged,
                                 datamodel, &DataModel::updateValue);
                QObject::connect(&backendData, &QtMqttManager::BackendServer::mqttConnected, datamodel, &DataModel::serverConnected);
                QObject::connect(&backendData, &QtMqttManager::BackendServer::mqttDisconnected, datamodel, &DataModel::serverDisconnected);
                QObject::connect(datamodel, &DataModel::connectMqttServer, &backendData, &QtMqttManager::BackendServer::connectToHost);
                QObject::connect(datamodel, &DataModel::disconnectMqttServer, &backendData, &QtMqttManager::BackendServer::disconnectFromHost);
            }
            else {
                qFatal() << "DataModel is not available";
            }
    }, Qt::QueuedConnection);

    QObject::connect(
                &engine, &QQmlApplicationEngine::objectCreated, &app,
                [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);

    engine.addImportPath(QCoreApplication::applicationDirPath() + "/qml");
    engine.addImportPath(":/");
    engine.load(url);

    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
