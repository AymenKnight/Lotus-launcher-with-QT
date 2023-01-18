

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.0

Rectangle {
    id: status
    objectName: "status"
    width: 260
    height: 50
    color: "#18191C"
    radius: 35
    border.color: "#ffffff"

    RowLayout {
        x: 17
        y: 10

        StatusIndicator {
            id: statusIndicator
        }

        RowLayout {
            Text {
                id: serviceName
                color: "#ffffff"
                objectName: "serviceName"
                text: qsTr("Clinicord services")
                font.pixelSize: 16
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                lineHeight: 16
                Layout.preferredHeight: 16
                font.weight: Font.Medium
            }

            Text {
                id: stateText
                color: "#ffffff"

                font.pixelSize: 16
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                lineHeight: 16
                Layout.preferredHeight: 16
                font.weight: Font.Medium
            }
        }
    }
    states: [
        State {
            name: "stopped"
            PropertyChanges {
                target: statusIndicator
                state: "stopped"
            }
            PropertyChanges {
                target: stateText
                text: qsTr("- stopped")
            }
        },
        State {
            name: "loading"
            PropertyChanges {
                target: statusIndicator
                state: "loading"
            }
            PropertyChanges {
                target: stateText
                text: qsTr("- running")
            }
        },
        State {
            name: "started"
            PropertyChanges {
                target: statusIndicator
                state: "started"
            }
            PropertyChanges {
                target: stateText
                text: qsTr("- started")
            }
        }
    ]
}
