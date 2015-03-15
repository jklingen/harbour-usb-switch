/*
    USB Switch - a simple USB mode switcher for SailfishOS
    Copyright (C) 2014 - 2015 Jens Klingen

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
                title: 'USB Switch'
            }




            Image {
                id: logo
                //x: Theme.paddingLarge
                y: Theme.paddingLarge
                anchors.top: title.bottom
                anchors.left: title.left
                anchors.leftMargin: Theme.paddingLarge
                source: 'qrc:/img/harbour-usb-switch.png'
                width: 86
                height: 86
            }
            Label {
                anchors.bottom: logo.bottom
                anchors.right: title.right
                anchors.rightMargin: Theme.paddingLarge
                wrapMode: Text.WordWrap
                textFormat: Text.RichText
                horizontalAlignment: Text.AlignRight
                text: "<strong>Version 0.2</strong><br>Copyright © 2014 - 2015<br>Jens Klingen"
                color:Theme.highlightColor
                font.pixelSize: Theme.fontSizeSmall
            }

            Column {
                anchors.top:logo.bottom
                width:parent.width
                spacing:Theme.paddingSmall

                Spacer {}
                Label {
                    width:parent.width
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    font.bold: true
                    color: Theme.highlightColor
                    text: "Ever wanted to switch USB mode\nwithout replugging the connector?"
                }
                Label {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.margins: Theme.paddingLarge
                    wrapMode: Text.WordWrap
                    color: Theme.highlightColor
                    text: "Here you go."
                }

                Spacer {}
                Label {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.margins: Theme.paddingLarge
                    font.bold: true
                    color: Theme.highlightColor
                    text: "Questions, problems, suggestions?"
                }
                Row {
                    anchors.horizontalCenter: parent.horizontalCenter
                    Button {
                        text: 'Github'
                        onClicked: Qt.openUrlExternally("https://github.com/jklingen/harbour-usb-switch/issues");
                    }
                    Button {
                        text: 'Twitter'
                        onClicked: Qt.openUrlExternally("https://twitter.com/jklingen");
                    }
                }


                Spacer {}
                Label {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.margins: Theme.paddingLarge
                    font.bold: true
                    color: Theme.highlightColor
                    text: "Do you like this app?"
                }
                Button {
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: 'Buy me a beer :)'
                    onClicked: {
                        Qt.openUrlExternally("https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=paypal%40jklingen%2ecom&lc=US&item_name=Jens%20Klingen&no_note=0&cn=Message%20to%20Jens%3a&no_shipping=2&rm=1&currency_code=EUR&bn=PP%2dDonationsBF%3abtn_donateCC_LG%2egif%3aNonHosted&amount=3&item_name=A%20beer%20for%20USB%20Switch%20-%20cheers!");
                        text = 'Cheers!'
                    }
                }


                Spacer {}
                Label {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.margins: Theme.paddingLarge
                    font.bold: true
                    color: Theme.highlightColor
                    text: "Free & open source!"
                }
                Button {
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: 'GPL version 3'
                    onClicked: Qt.openUrlExternally("http://www.gnu.org/licenses/gpl-3.0.txt");
                }
                Label {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.margins: Theme.paddingLarge
                    width:parent.width
                    font.pixelSize: Theme.fontSizeSmall
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    textFormat: Text.RichText
                    color: Theme.secondaryHighlightColor
                    text: '<style>a:link { color: ' + Theme.primaryColor + '; }</style>' +
                          qsTr('USB Switch uses %1, which is licensed under %2.')
                            .arg('<a href="https://github.com/nemomobile/nemo-qml-plugin-dbus/">Nemo Mobile D-Bus QML Plugin</a>')
                            .arg('<a href="https://www.gnu.org/licenses/lgpl-2.1.txt">LGPL v2.1</a>')
                }



            }


        }




    }

}
