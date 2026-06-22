import Quickshell
import QtQuick

// This needs to be installed seperately
import Niri

import "./modules/bar/"

ShellRoot {
  id: root

  // Connect to niri ipc using qs-niri module
  Niri {
    id: niri

    Component.onCompleted: connect()
    onConnected: console.log("Connected to niri")
    onErrorOccurred: function (error) {
      console.error("Connection error:", error);
    }
  }

  Bar {}
}
