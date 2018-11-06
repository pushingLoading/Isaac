import os
import tkinter.filedialog as tkFileDialog
import tkinter as tk

def showDialog(r):
    root = tk.Tk()
    currdir = os.getcwd()
    tempdir = tkFileDialog.askdirectory(parent=root, initialdir=currdir, title='Please select isaacData directory')
    if len(tempdir) > 0:
        root = tk.Toplevel()
        return tempdir
