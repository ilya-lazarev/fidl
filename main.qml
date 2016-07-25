import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.1

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    menuBar: MenuBar {
        Menu {
            title :qsTr("File")
            MenuItem {
                id: quitCommand
                text: qsTr("Quit")
                shortcut: "Ctrl+Q"
            }
        }
        Menu {
            title :qsTr("Edit")
            MenuItem {
                text: qsTr("Copy")
                shortcut: "Ctrl+C"
            }
        }
    }

    toolBar: ToolBar {
        RowLayout {
            anchors.fill: parent
            ToolButton {
                id: tbExit
                text: qsTr("Exit")
                onClicked: {
                //    quitCommand.
                }
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
