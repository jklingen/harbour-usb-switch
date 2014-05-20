/*
    USB Switch - a simple USB mode switcher for SailfishOS
    Copyright (C) 2014 Jens Klingen

    https://github.com/jklingen/harbour-usb-switch

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program. If not, see <http://www.gnu.org/licenses/>.
*/

#ifndef SHELL_H
#define SHELL_H
#include <QObject>
#include <QProcess>
#include <QQmlParserStatus>
class Shell : public QObject, public QQmlParserStatus
{
    Q_OBJECT
    Q_INTERFACES(QQmlParserStatus)
    Q_PROPERTY(QString command READ command WRITE setCommand)
    Q_PROPERTY(bool executeImmediately READ executeImmediately WRITE setExecuteImmediately)

public:
    Shell(QObject *parent = 0);

    QString command() const;
    void setCommand(const QString &);
    bool executeImmediately() const;
    void setExecuteImmediately(const bool &);

    Q_INVOKABLE void execute();

    virtual void componentComplete()
    {
        if(executeImmediately()) execute();
    }
    virtual void classBegin()
    {
    }

private:
    QProcess *m_process;
    QString m_command;
    bool m_executeImmediately;

signals:
    QString executed(const QString &response);
private slots:
     void processFinishedHandler(int signum);

};

#endif
