import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0
import QtQuick.Controls.Styles 1.2

ApplicationWindow {
    id: appWindow
    visible: true
    width: 640
    height: 480
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

        property variant clickPos: "1,1"

        onPressed: {
            clickPos  = Qt.point(mouse.x,mouse.y)
        }

        onPositionChanged: {
            var delta = Qt.point(mouse.x-clickPos.x, mouse.y-clickPos.y)
            appWindow.x += delta.x;
            appWindow.y += delta.y;
        }

    }

    MainForm {
        anchors.fill: parent
        
    }
}
