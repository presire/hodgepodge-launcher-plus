/*
 * SPDX-FileCopyrightText: 2026 Hodgepodge Launcher Plus contributors
 *
 * SPDX-License-Identifier: GPL-2.0-or-later
 */

import QtQuick
import org.kde.kirigami as Kirigami

// Rounded highlight that follows the theme colors.
// Drop-in replacement for PlasmaExtras.Highlight.
Item {
    id: root

    // Set automatically when used in a ListView and GridView
    property bool hovered: ListView.view !== null || GridView.view !== null
    property bool pressed: false
    // Set to false to mark a current item that is not focused
    property bool active: true
    // Gap around the highlight, so that grid cells look like cards
    property real inset: 0

    width: {
        const view = ListView.view;
        return view ? view.width - view.leftMargin - view.rightMargin : undefined;
    }

    Rectangle {
        anchors.fill: parent
        anchors.margins: root.inset

        radius: Kirigami.Units.cornerRadius * 2
        // Delegates use highlightedTextColor while pressed, so keep it readable.
        // No color animation: the background must change together with the text.
        color: root.pressed ? Kirigami.Theme.highlightColor
            : Qt.alpha(Kirigami.Theme.highlightColor, root.hovered ? 0.2 : 0.12)
        border.width: 1
        border.color: Qt.alpha(Kirigami.Theme.highlightColor, root.hovered ? 0.35 : 0.2)
        opacity: root.active ? 1 : 0.6

        Behavior on opacity {
            enabled: Kirigami.Units.shortDuration > 0
            NumberAnimation {
                duration: Kirigami.Units.shortDuration
                easing.type: Easing.OutCubic
            }
        }
    }
}
