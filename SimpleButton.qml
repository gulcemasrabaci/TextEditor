import QtQuick 2.9 //This line must exist for every QML file
import QtQuick.Window 2.2

/*Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
}*/

Rectangle {
    id: simpleButton
    color: "grey"
    width: 150; height: 75

    Text {
        id: buttonLabel
        anchors.centerIn: parent
        text: "button label"
    }

    MouseArea {
        id: buttonMouseArea
        anchors.fill: parent //anchor all sides of the mouse area to rectangle's anchors
        onClicked: console.log(buttonLabel.text + " clicked")
    }
}
