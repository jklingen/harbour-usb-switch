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

#include "shell.h"
#include <QProcess>
#include <QTextStream>
Shell::Shell(QObject *parent) :
    QObject(parent),
    m_command(),
    m_executeImmediately()
{
}

QString Shell::command() const {return m_command;}
void Shell::setCommand(const QString & c) {m_command = c;}

bool Shell::executeImmediately() const {return m_executeImmediately;}
void Shell::setExecuteImmediately(const bool & c) {m_executeImmediately = c;}

void Shell::execute()
{
    m_process = new QProcess(this);
    QObject::connect(m_process, SIGNAL(finished(int)), SLOT(processFinishedHandler(int)));
    m_process->start(m_command);
}

void Shell::processFinishedHandler( int signum )
{
    QTextStream stream(m_process);
    m_process->deleteLater();
    emit executed(stream.readAll());
}


