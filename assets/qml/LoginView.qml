import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Item {
    Rectangle {
        width: 380
        height: 320
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        Image {
            anchors.fill: parent
            source: "qrc:/images/background.png"
            fillMode:Image.PreserveAspectFill
        }

        ColumnLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true

            TextField {
                Layout.margins: 9
                Layout.preferredHeight: 48
                Layout.fillWidth: true
            }

            TextField {
                Layout.margins: 9
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
        }
    }
}
