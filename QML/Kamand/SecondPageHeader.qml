import QtQuick 2.0

Item {
    anchors.margins:5
    signal  minimize()
    Rectangle{
        id: close
        height: parent.height
        width: height
        radius: width
        color: "#00b46d"
        Text {
            text: qsTr("x")
            anchors.centerIn: parent
        }
        anchors.right: parent.right
        anchors.margins:5
        MouseArea{
            anchors.fill: parent
            onClicked: Qt.quit()
        }
    }
    Rectangle{
        id: mini
        height: parent.height
        width: height
        radius: width
        color: "#00b46d"
        Text {
            text: qsTr("-")
            anchors.centerIn: parent
        }
        anchors.right: close.left
        anchors.margins:5
        MouseArea{
            anchors.fill: parent
            onClicked: minimize()
        }
    }
}

