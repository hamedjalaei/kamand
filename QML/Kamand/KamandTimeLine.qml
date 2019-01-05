import QtQuick 2.0

Item {
    id:root

    signal timeOut()
    Rectangle{
        id: back
        anchors.fill: parent
        radius: height
        color: "#009955"
        height: parent.height/4
        width: parent.width
        property int  pl: width*0.01
        anchors.verticalCenter: parent.verticalCente

        Rectangle{
            id:slider
            x:parent.width*0.01
            anchors.verticalCenter: parent.verticalCenter
            width: height
            height: parent.height*0.7
            color: "#ffffff"
            radius: height
            Behavior on width{
                NumberAnimation{
                    duration: 40
                }
            }
        }
        Timer{
            id: tm
            interval: 40
            running: true
            repeat: true
            onTriggered: {
                if(slider.width>=back.width-(back.width*0.025)){
                    tm.stop()
                    timeOut()
                }else{
                    slider.width = slider.width+back.pl
                }
            }

        }
    }
}
