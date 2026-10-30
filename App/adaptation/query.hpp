#ifndef QUERY_HPP
#define QUERY_HPP

#include <QObject>
#include <QString>
#include <QtQuick>

class Query : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString text READ getText WRITE setText NOTIFY textChanged)
    Q_PROPERTY(bool result READ getResult WRITE setResult NOTIFY resultChanged)
    Q_PROPERTY(double possibility READ getPossibility WRITE setPossibility NOTIFY possibilityChanged)
    Q_PROPERTY(int classindex READ getClassindex WRITE setClassindex NOTIFY classindexChanged)
    QML_ELEMENT
    QML_SINGLETON

public:
    Query() {}
    virtual ~Query() {}

public:
    Q_INVOKABLE void setText(QString text);
    Q_INVOKABLE QString getText();
    Q_INVOKABLE void setResult(bool result);
    Q_INVOKABLE bool getResult();
    Q_INVOKABLE void setPossibility(double possibility);
    Q_INVOKABLE double getPossibility();
    Q_INVOKABLE void setClassindex(int classindex);
    Q_INVOKABLE int getClassindex();
    Q_INVOKABLE void query();

Q_SIGNALS:
    void textChanged(QString text);
    void resultChanged(bool result);
    void possibilityChanged(double possibility);
    void classindexChanged(int classindex);

private:
    QString m_text;
    bool m_result;
    double m_possibility;
    int m_classindex;
};

#endif // QUERY_HPP
