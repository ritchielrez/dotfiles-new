import Quickshell
import QtQuick
import QtQuick.Layouts

PanelWindow {
  id: bar

  anchors.top: true
  anchors.left: true
  anchors.right: true
  margins.top: 10
  implicitHeight: 30
  color: "transparent"

  Rectangle {
    anchors.fill: parent
    color: "transparent"

    RowLayout {
      id: bar_left

      anchors.left: parent.left
      anchors.verticalCenter: parent.verticalCenter
      anchors.leftMargin: 10
    }

    RowLayout {
      id: bar_center

      anchors.centerIn: parent
      Workspaces {
        barHeight: bar.implicitHeight
      }
    }

    RowLayout {
      id: bar_right

      anchors.right: parent.right
      anchors.verticalCenter: parent.verticalCenter
      anchors.rightMargin: 10

      Clock {
        barHeight: bar.implicitHeight
      }
    }
  }
}
