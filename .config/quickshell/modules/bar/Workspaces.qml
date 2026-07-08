pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Layouts

// This needs to be installed seperately
import Niri

import "../../styles/"

Rectangle {
  id: workspaces
  required property int barHeight

  color: Colors.bg
  implicitWidth: workspacesRow.implicitWidth + 20
  implicitHeight: barHeight
  radius: BarCfg.borderRadius

  Behavior on implicitWidth {
    NumberAnimation {
      duration: 250
      easing.type: Easing.InOutQuad
    }
  }

  // Connect to niri ipc using qs-niri module
  Niri {
    id: niri

    Component.onCompleted: connect()
    onConnected: console.log("Connected to niri")
    onErrorOccurred: error => {
      console.error("Connection error:", error);
    }
  }

  RowLayout {
    id: workspacesRow

    anchors.left: parent.left
    anchors.verticalCenter: parent.verticalCenter
    anchors.leftMargin: 10

    Repeater {
      model: niri.workspaces

      delegate: Rectangle {
        id: workspacesBtn
        required property var model
        property bool hovered: false

        implicitWidth: workspaceText.implicitWidth + 16
        implicitHeight: workspaceText.implicitHeight + 8
        color: model.isFocused || hovered ? Colors.secondary : "transparent"
        radius: BarCfg.borderRadius

        Text {
          id: workspaceText

          anchors.centerIn: parent
          text: parent.model.index
          color: parent.model.isFocused || parent.hovered ? Colors.bg : Colors.fg
          font.family: FontCfg.family
          font.pixelSize: parent.hovered ? FontCfg.size + 2 : FontCfg.size
        }

        MouseArea {
          Accessible.role: Accessible.Button
          Accessible.name: "Workspace " + parent.model.index
          anchors.fill: parent
          cursorShape: Qt.PointingHandCursor
          hoverEnabled: true
          onClicked: niri.focusWorkspaceById(parent.model.id)
          onEntered: workspacesBtn.hovered = true
          onExited: workspacesBtn.hovered = false
        }
      }
    }
  }
}
