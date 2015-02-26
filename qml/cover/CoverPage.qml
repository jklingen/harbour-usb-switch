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
import "../components"

CoverBackground {
    id:page
    Column {
        anchors.centerIn: parent
        spacing: Theme.paddingLarge
        Image {
            y: Theme.paddingLarge*2
            anchors.horizontalCenter:parent.horizontalCenter
            visible: usbControl.currentMode === 'charging_only'
            source: "image://theme/icon-l-charging?" + Theme.highlightColor
        }
        Image {
            anchors.horizontalCenter:parent.horizontalCenter
            visible: usbControl.currentMode === 'pc_suite'
            source: "image://theme/icon-l-computer?" + Theme.highlightColor
        }
        Image {
            anchors.horizontalCenter:parent.horizontalCenter
            visible: usbControl.currentMode === 'developer_mode'
            source: "image://theme/icon-l-developer-mode?" + Theme.highlightColor
        }
        Image {
            anchors.horizontalCenter:parent.horizontalCenter
            source: "image://theme/icon-l-usb?" + Theme.secondaryHighlightColor
        }
    }

    CoverActionList {
        enabled: usbControl.currentMode === 'pc_suite'

        CoverAction {
            iconSource: "image://theme/icon-l-charging"
            onTriggered: usbControl.setMode('charging_only')

        }

        CoverAction {
            iconSource: "image://theme/icon-l-developer-mode"
            onTriggered: usbControl.setMode('developer_mode')
        }
    }

    CoverActionList {
        enabled: usbControl.currentMode === 'charging_only'

        CoverAction {
            iconSource: "image://theme/icon-l-computer"
            onTriggered: usbControl.setMode('pc_suite')
        }

        CoverAction {
            iconSource: "image://theme/icon-l-developer-mode"
            onTriggered: usbControl.setMode('developer_mode')
        }
    }

    CoverActionList {
        enabled: usbControl.currentMode === 'developer_mode'

        CoverAction {
            iconSource: "image://theme/icon-l-computer"
            onTriggered: usbControl.setMode('pc_suite')
        }

        CoverAction {
            iconSource: "image://theme/icon-l-charging"
            onTriggered: usbControl.setMode('charging_only')

        }
    }

}


