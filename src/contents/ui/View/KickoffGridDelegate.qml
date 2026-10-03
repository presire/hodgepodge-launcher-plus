/*
 * SPDX-FileCopyrightText: 2011 Martin *Gräßlin <mgraesslin@kde.org>
 * SPDX-FileCopyrightText: 2012 Gregor Taetzner <gregor@freenet.de>
 * SPDX-FileCopyrightText: 2014 Sebastian Kügler <sebas@kde.org>
 * SPDX-FileCopyrightText: 2015-2018 Eike Hein <hein@kde.org>
 * SPDX-FileCopyrightText: 2021 Mikel Johnson <mikel5764@gmail.com>
 * SPDX-FileCopyrightText: 2021 Noah Davis <noahadvs@gmail.com>
 * SPDX-FileCopyrightText: 2022 Nate Graham <nate@kde.org>
 * SPDX-FileCopyrightText: Gabriel Tenita <g1704578400@tenita.eu@tenita.eu>
 *
 * SPDX-License-Identifier: GPL-2.0-or-later
*/

pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Layouts

import org.kde.plasma.components as PComponents
import org.kde.kirigami as Kirigami

import "../Helper"

AbstractKickoffItemDelegate {
    id: root

    // Set by the grid view; the singleton's measuring delegate keeps it false
    property bool isCommentVisible: false
    property int commentLineCount: 1

    leftPadding: Global.listItemMetrics.margins.left
    rightPadding: Global.listItemMetrics.margins.right
    topPadding: Kirigami.Units.smallSpacing * 2
    bottomPadding: Kirigami.Units.smallSpacing * 2

    labelTruncated: label.truncated
    descriptionVisible: descriptionLabel.visible
    descriptionTruncated: descriptionLabel.truncated

    // With comments shown, a truncated name needs the tooltip even if the comment fits
    PComponents.ToolTip.text: {
        if (root.labelTruncated && (root.isCommentVisible || root.descriptionTruncated)) {
            return root.model.display
        } else if (root.descriptionTruncated || !root.descriptionVisible) {
            return root.description
        }
        return ""
    }

    dragIconItem: iconItem

    contentItem: ColumnLayout {
        spacing: root.spacing

        Kirigami.Icon {
            id: iconItem
            implicitWidth: root.icon.width
            implicitHeight: root.icon.height
            Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom

            animated: false
            selected: root.iconAndLabelsShouldlookSelected
            source: root.decoration || root.icon.name || root.icon.source

            // Enlarge slightly on hover
            scale: root.mouseArea.containsMouse && !root.down ? 1.08 : 1
            Behavior on scale {
                enabled: Kirigami.Units.shortDuration > 0
                NumberAnimation {
                    duration: Kirigami.Units.shortDuration
                    easing.type: Easing.OutCubic
                }
            }
        }

        PComponents.Label {
            id: label
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            Layout.fillWidth: true
            Layout.preferredHeight: implicitHeight * (lineCount === 1 ? 2 : 1)

            text: root.text
            textFormat: Text.PlainText
            elide: Text.ElideRight
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            maximumLineCount: 2
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            color: root.iconAndLabelsShouldlookSelected ? Kirigami.Theme.highlightedTextColor : Kirigami.Theme.textColor
        }

        PComponents.Label {
            id: descriptionLabel
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            Layout.fillWidth: true
            // Keep the same height for short comments
            Layout.preferredHeight: implicitHeight * (lineCount === 1 ? root.commentLineCount : 1)

            // Kept even when empty, so that every item has the same layout
            visible: root.isCommentVisible

            text: root.description
            textFormat: Text.PlainText
            elide: Text.ElideRight
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            maximumLineCount: root.commentLineCount
            wrapMode: root.commentLineCount > 1 ? Text.Wrap : Text.NoWrap
            font: Kirigami.Theme.smallFont
            color: root.iconAndLabelsShouldlookSelected ? Kirigami.Theme.highlightedTextColor : Kirigami.Theme.textColor
        }
    }
}
