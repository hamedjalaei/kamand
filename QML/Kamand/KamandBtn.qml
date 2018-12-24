import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {
    property string txt: "Btn"
    property color col  : "#009955"
    property color shadow: Qt.lighter(col)
    signal  clk()
    Rectangle{
        id: en
        radius: 5
        width: parent.width
        height: parent.height
        color: col

        Text {
            text: txt
            color: "#ffffff"
            anchors.centerIn: parent
            font.family: ftn.name
            FontLoader{
                id: ftn
                source: "qrc:/font/font/zekton rg.ttf"
            }
        }

        NumberAnimation on scale{
            id: ani1
            from: 1.5
            to: 1
            duration: 250
        }
        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            onClicked: {
                ani1.start()
                fashani1.start()
                clk()
            }
            onEntered: {
                fash1.visible = true
            }
            onExited: {
                fash1.visible = false
            }
        }

    }
    DropShadow {
        id:fash1
        anchors.fill: en
        horizontalOffset: 0
        verticalOffset: 0
        radius: 8.0
        samples: 8
        color: shadow
        source: en
        smooth: true
        visible: false
        NumberAnimation on scale{
            id: fashani1
            from: 1.5
            to: 1
            duration: 250
        }
    }
}
