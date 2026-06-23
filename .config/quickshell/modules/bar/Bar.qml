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

  RowLayout {
    id: bar_left

    anchors.left: parent.left
    anchors.verticalCenter: parent.verticalCenter
    anchors.leftMargin: 10

    Workspaces {
      barHeight: bar.implicitHeight
    }
  }

  RowLayout {
    id: bar_center

    anchors.centerIn: parent

    Clock {
      barHeight: bar.implicitHeight
    }
  }

  RowLayout {
    id: bar_right

    anchors.right: parent.right
    anchors.verticalCenter: parent.verticalCenter
    anchors.rightMargin: 10

    Volume {
      barHeight: bar.implicitHeight
    }
  }
}
