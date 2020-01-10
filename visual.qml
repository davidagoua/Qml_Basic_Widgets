import QtQuick 2.9


Item{
    height:500; width: 700

    Rectangle{
        height: 200
        width: 200
        color: "blue"
        rotation: 45
        anchors{
            centerIn: parent
        }
        Text{
            text: "A"
            color: "white"
            anchors.centerIn: parent
            font{
                pointSize: 40
            }
        }
    }
}