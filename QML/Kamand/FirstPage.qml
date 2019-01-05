import QtQuick 2.0
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0

Item {
    id:rootBackgroud
    anchors.fill: parent

    signal  goToNextPage(bool lang)

    Image {
        id: backGround
        anchors.centerIn: parent
        height: parent.height
        width: parent.width
        source: "qrc:/firstPage/first page/background.png"
    }
    Image {
        id: logo
        source: "qrc:/firstPage/first page/logo2.png"
        smooth: true
        width: height*1.35
        height: parent.height/2.8
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height/12
    }

    Column{
        id: columnBut
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height/4*2.3
        width: parent.width/5
        height: parent.height/4.5
        spacing: parent.height/15

        SelectLang{
            id: sl
            width: parent.width
            height: parent.height
        }

        AnimatedImage{
            source: "qrc:/publicPic/publicPic/pointLine.gif"
            anchors.horizontalCenter: parent.horizontalCenter
            width: sourceSize.width * 0.8
            height: sourceSize.height * 0.8

            onFrameChanged: {
                if(currentFrame === frameCount-1 ){
                    playing = false
                    goToNextPage(sl.lang)
                }
            }
        }

    }

    KamandCheckBox{

    }
}
