import QtQuick 2.0

Item {
    id: rd
    property bool selected
    property string caption

    width: parent.width
    height: parent.height

    signal  select()

    Text {
        anchors.left: parent.left
        color: "#10ef61"
        text: caption
        width: parent.width*0.4
        FontLoader{
            id: ftn
            source: "qrc:/font/font/zekton rg.ttf"
        }
    }

    Image {
        source: selected==true?"qrc:/publicPic/publicPic/18.png":"qrc:/publicPic/publicPic/19.png"
        width: sourceSize.width*0.7
        height: sourceSize.height*0.7
        anchors.right: parent.right
        MouseArea{
            anchors.fill: parent
            onClicked: {
                select()
            }
        }
    }

}
