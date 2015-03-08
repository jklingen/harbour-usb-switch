# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = harbour-usb-switch

CONFIG += sailfishapp

SOURCES += src/harbour-usb-switch.cpp

OTHER_FILES += qml/harbour-usb-switch.qml \
    qml/cover/CoverPage.qml \
    qml/pages/FirstPage.qml \
    rpm/harbour-usb-switch.changes.in \
    rpm/harbour-usb-switch.spec \
    rpm/harbour-usb-switch.yaml \
    translations/*.ts \
    harbour-usb-switch.desktop \
    qml/js/usb-switch.js \
    qml/components/ModeButton.qml \
    qml/pages/InfoPage.qml \
    resources/harbour-usb-switch.png \
    qml/components/Spacer.qml

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n
TRANSLATIONS += translations/harbour-usb-switch-de.ts

HEADERS +=

RESOURCES += \
    resources/resources.qrc

