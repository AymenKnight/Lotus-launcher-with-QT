

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Timeline 1.0

Rectangle {
    id: statusIndicator
    objectName: "statusIndicator"
    width: 30
    height: 30
    radius: 100
    border.color: "#ffffff"
    color: "transparent"
    border.width: 2

    Image {
        id: image
        x: 9
        y: 9
        width: 12
        height: 12
        fillMode: Image.PreserveAspectFit
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                onFinished: statusIndicator.state = "loading"
                duration: 750
                running: false
                loops: -1
                to: 1000
                from: 0
            }
        ]
        endFrame: 1000
        enabled: false
        startFrame: 0

        KeyframeGroup {
            target: image
            property: "rotation"
            Keyframe {
                frame: 0
                value: 0
            }

            Keyframe {
                frame: 249
                value: 90
            }

            Keyframe {
                frame: 500
                value: 180
            }

            Keyframe {
                frame: 752
                value: 270
            }

            Keyframe {
                frame: 997
                value: 360
            }
        }
    }

    states: [
        State {
            name: "stopped"
            PropertyChanges {
                target: statusIndicator
                border.color: "#646D8D"
            }
            PropertyChanges {
                target: image

                source: "images/x_mark.svg"
            }
        },
        State {
            name: "loading"
            PropertyChanges {
                target: statusIndicator
                border.color: "#F2994A"
            }
            PropertyChanges {
                target: image
                x: 7
                y: 7
                source: "images/loading_circle.svg"

                width: 17
                height: 17
            }


            PropertyChanges {
                target: timelineAnimation
                running: true
            }

            PropertyChanges {
                target: timeline
                enabled: true
            }
        },
        State {
            name: "started"
            PropertyChanges {
                target: statusIndicator
                border.color: "#0ACF83"
            }
            PropertyChanges {
                target: image
                x: 7
                y: 7
                width: 17
                height: 17
                source: "images/check_mark.svg"
            }
        }
    ]
}
