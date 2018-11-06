import os
import tkinter.filedialog as tkFileDialog
import tkinter as tk

root = tk.Tk()
root.withdraw() #use to hide tkinter window
def showDialog():
    currdir = os.getcwd()
    tempdir = tkFileDialog.askdirectory(parent=root, initialdir=currdir, title='Please select isaacData directory')
    if len(tempdir) > 0:
        return tempdir
