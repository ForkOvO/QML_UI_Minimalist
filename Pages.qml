import QtQuick

// 控制显示各个页面
Rectangle {
    property int pageIndex: 0

    id: root
    color: "#20000000"

    // 按钮页面
    BtnsPage{
        anchors.fill: parent
        visible: root.pageIndex === 0
    }

    // 进度条页面
    ProgressesPage{
        anchors.fill: parent
        visible: root.pageIndex === 1
    }
}
