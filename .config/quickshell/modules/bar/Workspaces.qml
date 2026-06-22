import QtQuick
import QtQuick.Layouts

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
