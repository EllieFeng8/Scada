#ifndef FILEIO_HPP
#define FILEIO_HPP

#include <QObject>
#include <QUrl>
#include <QString>
#include <QtQuick>

class FileIO : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QUrl source READ getSource WRITE setSource NOTIFY sourceChanged)
    Q_PROPERTY(QString text READ getText WRITE setText NOTIFY textChanged)
    QML_ELEMENT
    QML_SINGLETON

public:
    FileIO() {}
    virtual ~FileIO() {}

public:
    Q_INVOKABLE void setSource(QUrl source);
    Q_INVOKABLE void setText(QString text);
    Q_INVOKABLE QUrl getSource();
    Q_INVOKABLE QString getText();
    Q_INVOKABLE void read();
    Q_INVOKABLE void write();

Q_SIGNALS:
    void sourceChanged(QUrl url);
    void textChanged(QString text);

private:
    QUrl m_source;
    QString m_text;
};

#endif // FILEIO_HPP
