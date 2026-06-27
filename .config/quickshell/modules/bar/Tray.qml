import Quickshell
import Quickshell.Widgets
import Quickshell.Services.SystemTray
import QtQuick
import QtQuick.Layouts

import "../../styles/"

Rectangle {
  id: tray
  required property int barHeight
  color: Colors.bg
  implicitWidth: trayRow.implicitWidth + 20
  implicitHeight: barHeight
  radius: BarCfg.borderRadius
  visible: SystemTray.items.values.length != 0

  RowLayout {
    id: trayRow

    anchors.centerIn: parent
    spacing: 10

    Repeater {
      model: SystemTray.items
      delegate: Rectangle {
        id: trayDelegate
        implicitWidth: trayIcon.implicitSize
        implicitHeight: trayIcon.implicitSize
        required property var modelData
        color: "transparent"

        IconImage {
          id: trayIcon
          anchors.centerIn: parent
          source: trayDelegate.modelData.icon
          implicitSize: 16
        }

        QsMenuAnchor {
          id: menuAnchor
          menu: trayDelegate.modelData.menu
          anchor.window: trayDelegate.QsWindow.window
          anchor.adjustment: PopupAdjustment.Flip
          anchor.onAnchoring: {
            const window = trayDelegate.QsWindow.window;
            const widgetRect = window.contentItem.mapFromItem(trayDelegate, 0, trayDelegate.height, trayDelegate.width, trayDelegate.height);
            menuAnchor.anchor.rect = widgetRect;
          }
        }

        MouseArea {
          Accessible.role: Accessible.Button
          Accessible.name: trayDelegate.modelData.toolTipTitle || trayDelegate.modelData.title || "System Tray Item"
          acceptedButtons: Qt.LeftButton | Qt.RightButton | Qt.MiddleButton
          anchors.fill: parent
          cursorShape: Qt.PointingHandCursor
          onClicked: mouse => {
            if (mouse.button === Qt.LeftButton) {
              trayDelegate.modelData.activate();
              console.log("left click");
            } else if (mouse.button === Qt.RightButton) {
              menuAnchor.open();
              console.log("right click");
            } else {
              trayDelegate.modelData.secondaryActivate();
              console.log("middle click");
            }
          }
        }
      }
    }
  }
}
