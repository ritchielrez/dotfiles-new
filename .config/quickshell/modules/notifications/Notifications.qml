pragma ComponentBehavior: Bound
import Quickshell
import Quickshell.Io
import Quickshell.Services.Notifications
import QtQuick
import QtQuick.Layouts

import "../../styles/"

Scope {
  id: notifications

  property bool centerOpen: false
  ListModel {
    id: notificationHistory
  }

  NotificationServer {
    id: notificationServer
    actionsSupported: true
    bodySupported: true
    imageSupported: true
    onNotification: notification => {
      notification.tracked = true;
      notificationHistory.insert(0, {
        summary: notification.summary,
        body: notification.body,
        appName: notification.appName,
        urgency: notification.urgency,
        time: Qt.formatDateTime(new Date(), "HH:mm:AZ")
      });
      notificationsPanel.dismissAll = false;
    }
  }

  IpcHandler {
    target: "notifications"
    function toggle(): void {
      notifications.centerOpen = !notifications.centerOpen;
    }
    function show(): void {
      notifications.centerOpen = true;
    }
    function hide(): void {
      notifications.centerOpen = false;
    }
  }

  PanelWindow {
    id: notificationsPanel
    property bool dismissAll: false
    anchors.top: true
    anchors.right: true
    margins.top: 50
    margins.right: 10

    implicitWidth: 380
    implicitHeight: Math.max(1, notificationsCol.implicitHeight)
    color: "transparent"
    exclusionMode: ExclusionMode.Ignore

    ColumnLayout {
      id: notificationsCol
      width: parent.width
      spacing: 10

      Repeater {
        model: notificationServer.trackedNotifications
        delegate: Rectangle {
          id: notificationCard
          required property var modelData
          property bool cardShown: !notificationsPanel.dismissAll
          visible: cardShown || opacity > 0
          opacity: cardShown ? 1 : 0

          Behavior on opacity {
            NumberAnimation {
              duration: 250
              easing.type: Easing.InOutSine
            }
          }

          onVisibleChanged: {
            if (!visible)
              modelData.dismiss();
          }

          Layout.fillWidth: true
          Layout.preferredHeight: 60
          color: Colors.bg
          radius: 5
          border.width: 3
          border.color: modelData.urgency === NotificationUrgency.Critical ? Colors.red : Colors.primary

          Timer {
            running: notificationCard.modelData.urgency !== NotificationUrgency.Critical
            interval: 5000
            onTriggered: notificationCard.cardShown = false
          }

          MouseArea {
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            onClicked: notificationCard.cardShown = false
          }

          RowLayout {
            id: notificationRow
            anchors.fill: parent
            anchors.margins: 10
            spacing: 10

            Image {
              Layout.preferredWidth: 36
              Layout.preferredHeight: 36
              Layout.alignment: Qt.AlignTop
              fillMode: Image.PreserveAspectFit
              source: notificationCard.modelData.image || notificationCard.modelData.appIcon || ""
              visible: source.toString() !== ""
            }

            ColumnLayout {
              Layout.fillWidth: true
              spacing: 5

              Text {
                id: notificationSummary
                Layout.fillWidth: true
                text: notificationCard.modelData.summary
                color: Colors.fg
                font.family: FontCfg.family
                font.pixelSize: FontCfg.size
                font.bold: true
                elide: Text.ElideRight
              }

              Text {
                id: notificationBody
                Layout.fillWidth: true
                text: notificationCard.modelData.body
                color: Colors.fg
                font.family: FontCfg.family
                font.pixelSize: FontCfg.size - 1
                font.bold: true
                wrapMode: Text.WordWrap
              }
            }
          }
        }
      }
    }
  }

  // PanelWindow {
  //   id: notificationsCenter
  //   anchors.top: true
  //   anchors.right: true
  //   margins.top: 50
  //   margins.right: 10
  //   visible: notifications.centerOpen
  //   property bool dismissAll: false
  //
  //   onVisibleChanged: {
  //     if (visible)
  //       notificationsPanel.dismissAll = true;
  //   }
  //
  //   implicitWidth: 380
  //   implicitHeight: centerCol.implicitHeight + 24
  //   color: "transparent"
  //   exclusionMode: ExclusionMode.Ignore
  //
  //   Rectangle {
  //     anchors.fill: parent
  //     color: Colors.bg
  //     radius: BarCfg.borderRadius
  //     border.width: 3
  //     border.color: Colors.primary
  //
  //     ColumnLayout {
  //       id: centerCol
  //       anchors.fill: parent
  //       anchors.margins: 10
  //       width: parent.width
  //       spacing: 10
  //
  //       RowLayout {
  //         Layout.fillWidth: true
  //
  //         Text {
  //           Layout.fillWidth: true
  //           text: "Notifications"
  //           color: Colors.fg
  //           font.family: FontCfg.family
  //           font.pixelSize: FontCfg.size
  //           font.bold: true
  //         }
  //
  //         Text {
  //           text: "Clear All"
  //           visible: notificationHistory.count > 0
  //           color: Colors.red
  //           font.family: FontCfg.family
  //           font.pixelSize: FontCfg.size
  //
  //           MouseArea {
  //             anchors.fill: parent
  //             onClicked: {
  //               notificationsPanel.dismissAll = true;
  //               notificationHistory.clear();
  //             }
  //           }
  //         }
  //       }
  //
  //       Repeater {
  //         model: notificationHistory
  //         delegate: Rectangle {
  //           id: centerCard
  //           required property var modelData
  //           required property int index
  //           property bool cardShown: !notificationsCenter.dismissAll
  //           visible: cardShown || opacity > 0
  //           opacity: cardShown ? 1 : 0
  //
  //           Behavior on opacity {
  //             NumberAnimation {
  //               duration: 250
  //               easing.type: Easing.InOutSine
  //             }
  //           }
  //
  //           onVisibleChanged: {
  //             if (!visible) {
  //               modelData.dismiss();
  //               notificationHistory.remove(index);
  //             }
  //           }
  //
  //           Layout.fillWidth: true
  //           Layout.preferredHeight: 60
  //           color: Colors.bg
  //           radius: 5
  //           border.width: 3
  //           border.color: modelData.urgency === NotificationUrgency.Critical ? Colors.red : Colors.primary
  //
  //           MouseArea {
  //             anchors.fill: parent
  //             cursorShape: Qt.PointingHandCursor
  //             onClicked: centerCard.cardShown = false
  //           }
  //
  //           RowLayout {
  //             id: centerRow
  //             anchors.fill: parent
  //             anchors.margins: 10
  //             spacing: 10
  //
  //             Image {
  //               Layout.preferredWidth: 36
  //               Layout.preferredHeight: 36
  //               Layout.alignment: Qt.AlignTop
  //               fillMode: Image.PreserveAspectFit
  //               source: centerCard.modelData.image || centerCard.modelData.appIcon || ""
  //               visible: source.toString() !== ""
  //             }
  //
  //             ColumnLayout {
  //               Layout.fillWidth: true
  //               spacing: 5
  //
  //               Text {
  //                 id: centerSummary
  //                 Layout.fillWidth: true
  //                 text: centerCard.modelData.summary
  //                 color: Colors.fg
  //                 font.family: FontCfg.family
  //                 font.pixelSize: FontCfg.size
  //                 font.bold: true
  //                 elide: Text.ElideRight
  //               }
  //
  //               Text {
  //                 id: centerBody
  //                 Layout.fillWidth: true
  //                 text: centerCard.modelData.body
  //                 color: Colors.fg
  //                 font.family: FontCfg.family
  //                 font.pixelSize: FontCfg.size - 1
  //                 font.bold: true
  //                 wrapMode: Text.WordWrap
  //               }
  //             }
  //           }
  //         }
  //       }
  //     }
  //   }
  // }
}
