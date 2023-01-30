import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3


ListView {
    delegate: Item {
        x: 5
        width: 80
        height: 180
        Row {
            id: row1
            Rectangle {
                width: 400
                height: 180
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
