#include <QFile>
#include <QDebug>
#include "query.hpp"
#include "triton/interface/QueryRecognition.h"


class WorkerThread : public QThread
{
    Q_OBJECT
public:
    WorkerThread(QObject *p, QString f) : QThread(p), file(f) {}
    void run() override {
        QString result;
        double possibility = 0.0;
        int classIndex = 0;
        QueryRecognition(file.toStdString(), possibility, classIndex);
        emit resultReady(classIndex, classIndex);
    }
signals:
    void resultReady(double possibility, int classIndex);

private:
    QString file;
};

void Query::setText(QString text)
{
    m_text = text;
    emit textChanged(m_text);
}

QString Query::getText()
{
    return m_text;
}

void Query::setResult(bool result)
{
    m_result = result;
    emit resultChanged(m_result);
}

bool Query::getResult()
{
    return m_result;
}

void Query::setPossibility(double possibility)
{
    m_possibility = possibility;
    emit possibilityChanged(m_possibility);
}

double Query::getPossibility()
{
    return m_possibility;
}

void Query::setClassindex(int classindex)
{
    m_classindex = classindex;
    emit classindexChanged(m_classindex);
}

int Query::getClassindex()
{
    return m_classindex;
}

void Query::query()
{
    WorkerThread *workerThread = new WorkerThread(this, m_text);
    connect(workerThread, &WorkerThread::resultReady, this, [=] (double possibility, int classIndex) {
        m_possibility = possibility;
        m_classindex = classIndex;
        emit possibilityChanged(m_possibility);
        emit classindexChanged(m_classindex);
    });
    connect(workerThread, &WorkerThread::finished, workerThread, &QObject::deleteLater);
    workerThread->start();
}

#include "query.moc"
