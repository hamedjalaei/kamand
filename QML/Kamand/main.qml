import QtQuick 2.11
import QtQuick.Window 2.11

Window {
    visible: true
    width: 385
    height: 582
    title: "Kaman"
    flags: Qt.FramelessWindowHint | Qt.Window
    color: "transparent"

    FirstPage{
        width: 100
        height: 20

        onGoToNextPage: {
            console.log(lang)
        }
    }
}
