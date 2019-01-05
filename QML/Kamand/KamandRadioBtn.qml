import QtQuick 2.0

Item {
    property string txt
    property bool selected
    signal  select()
    anchors.horizontalCenter: parent.horizontalCenter



    Item{
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width
        Text {
            text: txt
            color: "#10ef61"
            font.family: ftn.name
            FontLoader{
                id: ftn
                source: "qrc:/font/font/zekton rg.ttf"
            }
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
        }
        Image {
            source: selected==true?"qrc:/publicPic/publicPic/18.png":"qrc:/publicPic/publicPic/19.png"
            width: sourceSize.width*0.6
            height: sourceSize.height*.6
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    select()
                }
            }
        }
    }
}
