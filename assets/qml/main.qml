import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0
import QtQuick.Controls.Styles 1.2

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    flags: Qt.Dialog | Qt.FramelessWindowHint

    background: Image {
        anchors.fill: parent
        source: 'qrc:/images/background.png'
    }

    header: RowLayout {
        id: barLayout
        height: 72
        width: parent.width

        Rectangle {
            color: '#00ff0000'
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 10
        }

        ColumnLayout {
            spacing: 0
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 5

            Rectangle {
                color: '#0000ff00'
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.preferredHeight: 8
            }

            Rectangle {
                color: '#0000ffff'
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.preferredHeight: 8
                RowLayout {
                    anchors.fill: parent
                    spacing: 0
                    Rectangle {
                        color: '#00ff00ff'
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        Layout.preferredHeight: 2

                        ToolButton {
                            id: settingToolButton
                            objectName: 'settingToolButton'
                            anchors.centerIn: parent
                            Image {
                                width: 24
                                height: 24
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.horizontalCenter: parent.horizontalCenter
                                source: "qrc:/images/settings.png"
                                fillMode:Image.PreserveAspectFit
                            }

                            onClicked: {
                                var compMainPage = Qt.createComponent("Settings.qml").createObject(frmWindow, {x:0, y:0, width:frmWindow.width, height:frmWindow.height})
                                utility.log4qml("settings.qml click")
                            }
                        }
                    }

                    Rectangle {
                        color: '#0000ffff'
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        Layout.preferredHeight: 2

                        ToolButton {
                            id: wifiToolButton
                            objectName: 'wifiToolButton'
                            anchors.centerIn: parent
                            enabled: false
                            Image {
                                width: 24
                                height: 24
                                anchors.verticalCenter: parent.verticalCenter
                                //anchors.horizontalCenter: parent.horizontalCenter
                                source: "qrc:/images/wifi.png"
                                fillMode:Image.PreserveAspectFit
                            }

                            //onClicked: stack.pop()
                        }
                    }

                    Rectangle {
                        color: '#00ffff00'
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        Layout.preferredHeight: 3

                        Rectangle {
                            anchors.fill: parent
                            anchors.leftMargin: 0
                            anchors.topMargin: 4
                            anchors.rightMargin: 0
                            anchors.bottomMargin: 4
                            color: '#00ff0000'
                            border.color: '#ff0f8c3d'
                            border.width: 1
                            radius: 5
                            Text {
                                id: name22222
                                anchors.fill: parent
                                text: qsTr("本控")
                                color: '#ff0f8c3d'
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }
                        }
                    }

                    Rectangle {
                        color: '#000000ff'
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        Layout.preferredHeight: 3
                    }
                }
            }

            Rectangle {
                color: '#00ff00ff'
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.preferredHeight: 1
            }
        }


    }

    MainForm {
        anchors.fill: parent
        mouseArea.onClicked: {
            console.log(qsTr('Clicked on background. Text:'))
        }
    }
}
