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

import QtQuick 2.0
import Sailfish.Silica 1.0

import harbour.usb.switch.shell 1.0
import "../components"

Page {
    id: page

    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: "Info"
                onClicked: pageStack.push(Qt.resolvedUrl("InfoPage.qml"))
            }
        }

        contentHeight: column.height

        Column {
            id: column

            width: page.width

            ModeButton {
                modeName: 'charging_only'
                text: 'Charge'
                iconName: 'icon-l-charging'
            }

            ModeButton {
                modeName: 'pc_suite'
                text: 'PC Suite'
                iconName: 'icon-l-computer'
            }

            ModeButton {
                modeName: 'developer_mode'
                text: 'Developer Mode'
                iconName: 'icon-l-developer-mode'
            }

        }
    }

    Shells {
        id:shells
    }



}


