import VPlay 2.0
import QtQuick 2.0

GameWindow {
    id: gameWindow

    screenWidth: 960
    screenHeight: 640

    property int textScore: 0

    Scene {
        id: scene

        // the "logical size" - the scene content is auto-scaled to match the GameWindow size
        width: 480
        height: 320

        Rectangle {
            anchors.fill: scene.gameWindowAnchorItem
            color: "#324566"

        }

        Text{
            text: "Score " + textScore
            color: "white"
            anchors.horizontalCenter: scene.gameWindowAnchorItem.horizontalCenter
            anchors.top: scene.gameWindowAnchorItem.top
        }

        Column {
            anchors.centerIn: parent
            spacing: 10
            MyButton {
                labelText: "Add 1"
                onClicked: {
                    scene.increaseScore(1)
                }
            }

            MyButton {
                labelText: "Add 10"
                onClicked: {
                    scene.increaseScore(10)
                }
            }
        }

        Timer {
            interval: 1000
            repeat: true
            running: true
            onTriggered: {
                scene.increaseScore(1)
            }
        }

        Image {
            id:image
            source: "../assets/vplay-logo.png"
            width: 100
            height: 100
            x: 0
            y: 0
        }

        SequentialAnimation{
            id:numberAnimation

            NumberAnimation {
                target: image
                property: "x"
                from: 0
                to: 15
                duration: 150
            }

            NumberAnimation {
                target: image
                property: "x"
                from: 15
                to: 0
                duration: 150
            }


    }
        function increaseScore(amount) {
            textScore += amount
        numberAnimation.start()
        }
    }
}
