import QtQuick 2.0

Item {

    property string txt

    Rectangle{
        anchors.fill: parent
        color: "#00b46d"
        radius: 5
        Text {
            text: txt
            anchors.centerIn: parent
            font.family: "vazir"
            color: "#ffffff"
            font.bold: true
            font.pixelSize: parent.height*0.6
        }
    }
    NumberAnimation on scale{
        id: ani
        from: 1.3
        to: 1
        duration: 250
    }
    MouseArea{
        anchors.fill: parent
        onClicked: {
            ani.start()
        }
    }
}
