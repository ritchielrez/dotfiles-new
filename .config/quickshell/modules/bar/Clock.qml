import Quickshell
import QtQuick

Rectangle {
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

        text: Qt.formatDateTime(clock.date, "ddd, dd/MM/yy - hh:mm AP")

        SystemClock {
            id: clock
            precision: SystemClock.Minutes
        }
    }
}
