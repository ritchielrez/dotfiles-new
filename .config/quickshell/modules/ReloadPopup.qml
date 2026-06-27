pragma ComponentBehavior: Bound
import Quickshell
import QtQuick

// Disable Quickshell reload popups
Scope {
  Connections {
    target: Quickshell

    function onReloadCompleted() {
      Quickshell.inhibitReloadPopup();
    }

    function onReloadFailed(err: string) {
      Quickshell.inhibitReloadPopup();
    }
  }
}
