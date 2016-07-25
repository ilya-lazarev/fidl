import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.1

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    Action {
        id: quitAction
        text: qsTr("&Quit")
        shortcut: "Ctrl+Q"
        tooltip: qsTr("Quits application")
        iconName: "application-quit"
        onTriggered: {
            Qt.quit()
        }
    }
    Action {
        id: editCopyAction
        text: qsTr("&Copy")
        shortcut: "Ctrl+C"
        tooltip: qsTr("Copy to clipboard")
        iconName: "edit-copy"
        onTriggered: {
        }
    }

    menuBar: MenuBar {
        Menu {
            title :qsTr("File")
            MenuItem {
                action: quitAction
            }
        }
        Menu {
            title :qsTr("Edit")
            MenuItem {
                action: editCopyAction
            }
        }
    }

    toolBar: ToolBar {
        RowLayout {
            anchors.fill: parent
            ToolButton {
                action: quitAction
            }
            ToolButton {
                action: editCopyAction
            }
        }
    }

    MainForm {
        anchors.fill: parent
        mouseArea.onClicked: {
            Qt.quit();
        }
    }
    statusBar: StatusBar {
        RowLayout {
            anchors.fill: parent
            Label {
                text: qsTrId("Ready")
            }
        }
    }

}
