import QtQuick

Item {
    id: root
        height: 80
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right

        Rectangle {
            anchors.fill: parent
            color: "#1a1a1a"
            opacity: 0.5
        }

        Text {
            id: clockText
            text: "12:34"
            color: "while"
            font.pixelSize: 32
            font.bold: true
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.verticalCenter: parent.verticalCenter
        }
}
