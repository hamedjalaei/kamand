import QtQuick 2.0

Item {
    anchors.fill: parent
    signal  minimiz()
    Image {
        id: backGround
        anchors.centerIn: parent
        height: parent.height
        width: parent.width
        source: "qrc:/firstPage/first page/background.png"
    }
    SecondPageHeader{
        id:head
        width: parent.width
        height: parent.height/30
        anchors.top: parent.top
        onMinimize: minimiz()
    }
    Column{
        width: parent.width/1.3
        height: parent.height/1.8
        spacing: 10
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: head.bottom

        Image {
            id: logo
            source: "qrc:/firstPage/first page/logo2.png"
            width: sourceSize.width*0.07
            height: sourceSize.height*0.07
            anchors.horizontalCenter: parent.horizontalCenter
        }

        KamandBtn{
            id: p1
            width: parent.width
            height: parent.height/10
            txt:"جستجوی دستور"
        }
        KamandBtn{
            id: p2
            width: parent.width
            height: parent.height/10
            txt:"جستجوی در متن"
        }
        KamandBtn{
            id: p3
            width: parent.width
            height: parent.height/10
            txt:"نمایش کل دستورات"
        }
        KamandBtn{
            id: p4
            width: parent.width
            height: parent.height/10
            txt:"دستورات پر مصرف"
        }
        KamandBtn{
            id: p5
            width: parent.width
            height: parent.height/10
            txt:"ویکی"
        }
        KamandBtn{
            id: p6
            width: parent.width
            height: parent.height/10
            txt:"ویدیو و پادکست"
        }
        KamandBtn{
            id: p7
            width: parent.width
            height: parent.height/10
            txt:"مشارکت"
        }
        KamandBtn{
            id: p8
            width: parent.width
            height: parent.height/10
            txt:"تنظیمات"
        }
        KamandUpdateBtn{
            id: p9
            width: parent.width
            height: parent.height/10
            txt: "به روزرسانی نرم افزار"
        }

    }
}
