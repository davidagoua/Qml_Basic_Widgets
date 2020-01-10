import QtQuick 2.12
import QtQuick.Layouts 1.12


Item{
    height: 500
    width: 500

    GridLayout{
        columns: 3

        Repeater{
            model: ["red","blue","yellow","pink","skyblue"]
            delegate:Rectangle{
                color: modelData
                height: 50; width:50
            }
        }
    }
}