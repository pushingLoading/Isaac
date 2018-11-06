import os
import tkinter.filedialog as tkFileDialog
import tkinter as tk

def showDialog(r):
    root = r
    w = tk.Toplevel (r)
    currdir = os.getcwd()
    tempdir = tkFileDialog.askdirectory(parent=w, initialdir=currdir, title='Please select isaacData directory')
    if len(tempdir) > 0:
        w.withdraw()
        return tempdir
