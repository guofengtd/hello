import QtQuick 2.6
import QtQuick.Controls 6.2

Rectangle {
    color: "transparent"

    Column {
        id: column
        anchors.fill: parent
        anchors.rightMargin: 9
        anchors.leftMargin: 9
        anchors.bottomMargin: 9
        anchors.topMargin: 9

        Row {
            id: topBar
            height: 60
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            layoutDirection: Qt.RightToLeft
            spacing: 8
            anchors.topMargin: 0
            rotation: 0
        }

        ListView {
            id: listView
            height: 160
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: topBar.bottom
            anchors.rightMargin: 9
            anchors.leftMargin: 9
            anchors.topMargin: 9
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

        Row {
            id: bottomBar
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: listView.bottom
            anchors.bottom: parent.bottom
            transformOrigin: Item.Center
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.bottomMargin: 0
            anchors.topMargin: 9
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:2}D{i:3}D{i:13}D{i:1}
}
##^##*/

