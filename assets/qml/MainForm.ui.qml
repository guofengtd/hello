import QtQuick 2.6

Rectangle {
    property alias mouseArea: mouseArea

    color: "transparent"

    MouseArea {
        id: mouseArea
        anchors.fill: parent

        
    }

    Row {
            id: row
            transformOrigin: Item.Center
            anchors.rightMargin: 9
            anchors.leftMargin: 9
            anchors.bottomMargin: 9
            anchors.topMargin: 9
            anchors.fill: parent
        }
}
