import os, sys

from PyQt5.QtWidgets import QApplication
from PyQt5.QtQml import QQmlApplicationEngine

app = QApplication(sys.argv)
engine = QQmlApplicationEngine()


if __name__ == '__main__':
    engine.load('swipe_form.qml')
    sys.exit(app.exec_())
