import QtQuick 2.9
import QtQuick.Controls 2.9
import QtQuick.Layouts 1.12


Item{
    height:500; width: 500

    StackView{
        id: layout
        anchors.fill: parent
        initialItem: page1

        Component{
            id: page1

            Rectangle{
                anchors.centerIn: parent
                color: "blue"
                height:500; width: 500

                Column{
                    anchors.centerIn: parent
                    spacing: 20

                    Text{
                        text: "Premiere page"
                    }
                    Button{
                        text: "page 2"
                        onClicked: layout.push(page2)
                    }
                }
            }


        }

        Component{
            id: page2

            Rectangle{
                anchors.centerIn: parent
                color: "red"
                height:500; width: 500

                Column{
                    anchors.centerIn: parent
                    spacing: 20

                    Text{
                        text: "Deuxieme page"
                    }
                    Button{
                        text: "page 1"
                        onClicked: layout.pop()
                    }
                }
            }


        }

    }
}