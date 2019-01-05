import QtQuick 2.0
import QtQuick.Controls 2.2

Item {

    Row{
        spacing: 10
        width: parent.width
        height: parent.height
        anchors.centerIn: parent
        Text {
            id:lt
            text: qsTr("En")
            anchors.verticalCenter: parent.verticalCenter
            color: "#ffffff"
        }
        Rectangle{
            id: back
            color: "#009955"
            radius: height
            height: parent.height
            width: parent.width*0.8
            property int sts: 1
            Rectangle{
                id:slider
                x:parent.width*0.04
                anchors.verticalCenter: parent.verticalCenter
                width: parent.width*0.5
                height: parent.height*0.7
                color: "#ffffff"
                radius: height
                Behavior on x{
                    NumberAnimation{
                        duration: 250
                    }
                }
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    if(back.sts===0){
                        slider.x = parent.width*0.04
                        back.sts = 1
                    }
                    else{
                        slider.x = parent.width*0.04 + parent.width*0.42
                        back.sts = 0
                    }
                    console.log(back.sts)
                }
            }
        }
        Text {
            text: qsTr("Fa")
            anchors.verticalCenter: parent.verticalCenter
            color: "#ffffff"
        }
    }
}
