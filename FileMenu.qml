import QtQuick 2.9
import QtQuick.Window 2.2
import "Button.Button.qml"
//??????????????????

/*Item {

}*/

Row {
    anchors.centerIn: parent
    spacing: parent.width / 6

    Button {
        id: loadButton
        buttonColor: "lightgrey"
        label: "Load"

    }

    Button {
        id: saveButton
        buttonColor: "grey"
        label: "Save"
    }

    Button{
       id: exitButton
       buttonColor: "darkgrey"
       label: "Exit"

       onButtonClick: Qt.quit()
    }

}
