import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3


RowLayout {
    Layout.margins: 9

    ToolButton {
        Layout.preferredWidth: 36
        Layout.preferredHeight: 36

        Image {
            width: 24
            height: 24
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            source: "qrc:/images/settings.png"
            fillMode:Image.PreserveAspectFit
        }
    }

    Rectangle {
        color: 'transparent'
        Layout.preferredHeight: 1
        Layout.fillWidth: true
    }
}
