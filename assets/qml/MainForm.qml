import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3


ColumnLayout {
    TitleBar {
        id: titleBar
        Layout.preferredHeight: 32
        Layout.fillWidth: true
    }

    ListView {
        id: listView
        Layout.preferredHeight: 320
        Layout.fillWidth: true
        Layout.margins: 32

        delegate: Item {
            x: 5
            width: 80
            height: 40
            Row {
                id: row1
                Rectangle {
                    width: 40
                    height: 40
                    color: colorCode
                }

                Text {
                    text: name
                    anchors.verticalCenter: parent.verticalCenter
                    font.bold: true
                }
                spacing: 10
            }
        }
        model: ListModel {
            ListElement {
                name: "Grey"
                colorCode: "grey"
            }

            ListElement {
                name: "Red"
                colorCode: "red"
            }

            ListElement {
                name: "Blue"
                colorCode: "blue"
            }

            ListElement {
                name: "Green"
                colorCode: "green"
            }
        }
    }

    Rectangle {
        color: 'transparent'
        Layout.preferredHeight: 1
        Layout.fillHeight: true
        Layout.fillWidth: true
    }

    Rectangle {
        color: 'purple'
        Layout.preferredHeight: 72
        Layout.fillWidth: true
    }
}
