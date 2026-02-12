import QtQuick

Item {
    id: root
        height: 60
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right

        Rectangle {
                anchors.fill: parent
                color: "black"
                opacity: 0.3
            }

        Text {
                id: modeText
                text: "MODE: LISTENING"
                color: "#00E5FF"
                font.pixelSize: 14
                font.family: "Monospace"
                anchors.left: parent.left
                anchors.leftMargin: 20
                anchors.verticalCenter: parent.verticalCenter
            }

        Row {
                spacing: 4
                anchors.right: parent.right
                anchors.rightMargin: 20
                anchors.verticalCenter: parent.verticalCenter
                Repeater {
                    model: 5

                    delegate: Rectangle {
                        width: 4
                        height: Math.random() * 20 + 5
                        color: "#00FF00"
                        radius: 2

                        SequentialAnimation on height {
                                        loops: Animation.Infinite
                                        NumberAnimation {
                                            from: 5; to: Math.random() * 20 + 10;
                                            duration: 300 + Math.random() * 200
                                        }
                                        NumberAnimation {
                                            from: 20; to: 5;
                                            duration: 300
                                        }
                                    }
                    }
                }
            }
}
