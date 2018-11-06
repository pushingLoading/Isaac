import os
import configparser
import tkinter.filedialog as tkFileDialog
import tkinter as tk

import startScreen
import directorySetup

config = configparser.ConfigParser()

def initConfig():
    config['GENERAL'] = {'isaacDataPath' : ''}
    config['GENERAL']['isaacDataPath'] = directorySetup.showDialog()
    with open('config.ini', 'w') as configfile:
        config.write(configfile)

if not os.path.isfile("config.ini"):
    initConfig()

startScreen.startStartScreen()
