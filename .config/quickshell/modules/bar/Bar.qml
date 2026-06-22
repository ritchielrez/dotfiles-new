import Quickshell
import QtQuick
import QtQuick.Layouts

PanelWindow {
    id: bar

    anchors.top: true
    anchors.left: true
    anchors.right: true
    implicitHeight: barHeight
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
            Loader {
                active: true
                sourceComponent: Workspaces {}
            }
        }

        RowLayout {
            id: bar_right

            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            anchors.rightMargin: 10

            Loader {
                active: true
                sourceComponent: Clock {}
            }
        }
    }
}
