#include <QObject>
#include <QQmlEngine>
#include <QQmlPropertyMap>

class DataModel : public QObject {
    Q_OBJECT
    QML_ELEMENT
    QML_SINGLETON

    Q_PROPERTY(qreal performanceValue READ getPerformanceValue WRITE setPerformanceValue NOTIFY performanceValueChanged)
    Q_PROPERTY(qreal performanceValueChange READ getPerformanceValueChange WRITE setPerformanceValueChange NOTIFY performanceValueChangeChanged)
    Q_PROPERTY(qreal performanceGaugeValue READ getPerformanceGaugeValue WRITE setPerformanceGaugeValue NOTIFY performanceGaugeValueChanged)
    Q_PROPERTY(qreal efficiencyValue READ getEfficiencyValue WRITE setEfficiencyValue NOTIFY efficiencyValueChanged)
    Q_PROPERTY(qreal efficiencyValueChange READ getEfficiencyValueChange WRITE setEfficiencyValueChange NOTIFY efficiencyValueChangeChanged)
    Q_PROPERTY(qreal efficiencyGaugeValue READ getEfficiencyGaugeValue WRITE setEfficiencyGaugeValue NOTIFY efficiencyGaugeValueChanged)
    Q_PROPERTY(qreal recycleValue READ getRecycleValue WRITE setRecycleValue NOTIFY recycleValueChanged)
    Q_PROPERTY(qreal recycleValueChange READ getRecycleValueChange WRITE setRecycleValueChange NOTIFY recycleValueChangeChanged)
    Q_PROPERTY(qreal recycleGaugeValue READ getRecycleGaugeValue WRITE setRecycleGaugeValue NOTIFY recycleGaugeValueChanged)
    Q_PROPERTY(qreal environmentValue READ getEnvironmentValue WRITE setEnvironmentValue NOTIFY environmentValueChanged)
    Q_PROPERTY(qreal environmentValueChange READ getEnvironmentValueChange WRITE setEnvironmentValueChange NOTIFY environmentValueChangeChanged)
    Q_PROPERTY(qreal environmentSlider READ getEnvironmentSlider WRITE setEnvironmentSlider NOTIFY environmentSliderChanged)
    Q_PROPERTY(bool connected READ getConnected NOTIFY connectedChanged)


public:
    explicit DataModel(QObject *parent = nullptr);
    ~DataModel();

    qreal getPerformanceValue() const;
    qreal getPerformanceValueChange() const;
    qreal getPerformanceGaugeValue() const;
    qreal getEfficiencyValue() const;
    qreal getEfficiencyValueChange() const;
    qreal getEfficiencyGaugeValue() const;
    qreal getRecycleValue() const;
    qreal getRecycleValueChange() const;
    qreal getRecycleGaugeValue() const;
    qreal getEnvironmentValue() const;
    qreal getEnvironmentValueChange() const;
    qreal getEnvironmentSlider() const;
    bool getConnected() const;

    void setPerformanceValue(qreal value);
    void setPerformanceValueChange(qreal value);
    void setPerformanceGaugeValue(qreal value);
    void setEfficiencyValue(qreal value);
    void setEfficiencyValueChange(qreal value);
    void setEfficiencyGaugeValue(qreal value);
    void setRecycleValue(qreal value);
    void setRecycleValueChange(qreal value);
    void setRecycleGaugeValue(qreal value);
    void setEnvironmentValue(qreal value);
    void setEnvironmentValueChange(qreal value);
    void setEnvironmentSlider(qreal value);

    static DataModel* getInstance();
    void updateValue(const QString& key, const QVariant &value);
    Q_INVOKABLE void toggleConnection();

public slots:
    void serverConnected();
    void serverDisconnected();

signals:

    void performanceValueChanged();
    void performanceValueChangeChanged();
    void performanceGaugeValueChanged();
    void efficiencyValueChanged();
    void efficiencyValueChangeChanged();
    void efficiencyGaugeValueChanged();
    void recycleValueChanged();
    void recycleValueChangeChanged();
    void recycleGaugeValueChanged();
    void environmentValueChanged();
    void environmentValueChangeChanged();
    void environmentSliderChanged();
    void connectedChanged();
    void connectMqttServer();
    void disconnectMqttServer();
    void writeData(const QString &topic, const QString &message, int qos = 0, bool retain = false);

private:
    // member data
    qreal m_performanceValue = 0.0;
    qreal m_performanceValueChange = 0.0;
    qreal m_performanceGaugeValue = 0.0;
    qreal m_efficiencyValue = 0.0;
    qreal m_efficiencyValueChange = 0.0;
    qreal m_efficiencyGaugeValue = 0.0;
    qreal m_recycleValue = 0.0;
    qreal m_recycleValueChange = 0.0;
    qreal m_recycleGaugeValue = 0.0;
    qreal m_environmentValue = 0.0;
    qreal m_environmentValueChange = 0.0;
    qreal m_environmentSlider = 0.0;
    bool m_connected = false;

    static DataModel* m_instance;
    QQmlPropertyMap m_values;
    QString m_topic;
    
};
