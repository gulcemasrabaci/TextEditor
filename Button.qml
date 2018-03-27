import QtQuick 2.9 //This line must exist for every QML file
import QtQuick.Window 2.2

/*Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
}*/

Rectangle {
    id: button
    //color: "grey"
    width: 150; height: 75

    property color buttonColor: "lightblue"
    property color onHoverColor: "gold"
    property color borderColor: "white"

    signal buttonClick()

    // All signals have their handlers automatically created,
    //their names starting with on. As a result,
    //the onButtonClick is buttonClick's handler.

    onButtonClick: {
        console.log(buttonLabel.text + " clicked")
    }

    Text {
        id: buttonLabel
        anchors.centerIn: parent
        text: "button label"
    }

    MouseArea {
        id: buttonMouseArea
        onClicked: buttonClick()
        hoverEnabled: true
        onEntered: parent.border.color = onHoverColor
        onExited: parent.border.color = borderColor
    }

    color: buttonMouseArea.pressed ? Qt.darker(buttonColor, 1.5) : buttonColor
}
