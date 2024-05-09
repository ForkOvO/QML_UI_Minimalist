import QtQuick

// 开关按钮
Item {
    property string checkColor: "green"
    property bool isCheck: false

    id: root

    Rectangle{
        anchors.centerIn: parent
        width: root.width
        height: root.height * 0.6
        radius: height / 2
        color: root.isCheck ? root.checkColor : "gray"

        Behavior on color {
            ColorAnimation {
                duration: 500
            }
        }
    }

    Rectangle{
        x: root.isCheck ? root.width - root.height : 0
        width: root.height
        height: root.height
        radius: height / 2
        color: root.isCheck ? Qt.lighter(root.checkColor) : "lightgray"

        Behavior on x{
            NumberAnimation{
                duration: 500
            }
        }

        Behavior on color {
            ColorAnimation {
                duration: 500
            }
        }
    }

    MouseArea{
        anchors.fill: parent
        onClicked: root.isCheck = !root.isCheck
    }
}
