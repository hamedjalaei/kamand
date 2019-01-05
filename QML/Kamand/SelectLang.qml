import QtQuick 2.0

Item {
    id:selectLangPArt
    height: parent.height/2
    width: parent.width
    anchors.horizontalCenter: parent.horizontalCenter
    property bool lang: true
    Column{
        spacing: 1
        height: parent.height
        width: parent.width
        anchors.horizontalCenter: parent.horizontalCenter
        KamandRadioBtn{
            height: parent.height/5
            width: parent.width/2.5
            anchors.horizontalCenter: parent.horizontalCenter
            txt:"English"
            selected: lang
            onSelect: {
                selectLangPArt.lang = true
                console.log("P")
            }
        }
        KamandRadioBtn{
            height: parent.height/5
            width: parent.width/2.5
            anchors.horizontalCenter: parent.horizontalCenter
            txt:"Persian"
            selected: !lang
            onSelect: {
                selectLangPArt.lang = false
                console.log("E")
            }
        }
    }
}
