import QtQuick 2.0
import QtQuick.Controls 2.6
import QtQuick.Layouts 1.3


RowLayout {
    Layout.margins: 9

    Rectangle {
        color: 'transparent'
        Layout.preferredHeight: 1
        Layout.fillWidth: true
    }

    ToolButton {
        Layout.preferredWidth: 32
        Layout.preferredHeight: 32

        Image {
            width: 24
            height: 24
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            source: "qrc:/images/person.png"
            fillMode:Image.PreserveAspectFit
        }
    }

    ToolButton {
        Layout.preferredWidth: 32
        Layout.preferredHeight: 32

        Image {
            width: 24
            height: 24
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            source: "qrc:/images/minimize.png"
            fillMode:Image.PreserveAspectFit
        }
    }

    ToolButton {
        Layout.preferredWidth: 32
        Layout.preferredHeight: 32

        Image {
            width: 24
            height: 24
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            source: "qrc:/images/close.png"
            fillMode:Image.PreserveAspectFit
        }
    }
}
