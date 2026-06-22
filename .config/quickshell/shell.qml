import Quickshell
import Quickshell.Wayland
import QtQuick
import QtQuick.Layouts
// This needs to be installed seperately
import Niri

ShellRoot {
    id: root

    property color bg: "#1e1e2e"
    property color bg1: "#181825"
    property color bg2: "#11111b"
    property color fg: "#cdd6f4"
    property color primary: "#cba6f7"
    property color secondary: "#b4befe"

    property string fontFamily: "MartianMono Nerd Font Propo"
    property int fontSize: 12

    property int barHeight: 30

    // Connect to niri ipc using qs-niri module
    Niri {
        id: niri
        Component.onCompleted: connect()
        onConnected: console.log("Connected to niri")
        onErrorOccurred: function (error) {
            console.error("Connection error:", error);
        }
    }

    // Top bar
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

                Rectangle {
                    id: workspaces

                    color: primary
                    implicitWidth: workspacesRow.implicitWidth + 20
                    implicitHeight: barHeight
                    radius: 5

                    RowLayout {
                        id: workspacesRow

                        anchors.centerIn: parent
                        spacing: 15

                        Repeater {
                            model: niri.workspaces

                            delegate: Rectangle {
                                implicitWidth: workspaceText.implicitWidth + 8
                                implicitHeight: workspaceText.implicitHeight + 8
                                color: model.isFocused ? secondary : "transparent"
                                radius: 5

                                Text {
                                    id: workspaceText

                                    anchors.centerIn: parent
                                    text: model.index
                                    color: bg
                                    font.family: fontFamily
                                    font.pixelSize: fontSize

                                    MouseArea {
                                        anchors.fill: parent
                                        cursorShape: Qt.PointingHandCursor
                                        onClicked: niri.focusWorkspaceById(model.id)
                                    }
                                }
                            }
                        }
                    }
                }
            }

            RowLayout {
                id: bar_right

                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                anchors.rightMargin: 10

                Rectangle {
                    id: clock

                    color: fg
                    implicitWidth: clock_text.implicitWidth + 20
                    implicitHeight: barHeight
                    radius: 5

                    Text {
                        id: clock_text

                        color: bg
                        anchors.centerIn: parent
                        font.family: fontFamily
                        font.pixelSize: fontSize

                        text: Qt.formatDateTime(new Date(), "ddd, dd/MM/yy - hh:mm AP")

                        Timer {
                            interval: 60000
                            running: true
                            repeat: true
                            onTriggered: clock.text = Qt.formatDateTime(new Date(), "ddd, dd/MM/yy - hh:mm AP")
                        }
                    }
                }
            }
        }
    }
}
