import QtQuick 2.9
import QtQuick.Controls 2.9


SwipeView {
    id: view

    currentIndex: 1
    anchors.fill: parent

    Item {
        id: firstPage
        Text{
            text: "First page"
        }
    }
    Item {
        id: secondPage
        Text{
            text: "Second Page"
        }
    }
    Item {
        id: thirdPage
        Text{
            text: "Third page"
        }
    }
}

