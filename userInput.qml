import QtQuick 2.12
import QtGraphicalEffects 1.12


Item{
    height: 500; width: 600

    Repeater{
        model: ["red","blue","green","yellow"]
        delegate:Rectangle{
            id: rect
            height: 100; width: 100; color: modelData
            y: 100 * index
            Keys.onUpPressed: rect.y -= 10
            Keys.onDownPressed: rect.y += 10
            Keys.onRightPressed: rect.x += 10
            Keys.onLeftPressed: rect.x -= 10
            TapHandler{
                onTapped: parent.focus = true
            }
        }
    }

    DropShadow{
        anchors.fill: rect
        source: rect
    }
}