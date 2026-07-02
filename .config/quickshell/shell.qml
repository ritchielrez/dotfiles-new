//@ pragma UseQApplication
// We have to enable this for menu anchors to work
import Quickshell
import QtQuick

import "./modules/"
import "./modules/bar/"
import "./modules/notifications/"

ShellRoot {
  ReloadPopup {}
  Notifications {}
  Bar {}
}
