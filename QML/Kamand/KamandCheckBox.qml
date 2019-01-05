import QtQuick 2.0

Item {
    id: check
    width: parent.width/5
    height: parent.height/(4.5*3.5)
    anchors.bottom: parent.bottom
    scale: 0.7
    Rectangle{
        id: ma
        height: parent.height*0.6
        width: height
        anchors.verticalCenter: parent.verticalCenter
        radius: width/8
        color: "#009955"
        Image{
            id:ch
            height: ma.height*0.8
            width: height
            anchors.centerIn: parent
            visible: false
            source: "qrc:/publicPic/publicPic/check.png"
        }
    }
    MouseArea{
        anchors.fill: parent
        onClicked: {
            ch.visible = !ch.visible
        }
    }
    Text {
        text: qsTr("Default Lang")
        color: "#ffffff"
        font.family: ftn.name
        FontLoader{
            id: ftn
            source: "qrc:/font/font/zekton rg.ttf"
        }

        x: ma.width+10
        width: parent.width - ma.width - (parent.width/1.3)
        anchors.verticalCenter: parent.verticalCenter
        scale: 1+(1 - parent.scale) - 0.15
    }
}
