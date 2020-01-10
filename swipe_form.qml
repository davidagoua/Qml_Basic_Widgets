import QtQuick 2.9
import QtQuick.Controls 2.9
import QtQuick.Layouts 1.12


ApplicationWindow{
    height: 650; width: 400
    visible: true

    SwipeView{
        id: welcomeView
        anchors.fill: parent
        currentIndex: 0

        Page{
            Rectangle{
                anchors.fill: parent
                gradient: Gradient{
                    GradientStop{ position: 1.0; color: "blue"}
                    GradientStop{ position: 0.0; color: "skyblue"}
                }

                ColumnLayout{
                    spacing: 60
                    anchors.centerIn: parent
                    Layout.alignment: Qt.alignVCenter | Qt.alignHCenter

                    Text{
                        text: "App Action"
                        color: "white"
                        Layout.alignment: Qt.AlignHCenter
                        font{
                            pointSize: 20
                            family: "candara"
                        }
                    }
                    Text{
                        text: "<i> Bienvenue sur l'application. </i>"
                        color: "white"
                        font{
                            pointSize: 15
                            family: "consolas"
                        }
                    }
                    Button{
                        text: "S'inscrire"
                        Layout.alignment: Qt.AlignHCenter
                        onClicked: {
                            welcomeView.currentIndex++
                        }
                    }
                }
            }
        }

        Page{
            Rectangle{
                anchors.fill: parent
                color: "pink"
                gradient: Gradient{
                    GradientStop{ position: 1.0; color: "red"}
                    GradientStop{ position: 0.0; color: "pink"}
                }

                ColumnLayout{
                    spacing: 10
                    Layout.alignment: Qt.alignVCenter | Qt.alignHCenter
                    anchors.centerIn: parent

                    Text{
                        text: "Login"
                        font.pointSize: 20
                        font.family: 'consolas'
                        color: "white"
                        Layout.alignment: Qt.AlignHCenter
                    }
                    TextField{
                        id: usernameTF
                        placeholderText: "Entrez votre nom d'utilisateur"
                    }
                    TextField{
                        placeholderText: "Entrez votre mot de passe"
                        echoMode: TextInput.Password
                    }
                    Button{
                        text: "Se connecter"
                        Layout.alignment: Qt.AlignHCenter
                    }
                    Text{
                        text: usernameTF.text
                        Layout.alignment: Qt.AlignHCenter
                        color: "white"
                        MouseArea{
                        anchors.fill: parent
                            onClicked: welcomeView.currentIndex++
                        }
                    }
                }
            }
        }

        Page{
            Rectangle{
                anchors.fill: parent
                color: "gray"

                ColumnLayout{

                }
            }
        }
    }

    PageIndicator{
        id: welPageIndicator
        count: welcomeView.count
        currentIndex: welcomeView.currentIndex
        anchors.bottom: welcomeView.bottom
        anchors.horizontalCenter: welcomeView.horizontalCenter
    }
}