import Quickshell
import QtQuick

import "../../styles/"

Rectangle {
  required property int barHeight
  color: Colors.fg
  implicitWidth: clock_text.implicitWidth + 20
  implicitHeight: barHeight
  radius: 5

  Text {
    id: clock_text

    color: Colors.bg
    anchors.centerIn: parent
    font.family: FontCfg.family
    font.pixelSize: FontCfg.size

    text: Qt.formatDateTime(clock.date, "ddd, dd/MM/yy - hh:mm AP")

    SystemClock {
      id: clock
      precision: SystemClock.Minutes
    }
  }
}
