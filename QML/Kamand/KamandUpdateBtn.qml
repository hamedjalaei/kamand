import QtQuick 2.0

Item {

    property string txt

    Rectangle{
        anchors.fill: parent
        color: "#00b46d"
        radius: 5
        Rectangle{
            height: parent.height/3
            width: height
            radius: width
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            anchors.margins: width
        }

        Rectangle{
            radius: parent.radius
            color:  "#f8e501"
            width: parent.width/2
            height: parent.height
        }
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
