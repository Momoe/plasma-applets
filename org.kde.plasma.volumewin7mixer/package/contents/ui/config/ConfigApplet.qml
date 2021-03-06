import QtQuick 2.0
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.calendar 2.0 as PlasmaCalendar
import org.kde.plasma.components 2.0 as PlasmaComponents
import org.kde.plasma.extras 2.0 as PlasmaExtras

ColumnLayout {
    id: page

    property alias cfg_volumeUpDownSteps: volumeUpDownSteps.value
    property alias cfg_showVolumeTickmarks: showVolumeTickmarks.checked
    // property alias cfg_showOpenKcmAudioVolume: showOpenKcmAudioVolume.checked
    // property alias cfg_showOpenPavucontrol: showOpenPavucontrol.checked
    property alias cfg_moveAllAppsOnSetDefault: moveAllAppsOnSetDefault.checked
    property alias cfg_showMediaController: showMediaController.checked
    property string cfg_mediaControllerLocation: 'bottom'
    

    ColumnLayout {
        Layout.alignment: Qt.AlignTop | Qt.AlignLeft

        GroupBox {
            Layout.fillWidth: true
            title: 'Media Keys'

            ColumnLayout {

                RowLayout {
                    Label {
                        text: 'Volume Up/Down Steps:'
                    }
                    SpinBox {
                        id: volumeUpDownSteps
                        minimumValue: 1
                    }
                    Label {
                        text: 'One step = ' + Math.round(1/volumeUpDownSteps.value * 100) + '%'
                    }
                }

            }
        }

        GroupBox {
            Layout.fillWidth: true
            title: 'Mixer'

            ColumnLayout {

                CheckBox {
                	enabled: false
                	id: showVolumeTickmarks
                	checked: true
                	text: 'Show Ticks every 10%'
                }

            }
        }

        // GroupBox {
        //     Layout.fillWidth: true
        //     title: 'Context Menu'

        //     ColumnLayout {

        //         CheckBox {
        //             id: showOpenKcmAudioVolume
        //             text: 'KDE Audio Volume'
        //         }

        //         CheckBox {
        //             id: showOpenPavucontrol
        //             text: 'pavucontrol (PulseAudio Control) (Can do Audio Boost)'
        //         }

        //         RowLayout {
        //             Text { width: 24 } // indent
        //             Text {
        //                 font.family: 'monospace'
        //                 text: 'sudo apt-get install pavucontrol'
        //             }
        //         }

        //     }
        // }

        GroupBox {
            Layout.fillWidth: true
            title: 'Options'

            ColumnLayout {

                CheckBox {
                    id: moveAllAppsOnSetDefault
                    checked: true
                    text: 'Move all Apps to device when setting default device (when set in with the context menu)'
                }

            }
        }

        GroupBox {
            Layout.fillWidth: true
            title: 'Media Controller'

            ColumnLayout {

                CheckBox {
                    id: showMediaController
                    text: 'Show Media Controller'
                }

                ComboBox {
                    id: mediaControllerLocationComboBox
                    enabled: false
                    model: [ 'Bottom' ]
                }

            }
        }

    }
}