import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0


ApplicationWindow {
    id: appWindow
    visible: true
    width: 900
    height: 650
    title: qsTr("Hello World")
    flags: Qt.Dialog | Qt.FramelessWindowHint

    property alias mouseArea: mouseArea

    background: Image {
        anchors.fill: parent
        source: 'qrc:/images/background.png'
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent

        property variant clickPos: Qt.point(1, 1)

        onPressed: function(mouse) {
            clickPos  = Qt.point(mouse.x,mouse.y)
        }

        onPositionChanged: function(mouse) {
            var delta = Qt.point(mouse.x-clickPos.x, mouse.y-clickPos.y)
            appWindow.x += delta.x;
            appWindow.y += delta.y;
        }
    }

    MainForm {
        anchors.fill: parent
    }
}
