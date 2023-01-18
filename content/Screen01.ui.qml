

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.2
import QtQuick.Controls 6.2
import Launcher
import QtQuick.Layouts 1.0

Rectangle {

    width: 460
    height: 650
    color: "#1f2023"
    border.color: "#ffffff"

    ColumnLayout {
        x: 150
        y: 65
        spacing: 50
        Mainlogo {
            id: mainlogo
        }
    }

    ColumnLayout {
        x: 145
        y: 173
        spacing: 60
        IpDisplay {
            id: ipDisplay
        }

        MainButton {
            id: mainButton
            state: "start"
        }
    }

    ColumnLayout {
        x: 28
        y: 487
        Status {
            id: statusIndicator
            state: "started"
        }

        Status {
            id: statusIndicator1
            state: "loading"
        }
    }
}
