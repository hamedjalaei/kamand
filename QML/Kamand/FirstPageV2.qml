import QtQuick 2.0
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0

Item {
    id:rootBackgroud
    anchors.fill: parent

    signal  nextPage(bool lang)

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
        y: parent.height/4*2.3
        width: parent.width/2
        height: parent.height/3
        spacing: parent.height/15
        anchors.horizontalCenter: parent.horizontalCenter

        SelectLang{
            id: sl
        }

        AnimatedImage {
            id: pointLint
            source: "qrc:/publicPic/publicPic/pointLine.gif"
            anchors.horizontalCenter: parent.horizontalCenter
            onFrameChanged: {
                if(pointLint.currentFrame===pointLint.frameCount-1){
                    nextPage(sl.lang)
                    pointLint.playing=false
                }
            }
        }
    }

    KamandCheckBox{

    }
}
