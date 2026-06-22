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
  radius: 5

  Behavior on implicitWidth {
    NumberAnimation {
      duration: 100
      easing.type: Easing.OutQuad
    }
  }

  // Connect to niri ipc using qs-niri module
  Niri {
    id: niri

    Component.onCompleted: connect()
    onConnected: console.log("Connected to niri")
    onErrorOccurred: function (error) {
      console.error("Connection error:", error);
    }
  }

  RowLayout {
    id: workspacesRow

    anchors.centerIn: parent
    spacing: 10

    Repeater {
      model: niri.workspaces

      delegate: Rectangle {
        implicitWidth: workspaceText.implicitWidth + 16
        implicitHeight: workspaceText.implicitHeight + 8
        color: model.isFocused ? Colors.secondary : "transparent"
        radius: 5

        Text {
          id: workspaceText

          anchors.centerIn: parent
          text: model.index
          color: model.isFocused ? Colors.bg : Colors.fg
          font.family: FontCfg.family
          font.pixelSize: FontCfg.size
        }

        MouseArea {
          anchors.fill: parent
          cursorShape: Qt.PointingHandCursor
          onClicked: niri.focusWorkspaceById(model.id)
        }
      }
    }
  }
}
