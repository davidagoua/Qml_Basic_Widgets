import QtQuick 2.12
import QtQuick.Layouts 1.12

Item{
    id: root
    height: 500; width: 500

    ColumnLayout{
        spacing: 10

        Rectangle{
            id:rect
            color: "red"
            height: 100; width: 100

            TapHandler{
                onTapped: {rect.color !== 'red' ? rect.color = 'red' : rect.color = 'blue'}
            }
        }



        Rectangle{
            x: 0
            id: rect3
            color: "yellow"
            height: 50; width: 50
            NumberAnimation on x {
                to: 300
                duration: 3000
            }
            PropertyAnimation on color {
                to: "red"
                duration: 3000
            }
        }
    }

    states: [
        State{
            name: "changeRectcolor"
            PropertyChanges{
                target: rect
                color: "blue"
            }
        }
    ]

    transitions: [
        Transition{
            PropertyAnimation{
                target: rect
                properties: "color"
                duration: 2000
            }
        }
    ]
}