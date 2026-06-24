import Quickshell.Services.Pipewire
import QtQuick
import QtQuick.Layouts

import "../../styles/"

Rectangle {
  id: volume
  property var sink: Pipewire.defaultAudioSink

  readonly property bool ready: sink && sink.ready
  readonly property bool muted: ready && sink.audio.muted
  readonly property int vol: ready ? Math.round(sink.audio.volume * 100) : 0

  required property int barHeight
  color: Colors.orange
  implicitWidth: volume_icon_text.implicitWidth + volume_text.implicitWidth + 20
  implicitHeight: barHeight
  radius: 5

  RowLayout {
    spacing: 7
    anchors.centerIn: parent

    readonly property string icon: {
      if (!volume.ready || volume.muted) {
        return "";
      }

      if (volume.vol === 0) {
        return "";
      } else if (volume.vol < 75) {
        return "";
      } else {
        return "";
      }
    }

    Text {
      id: volume_icon_text
      text: parent.icon
      color: Colors.bg
      font.family: FontCfg.family
      font.pixelSize: FontCfg.size
    }

    Text {
      id: volume_text
      text: {
        if (!volume.ready) {
          return "-";
        }

        if (volume.muted) {
          return "muted";
        }

        return volume.vol + "%";
      }
      color: Colors.bg
      font.family: FontCfg.family
      font.pixelSize: FontCfg.size
    }

    PwObjectTracker {
      property var sink: Pipewire.defaultAudioSink
      objects: [sink]
    }
  }

  MouseArea {
    anchors.fill: parent
    cursorShape: Qt.PointingHandCursor
    onClicked: volume.sink.audio.muted = !volume.sink.audio.muted
    onWheel: event => volume.sink.audio.volume -= event.angleDelta.y / 120 * 0.05
  }
}
