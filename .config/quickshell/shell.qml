import Quickshell
import QtQuick

// This needs to be installed seperately
import Niri

import "./modules/bar/"

ShellRoot {
    id: root

    property color bg: "#1e1e2e"
    property color bg1: "#181825"
    property color bg2: "#11111b"
    property color fg: "#cdd6f4"
    property color primary: "#cba6f7"
    property color secondary: "#b4befe"

    property string fontFamily: "MartianMono Nerd Font Propo"
    property int fontSize: 12

    property int barHeight: 30

    // Connect to niri ipc using qs-niri module
    Niri {
        id: niri

        Component.onCompleted: connect()
        onConnected: console.log("Connected to niri")
        onErrorOccurred: function (error) {
            console.error("Connection error:", error);
        }
    }

    LazyLoader {
        active: true
        component: Bar {}
    }
}
