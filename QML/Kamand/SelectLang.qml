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
<<<<<<< Updated upstream
            caption : "English "
=======
            caption : "English"
>>>>>>> Stashed changes
            selected:  sl.lang
            onSelect: {
                sl.lang = true
                selectedLang(sl.lang)
            }
        }
        KamandRadioBtn{
            width: parent.width
            height: parent.height
<<<<<<< Updated upstream
            caption:qsTr("Persian ")
=======
            caption:qsTr("Persian")
>>>>>>> Stashed changes
            selected:  !sl.lang
            onSelect: {
                sl.lang = false
                selectedLang(sl.lang)
            }
        }
    }
}
