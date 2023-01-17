import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3


RowLayout {
    Layout.margins: 9

    Rectangle {
        color: 'transparent'
        Layout.preferredHeight: 1
        Layout.fillWidth: true
    }

    ToolButton {
        Layout.preferredWidth: 24
        Layout.preferredHeight: 24

        Image {
            width: 16
            height: 16
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            source: "qrc:/images/person.png"
            fillMode:Image.PreserveAspectFit
        }
    }

    ToolButton {
        Layout.preferredWidth: 24
        Layout.preferredHeight: 24

        Image {
            width: 16
            height: 16
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            source: "qrc:/images/minimize.png"
            fillMode:Image.PreserveAspectFit
        }

        onClicked: {
            appWindow.showMinimized()
        }
    }

    ToolButton {
        Layout.preferredWidth: 24
        Layout.preferredHeight: 24

        Image {
            width: 16
            height: 16
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            source: "qrc:/images/close.png"
            fillMode:Image.PreserveAspectFit
        }

        onClicked: {
            Qt.quit()
        }
    }
}
