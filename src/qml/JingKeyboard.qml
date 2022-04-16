
/*
 * This file is part of Kalk
 *
 * Copyright (C) 2020 Han Young <hanyoung@protonmail.com>
 *               2021 Bob <pengbo·wu@jingos.com>
 *
 * $BEGIN_LICENSE:GPL3+$
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 * $END_LICENSE$
 */
import QtQuick 2.0
import org.kde.kirigami 2.15 as Kirigami
import QtQuick.Layouts 1.1

GridLayout {
    id: gridLayout

    property bool pureNumber: false
    property real mScale: appWindow.officalScale
    property int leftFontSize: 21 * appFontSize
    property int leftSingleFontSize: 25 * appFontSize
    property int numFontSize: 33 * appFontSize
    property int calFontSize: 35 * appFontSize

    signal pressed(string text)
    signal pressedAndHold(string text)
    signal release(string text)

    columns: 8
    rows: 4
    columnSpacing: 0
    rowSpacing: 0

    NumberButton {
        text: "sin("
        display: "sin"
        onClicked: pressed(text)
        textColor: Kirigami.JTheme.minorForeground
        textSize: leftFontSize
        backgroundColor: Kirigami.JTheme.headerBackground
        iWidth: 91 * mScale
    }
    NumberButton {
        text: "cos("
        display: "cos"
        onClicked: pressed(text)
        textColor: Kirigami.JTheme.minorForeground
        textSize: leftFontSize
        backgroundColor: Kirigami.JTheme.headerBackground
        iWidth: 91 * mScale
    }
    NumberButton {
        text: "tan("
        display: "tan"
        onClicked: pressed(text)
        textColor: Kirigami.JTheme.minorForeground
        textSize: leftFontSize
        backgroundColor: Kirigami.JTheme.headerBackground
        iWidth: 91 * mScale
    }
    NumberButton {
        text: "7"
        onClicked: pressed(text)
        textSize: numFontSize
        backgroundColor: Kirigami.JTheme.cardBackground
        iWidth: 135 * mScale
    }
    NumberButton {
        text: "8"
        textSize: numFontSize
        onClicked: pressed(text)
        backgroundColor: Kirigami.JTheme.cardBackground
        iWidth: 135 * mScale
    }
    NumberButton {
        text: "9"
        textSize: numFontSize
        onClicked: pressed(text)
        backgroundColor: Kirigami.JTheme.cardBackground
        iWidth: 135 * mScale
    }
    NumberButton {
        text: "+"
        textSize: calFontSize
        iWidth: 102 * mScale
        display: "+"
        onClicked: pressed(text)
        textColor: Kirigami.JTheme.highlightLinearColor
        backgroundColor: Kirigami.JTheme.headerBackground
    }
    NumberButton {
        text: "←"
        textSize: calFontSize
        onClicked: pressed(text)
        visible: !pureNumber
        textColor: Kirigami.JTheme.highlightLinearColor
        iWidth: 102 * mScale
        onPressAndHold: gridLayout.pressedAndHold(text)
        onRelease: gridLayout.release(text)
        backgroundColor: Kirigami.JTheme.headerBackground
    }

    // second row
    NumberButton {
        text: "log("
        display: "log"
        onClicked: pressed(text)
        textColor: Kirigami.JTheme.minorForeground
        textSize: leftFontSize
        backgroundColor: Kirigami.JTheme.headerBackground
        iWidth: 91 * mScale
    }
    NumberButton {
        text: "log10("
        display: "log10"
        onClicked: pressed(text)
        textColor: Kirigami.JTheme.minorForeground
        textSize: leftFontSize
        backgroundColor: Kirigami.JTheme.headerBackground
        iWidth: 91 * mScale
    }
    NumberButton {
        text: "log2("
        display: "log2"
        onClicked: pressed(text)
        textColor: Kirigami.JTheme.minorForeground
        textSize: leftFontSize
        backgroundColor: Kirigami.JTheme.headerBackground
        iWidth: 91 * mScale
    }
    NumberButton {
        text: "4"
        textSize: numFontSize
        onClicked: pressed(text)
        backgroundColor: Kirigami.JTheme.cardBackground
        iWidth: 135 * mScale
    }
    NumberButton {
        text: "5"
        textSize: numFontSize
        onClicked: pressed(text)
        backgroundColor: Kirigami.JTheme.cardBackground
        iWidth: 135 * mScale
    }
    NumberButton {
        text: "6"
        textSize: numFontSize
        onClicked: pressed(text)
        backgroundColor: Kirigami.JTheme.cardBackground
        iWidth: 135 * mScale
    }
    NumberButton {
        text: "-"
        textSize: calFontSize
        iWidth: 102 * mScale
        textColor: Kirigami.JTheme.highlightLinearColor
        onClicked: pressed(text)
        visible: !pureNumber
        backgroundColor: Kirigami.JTheme.headerBackground
    }
    NumberButton {
        text: "C"
        textSize: leftSingleFontSize
        iWidth: 102 * mScale
        onClicked: pressed(text)
        textColor: Kirigami.JTheme.highlightLinearColor
        backgroundColor: Kirigami.JTheme.headerBackground
    }

    // third row
    NumberButton {
        text: "√("
        display: "√"
        textSize: leftSingleFontSize
        onClicked: pressed(text)
        textColor: Kirigami.JTheme.minorForeground
        backgroundColor: Kirigami.JTheme.headerBackground
        iWidth: 91 * mScale
    }
    NumberButton {
        text: "π"
        textSize: leftSingleFontSize
        onClicked: pressed(text)
        textColor: Kirigami.JTheme.minorForeground
        backgroundColor: Kirigami.JTheme.headerBackground
        iWidth: 91 * mScale
    }
    NumberButton {
        text: "e"
        textSize: leftSingleFontSize
        onClicked: pressed(text)
        textColor: Kirigami.JTheme.minorForeground
        backgroundColor: Kirigami.JTheme.headerBackground
        iWidth: 91 * mScale
    }
    NumberButton {
        text: "1"
        textSize: numFontSize
        onClicked: pressed(text)
        backgroundColor: Kirigami.JTheme.cardBackground
        iWidth: 135 * mScale
    }
    NumberButton {
        text: "2"
        textSize: numFontSize
        iWidth: 135 * mScale
        onClicked: pressed(text)
        backgroundColor: Kirigami.JTheme.cardBackground
    }
    NumberButton {
        text: "3"
        textSize: numFontSize
        iWidth: 135 * mScale
        onClicked: pressed(text)
        backgroundColor: Kirigami.JTheme.cardBackground
    }
    NumberButton {
        text: "×"
        textSize: calFontSize
        textColor: Kirigami.JTheme.highlightLinearColor
        onClicked: pressed(text)
        visible: !pureNumber
        iWidth: 102 * mScale
        backgroundColor: Kirigami.JTheme.headerBackground
    }
    NumberButton {
        text: "="
        textSize: calFontSize
        onClicked: pressed(text)
        Layout.rowSpan: 2
        backgroundColor: Kirigami.JTheme.highlightColor
        textColor: "#ffffff"
        iWidth: 102 * mScale
        iHeight: appWindow.height * 3 / 5 / 2
    }

    // last row
    NumberButton {
        text: "%"
        textSize: leftSingleFontSize
        onClicked: pressed(text)
        textColor: Kirigami.JTheme.minorForeground
        backgroundColor: Kirigami.JTheme.headerBackground
        iWidth: 91 * mScale
    }

    NumberButton {
        text: "("
        textSize: leftSingleFontSize
        onClicked: pressed(text)
        textColor: Kirigami.JTheme.minorForeground
        backgroundColor: Kirigami.JTheme.headerBackground
        iWidth: 91 * mScale
    }
    NumberButton {
        text: ")"
        textSize: leftSingleFontSize
        onClicked: pressed(text)
        textColor: Kirigami.JTheme.minorForeground
        backgroundColor: Kirigami.JTheme.headerBackground
        iWidth: 91 * mScale
    }

    NumberButton {
        text: "^"
        display: "xʸ"
        textSize: numFontSize
        iWidth: 135 * mScale
        onClicked: pressed(text)
        visible: !pureNumber
        backgroundColor: Kirigami.JTheme.cardBackground
    }

    NumberButton {
        text: "0"
        textSize: numFontSize
        iWidth: 135 * mScale
        onClicked: pressed(text)
        backgroundColor: Kirigami.JTheme.cardBackground
    }

    NumberButton {
        text: "."
        textSize: numFontSize
        iWidth: 135 * mScale
        onClicked: pressed(text)
        backgroundColor: Kirigami.JTheme.cardBackground
    }

    NumberButton {
        iWidth: 102 * mScale
        text: "÷"
        textSize: calFontSize
        onClicked: pressed(text)
        textColor: Kirigami.JTheme.highlightLinearColor
        visible: !pureNumber
        backgroundColor: Kirigami.JTheme.headerBackground
    }
}
