import QtQuick 2.11
import QtQuick.Window 2.11

Window {
    visible: true
    width: 385
    height: 582
    title: "Kaman"
    flags: Qt.FramelessWindowHint | Qt.Window
    color: "transparent"

    FirstPageV2{
        width: 100
        height: 20

        onNextPage: {
            console.log(lang)
        }
    }
}
