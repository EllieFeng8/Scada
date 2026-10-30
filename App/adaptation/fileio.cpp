#include <QFile>
#include <QDebug>
#include "fileio.hpp"

void FileIO::setSource(QUrl source)
{
    m_source = source;
    emit sourceChanged(m_source);
}

void FileIO::setText(QString text)
{
    m_text = text;
    emit textChanged(m_text);
}

QUrl FileIO::getSource()
{
    return m_source;
}

QString FileIO::getText()
{
    return m_text;
}

void FileIO::read()
{
    if(m_source.isEmpty()) {
        return;
    }
    QFile file(m_source.toLocalFile());
    if(!file.exists()) {
        qWarning() << "Does not exist: " << m_source.toLocalFile();
        return;
    }
    if(file.open(QIODevice::ReadOnly)) {
        QTextStream stream(&file);
        m_text = stream.readAll();
        file.close();
        emit textChanged(m_text);
    }
}

void FileIO::write()
{
    if(m_source.isEmpty()) {
        return;
    }
    QFile file(m_source.toLocalFile());
    /*if(!file.exists()) {
        qWarning() << "Does not exist: " << m_source.toLocalFile();
        return;
    }*/
    if(file.open(QIODevice::WriteOnly|QIODevice::Truncate)) {
        QTextStream stream(&file);
        stream << m_text;
        file.close();
    }
}
