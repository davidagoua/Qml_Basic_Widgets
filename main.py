import os, sys

from PyQt5.QtWidgets import QApplication
from PyQt5.QtQuick import QQuickView
from PyQt5.QtCore import QUrl


##################################################
fichier_qml_a_executer = 'stack.qml'
##################################################


app = QApplication(sys.argv)
view = QQuickView()
view.setSource(QUrl(fichier_qml_a_executer))
view.setResizeMode(QQuickView.SizeRootObjectToView)

if __name__ == '__main__':
    view.show()
    if view.status() == QQuickView.Error: sys.exit(-1)
    sys.exit(app.exec_())