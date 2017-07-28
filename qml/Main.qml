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
                    textScore++
                }
            }

            MyButton {
                labelText: "Add 10"
                onClicked: {
                    textScore += 10
                }
            }
        }
    }
}
