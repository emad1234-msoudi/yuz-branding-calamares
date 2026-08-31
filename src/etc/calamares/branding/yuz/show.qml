/* === This file is part of Calamares - <https://calamares.io> ===
 *
 *   Yuz-OS Edu Installer Slideshow
 *   Theme: Nord / Colloid Dark Minimalist
 */

import QtQuick 2.0
import calamares.slideshow 1.0

Presentation {
    id: presentation

    Timer {
        interval: 12000
        running: true
        repeat: true
        onTriggered: presentation.goToNextSlide()
    }

    // --- Slide 1: Welcome & Mission Statement ---
    Slide {
        Rectangle {
            anchors.fill: parent
            color: "#2e3440"
        }

        Column {
            anchors.centerIn: parent
            spacing: 20
            width: Math.min(parent.width * 0.85, 620)

            Image {
                source: "welcome.png"
                width: Math.min(parent.width * 0.6, 380)
                fillMode: Image.PreserveAspectFit
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                text: "🎓 Yuz-OS: Free, Fast and Open Source Educational Platform"
                color: "#88c0d0"
                font.pixelSize: 18
                font.bold: true
                horizontalAlignment: Text.Center
                anchors.horizontalCenter: parent.horizontalCenter
                wrapMode: Text.WordWrap
                width: parent.width
            }

            Text {
                text: "Free • Fast • Open Source Educational Platform"
                color: "#d8dee9"
                font.pixelSize: 14
                horizontalAlignment: Text.Center
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }

    // --- Slide 2: Educational Vision & Accessibility ---
    Slide {
        Rectangle {
            anchors.fill: parent
            color: "#2e3440"
        }

        Column {
            anchors.centerIn: parent
            spacing: 16
            width: Math.min(parent.width * 0.85, 620)

            Image {
                source: "yuz-logo.png"
                width: 84
                height: 84
                fillMode: Image.PreserveAspectFit
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                text: "Modern Digital Classrooms"
                color: "#81a1c1"
                font.pixelSize: 20
                font.bold: true
                horizontalAlignment: Text.Center
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                text: "Helping schools build modern digital classrooms using Debian and Free Software."
                color: "#eceff4"
                font.pixelSize: 15
                horizontalAlignment: Text.Center
                anchors.horizontalCenter: parent.horizontalCenter
                wrapMode: Text.WordWrap
                width: parent.width
            }

            Text {
                text: "Education should be accessible, modern, and open to everyone."
                color: "#a3be8c"
                font.pixelSize: 14
                font.italic: true
                horizontalAlignment: Text.Center
                anchors.horizontalCenter: parent.horizontalCenter
                wrapMode: Text.WordWrap
                width: parent.width
            }
        }
    }

    // --- Slide 3: Solid Foundation & Progress ---
    Slide {
        Rectangle {
            anchors.fill: parent
            color: "#2e3440"
        }

        Column {
            anchors.centerIn: parent
            spacing: 16
            width: Math.min(parent.width * 0.85, 620)

            Text {
                text: "Built on Debian GNU/Linux"
                color: "#ebcb8b"
                font.pixelSize: 20
                font.bold: true
                horizontalAlignment: Text.Center
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                text: "Engineered for maximum reliability, offline usability, and high performance in school environments."
                color: "#e5e9f0"
                font.pixelSize: 14
                horizontalAlignment: Text.Center
                anchors.horizontalCenter: parent.horizontalCenter
                wrapMode: Text.WordWrap
                width: parent.width
            }

            Text {
                text: "Please wait while the system is being installed to your disk..."
                color: "#88c0d0"
                font.pixelSize: 13
                font.italic: true
                horizontalAlignment: Text.Center
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }
}
