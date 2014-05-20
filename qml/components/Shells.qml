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

import harbour.usb.switch.shell 1.0

Item {
    id:shells
    anchors.fill:parent
    Shell {
        id:chargeShell
        command: 'usb_moded_util -s charging_only'
        onExecuted: {
            statusShell.execute();
        }
    }

    Shell {
        id:pcShell
        command: 'usb_moded_util -s pc_suite'
        onExecuted: {
            statusShell.execute();
        }
    }

    Shell {
        id:devShell
        command: 'usb_moded_util -s developer_mode'
        onExecuted: {
            statusShell.execute();
        }
    }

    Shell {
        id:statusShell
        executeImmediately: app.current_mode === ''
        command: 'usb_moded_util -q'
        onExecuted: {
            app.current_mode = response.substring(response.indexOf("=") + 1).trim();
        }
    }

    function switchMode(modeName) {
        switch(modeName) {
            case 'charging_only': chargeShell.execute();break;
            case 'pc_suite': pcShell.execute();break;
            case 'developer_mode': devShell.execute();break;
            default: throw "Unknown mode "+ modeName
        }
    }

    function refreshStatus() {
        statusShell.execute();
    }
}
