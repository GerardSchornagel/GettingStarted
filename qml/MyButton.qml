import QtQuick 2.0

Rectangle {
    width: 100
    height: 50
    color: "#32665a"

    Text {
        text: "Add 1"
        color: "white"
        anchors.centerIn: parent
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            textScore++
        }
    }
}
