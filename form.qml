import QtQuick 2.9
import QtQuick.Controls 2.9
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.12

ApplicationWindow{
    visible: true
    height:500; width: 300
    title: "App Action"

    Item{
    id: root
    anchors.fill: parent


    ColumnLayout{
        anchors.centerIn: parent
        spacing: 20

        ToolBar {
            width: 500
            RowLayout {
                anchors.fill: parent
                ToolButton {
                    text: qsTr("‹")
                    onClicked: stack.pop()
                }
                Label {
                    text: "Title"
                    elide: Label.ElideRight
                    horizontalAlignment: Qt.AlignHCenter
                    verticalAlignment: Qt.AlignVCenter
                    Layout.fillWidth: true
                }
                ToolButton {
                    text: qsTr("⋮")
                    onClicked: menu.open()
                }
            }
        }

        Rectangle{
            height: 50
            width: parent.width
            Text{
                anchors.fill: parent
                text: "Login"
                color: "blue"
                font{
                    pointSize: 25
                    family: "algerian"
                }
                Layout.alignment: Qt.AlignVCenter
            }
            Layout.alignment: Qt.AlignCenter
        }

        ColumnLayout{
            spacing: 15
            TextField{
                placeholderText: "Nom d'utilisateur"
            }
            TextField{
                placeholderText: "Mot de passe"
                echoMode: TextInput.Password
            }
            Switch{
                id: actif
                text: "Activer"
            }
            Button{
                text: "Se connecter"
            }
        }
    }


}
}