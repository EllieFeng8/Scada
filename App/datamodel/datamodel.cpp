#include "datamodel.h"
#include <QtDebug>
#include <QLoggingCategory>

Q_LOGGING_CATEGORY(lcDataModel, "qtdemo.datamodel")

DataModel* DataModel::m_instance = nullptr;

DataModel::DataModel(QObject *parent) : QObject{parent} {
    m_instance = this;
    m_topic = "Workshop/Dashboard/";
    m_connected = false;

    QVariantHash default_values{
        {"performancevalue", 0},
        {"performancevaluechange", 0},
        {"performancegaugevalue", 0},
        {"efficiencyvalue", 0},
        {"efficiencyvaluechange", 0},
        {"efficiencygaugevalue", 0},
        {"recyclevalue", 0},
        {"recyclevaluechange", 0},
        {"recyclegaugevalue", 0},
        {"environmentvalue", 0},
        {"environmentvaluechange", 0},
        {"environmentslider", 0},
    };
    m_values.insert(default_values);
    m_values.freeze(); // optimize and prevent new entries
    qCDebug(lcDataModel) << "datamodel initialized!";
}

DataModel::~DataModel()
{
  m_instance = nullptr;
}

DataModel* DataModel::getInstance()
{
  return m_instance;
}

qreal DataModel::getPerformanceValue() const
{
    return m_performanceValue;
}

qreal DataModel::getPerformanceValueChange() const
{
    return m_performanceValueChange;
}

qreal DataModel::getPerformanceGaugeValue() const
{
    return m_performanceGaugeValue;
}

qreal DataModel::getEfficiencyValue() const
{
    return m_efficiencyValue;
}

qreal DataModel::getEfficiencyValueChange() const
{
    return m_efficiencyValueChange;
}

qreal DataModel::getEfficiencyGaugeValue() const
{
    return m_efficiencyGaugeValue;
}

qreal DataModel::getRecycleValue() const
{
    return m_recycleValue;
}

qreal DataModel::getRecycleValueChange() const
{
    return m_recycleValueChange;
}

qreal DataModel::getRecycleGaugeValue() const
{
    return m_recycleGaugeValue;
}

qreal DataModel::getEnvironmentValue() const
{
    return m_environmentValue;
}

qreal DataModel::getEnvironmentValueChange() const
{
    return m_environmentValueChange;
}

qreal DataModel::getEnvironmentSlider() const
{
    return m_environmentSlider;
}

bool DataModel::getConnected() const
{
    return m_connected;
}

void DataModel::setPerformanceValue(qreal value)
{
    if (m_performanceValue != value)
    {
        m_performanceValue = value;
        emit performanceValueChanged();
        emit writeData(m_topic + "PerformanceValue", QString::number(value), 0, false);
    }
}

void DataModel::setPerformanceValueChange(qreal value)
{
    if (m_performanceValueChange != value)
    {
        m_performanceValueChange = value;
        emit performanceValueChangeChanged();
        emit writeData(m_topic + "PerformanceValueChange", QString::number(value), 0, false);
    }
}

void DataModel::setPerformanceGaugeValue(qreal value)
{
    if (m_performanceGaugeValue != value)
    {
        m_performanceGaugeValue = value;
        emit performanceGaugeValueChanged();
        emit writeData(m_topic + "PerformanceGaugeValue", QString::number(value), 0, false);
    }
}

void DataModel::setEfficiencyValue(qreal value)
{
    if (m_efficiencyValue != value)
    {
        m_efficiencyValue = value;
        emit efficiencyValueChanged();
        emit writeData(m_topic + "EfficiencyValue", QString::number(value), 0, false);
    }
}

void DataModel::setEfficiencyValueChange(qreal value)
{
    if (m_efficiencyValueChange != value)
    {
        m_efficiencyValueChange = value;
        emit efficiencyValueChangeChanged();
        emit writeData(m_topic + "EfficiencyValueChange", QString::number(value), 0, false);
    }
}

void DataModel::setEfficiencyGaugeValue(qreal value)
{
    if (m_efficiencyGaugeValue != value)
    {
        m_efficiencyGaugeValue = value;
        emit efficiencyGaugeValueChanged();
        emit writeData(m_topic + "EfficiencyGaugeValue", QString::number(value), 0, false);
    }
}

void DataModel::setRecycleValue(qreal value)
{
    if (m_recycleValue != value)
    {
        m_recycleValue = value;
        emit recycleValueChanged();
        emit writeData(m_topic + "RecycleValue", QString::number(value), 0, false);
    }
}

void DataModel::setRecycleValueChange(qreal value)
{
    if (m_recycleValueChange != value)
    {
        m_recycleValueChange = value;
        emit recycleValueChangeChanged();
        emit writeData(m_topic + "RecycleValueChange", QString::number(value), 0, false);
    }
}

void DataModel::setRecycleGaugeValue(qreal value)
{
    if (m_recycleGaugeValue != value)
    {
        m_recycleGaugeValue = value;
        emit recycleGaugeValueChanged();
        emit writeData(m_topic + "RecycleGaugeValue", QString::number(value), 0, false);
    }
}

void DataModel::setEnvironmentValue(qreal value)
{
    if (m_environmentValue != value)
    {
        m_environmentValue = value;
        emit environmentValueChanged();
        emit writeData(m_topic + "EnvironmentValue", QString::number(value), 0, false);
    }
}

void DataModel::setEnvironmentValueChange(qreal value)
{
    if (m_environmentValueChange != value)
    {
        m_environmentValueChange = value;
        emit environmentValueChangeChanged();
        emit writeData(m_topic + "EnvironmentValueChange", QString::number(value), 0, false);
    }
}

void DataModel::setEnvironmentSlider(qreal value)
{
    if (m_environmentSlider != value)
    {
        m_environmentSlider = value;
        emit environmentSliderChanged();
        emit writeData(m_topic + "EnvironmentSlider", QString::number(value), 0, false);
    }
}

void DataModel::updateValue(const QString& key, const QVariant &value)
{
    qCDebug(lcDataModel) << "Update value: " << key << " = " << value;
    QString lkey = key.toLower();
    if (m_values.contains(lkey))
    {
        if (lkey == "performancevalue")
        {
            setPerformanceValue(value.toDouble());
        }
        else if (lkey == "performancevaluechange")
        {
            qreal changevalue = value.toDouble();
            if (changevalue < 0) {
                changevalue = 0;
            } else if (changevalue > 100) {
                changevalue = 100;
            }
            setPerformanceValueChange(changevalue);
        }
        else if (lkey == "performancegaugevalue")
        {
            qreal gaugevalue = value.toDouble();
            if (gaugevalue < 0) {
                gaugevalue = 0;
            } else if (gaugevalue > 200) {
                gaugevalue = 200;
            }
            setPerformanceGaugeValue(gaugevalue);
        }
        else if (lkey == "efficiencyvalue")
        {
            setEfficiencyValue(value.toDouble());
        }
        else if (lkey == "efficiencyvaluechange")
        {
            qreal changevalue = value.toDouble();
            if (changevalue < 0) {
                changevalue = 0;
            } else if (changevalue > 100) {
                changevalue = 100;
            }
            setEfficiencyValueChange(changevalue);
        }
        else if (lkey == "efficiencygaugevalue")
        {
            qreal gaugevalue = value.toDouble();
            if (gaugevalue < 0) {
                gaugevalue = 0;
            } else if (gaugevalue > 7500) {
                gaugevalue = 7500;
            }
            setEfficiencyGaugeValue(gaugevalue);
        }
        else if (lkey == "recyclevalue")
        {
            setRecycleValue(value.toDouble());
        }
        else if (lkey == "recyclevaluechange")
        {
            qreal changevalue = value.toDouble();
            if (changevalue < 0) {
                changevalue = 0;
            } else if (changevalue > 100) {
                changevalue = 100;
            }
            setRecycleValueChange(changevalue);
        }
        else if (lkey == "recyclegaugevalue")
        {
            qreal gaugevalue = value.toDouble();
            if (gaugevalue < 0) {
                gaugevalue = 0;
            } else if (gaugevalue > 100) {
                gaugevalue = 100;
            }
            setRecycleGaugeValue(gaugevalue);
        }
        else if (lkey == "environmentvalue")
        {
            setEnvironmentValue(value.toDouble());
        }
        else if (lkey == "environmentvaluechange")
        {
            qreal changevalue = value.toDouble();
            if (changevalue < 0) {
                changevalue = 0;
            } else if (changevalue > 100) {
                changevalue = 100;
            }
            setEnvironmentValueChange(changevalue);
        }
        else if (lkey == "environmentslider")
        {
            setEnvironmentSlider(value.toDouble());
        }
        else
        {
            // no matches
        }
    }
}

void DataModel::serverConnected()
{
    if (m_connected == false)
    {
        m_connected = true;
        emit connectedChanged();
    }
}

void DataModel::serverDisconnected()
{
    if (m_connected == true)
    {
        m_connected = false;
        emit connectedChanged();
    }
}

void DataModel::toggleConnection()
{
    if (m_connected == true)
    {
        emit disconnectMqttServer();
    }
    else
    {
        emit connectMqttServer();
    }
}
