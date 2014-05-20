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

Page {
    id: page

    SilicaFlickable {
        id:sf
        anchors.fill: parent
        contentHeight: childRect.height

        Rectangle {
            id:childRect
            width:parent.width

            PageHeader {
                id: title
                title: 'About'
            }

            Image {
                id: logo
                anchors.top: title.bottom
                x: Theme.paddingLarge
                source: 'qrc:/img/harbour-usb-switch.png'
                width: 86
                height: 86
            }

            Label {
                id: appName
                anchors.top: logo.top
                anchors.right: parent.right
                anchors.rightMargin: Theme.paddingLarge
                wrapMode: Text.WordWrap
                horizontalAlignment: Text.AlignRight
                textFormat: Text.RichText
                text: "USB Mode Switch"
                color:Theme.highlightColor
                font.pixelSize: Theme.fontSizeLarge
            }

            Label {
                id: copyRight
                anchors.top: appName.bottom
                anchors.right: parent.right
                anchors.rightMargin: Theme.paddingLarge
                wrapMode: Text.WordWrap
                horizontalAlignment: Text.AlignRight
                textFormat: Text.RichText
                text: "<strong>Version 0.1</strong><br>Copyright © 2014 Jens Klingen"
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeSmall
            }
            Label {
                id: intro
                anchors.top: copyRight.bottom
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.margins: Theme.paddingLarge
                wrapMode: Text.WordWrap
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
                color: Theme.highlightColor
                text: "Ever wanted to switch USB mode\nwithout replugging the connector?"
            }

            Label {
                id: description
                anchors.top: intro.bottom
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.margins: Theme.paddingLarge
                wrapMode: Text.WordWrap
                horizontalAlignment: Text.AlignHCenter
                color: Theme.highlightColor
                text: "Here you go."
            }

            Label {
                id: feedback
                anchors.top: description.bottom
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.margins: Theme.paddingLarge
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
                color: Theme.highlightColor
                text: "Questions, problems, suggestions?"
            }

            Button {
                id: github
                anchors.top: feedback.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                text: 'Get in touch'
                onClicked: Qt.openUrlExternally("https://github.com/jklingen/harbour-usb-switch/issues");
            }


            Label {
                id: license
                anchors.top: github.bottom
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.margins: Theme.paddingLarge
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
                color: Theme.highlightColor
                text: "Free & open source!"
            }



            Button {
                id:gpl
                anchors.top: license.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                text: 'GPL version 3'
                onClicked: Qt.openUrlExternally("http://www.gnu.org/licenses/gpl-3.0.txt");
            }


        }
    }

}
