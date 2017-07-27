import VPlay 2.0
import QtQuick 2.0

GameWindow {
    id: gameWindow

    screenWidth: 960
    screenHeight: 640

    Rectangle {
        width: gameWindow.width
        height: gameWindow.height
        color: "Red"
    }

    Scene {
        id: scene

        // the "logical size" - the scene content is auto-scaled to match the GameWindow size
        width: 480
        height: 320

        Rectangle {
            anchors.fill: scene
            color: "blue"
        }
    }
}
