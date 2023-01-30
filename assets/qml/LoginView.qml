import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Item {
    Rectangle {
        width: 320
        height: 330
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        color: 'transparent'

        Image {
            anchors.fill: parent
            source: "qrc:/images/login.png"
        }

        ColumnLayout {
            anchors.fill: parent

            Rectangle {
                color: 'transparent'
                Layout.preferredHeight: 1
                Layout.fillWidth: true
                Layout.fillHeight: true
            }

            LoginTextField {
                placeholderText: qsTr("Please input name")
                Layout.preferredHeight: 48
                Layout.fillWidth: true
            }

            LoginTextField {
                placeholderText: qsTr("Please input password")
                Layout.preferredHeight: 48
                Layout.fillWidth: true
            }

            RowLayout {
                Button {

                }

                Button {

                }
            }

            Button {

            }

            Rectangle {
                color: 'transparent'
                Layout.preferredHeight: 1
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
        }
    }
}
