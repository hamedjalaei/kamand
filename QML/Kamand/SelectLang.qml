import QtQuick 2.0

Item {
    id: sl
    width: parent.width
    property bool lang: true

    signal  selectedLang(bool lang)

    Column{
        width: parent.width
        height: parent.height/6


        KamandRadioBtn{
            width: parent.width
            height: parent.height
            caption : "English"
            selected:  sl.lang
            onSelect: {
                sl.lang = true
                selectedLang(sl.lang)
            }
        }
        KamandRadioBtn{
            width: parent.width
            height: parent.height
            caption:qsTr("Persian")
            selected:  !sl.lang
            onSelect: {
                sl.lang = false
                selectedLang(sl.lang)
            }
        }
    }
}
