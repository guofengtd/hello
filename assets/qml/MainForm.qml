import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3


ColumnLayout {
    TitleBar {
        id: titleBar
        Layout.preferredHeight: 1
        Layout.fillWidth: true
    }

    HostList {
        id: listView
        Layout.preferredHeight: 320
        Layout.fillWidth: true
        Layout.margins: 32
        visible: false
    }

    LoginView {
        id: loginView
        Layout.fillHeight: true
        Layout.fillWidth: true
        visible: true
    }

    Rectangle {
        color: 'transparent'
        Layout.preferredHeight: 1
        Layout.fillHeight: true
        Layout.fillWidth: true
        visible: false
    }

    BottomBar {
        Layout.preferredHeight: 1
        Layout.fillWidth: true
        visible: false
    }
}
