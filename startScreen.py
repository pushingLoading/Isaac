import sys
import os
import configparser

try:
    import Tkinter as tk
except ImportError:
    import tkinter as tk

try:
    import ttk
    py3 = False
except ImportError:
    import tkinter.ttk as ttk
    py3 = True

import startScreen_support


def openConfig():
    global config
    config = configparser.ConfigParser()
    config.read('config.ini')

def vp_start_gui():
    '''Starting point when module is the main routine.'''
    global val, w, root
    openConfig()
    root = tk.Tk()
    top = startScreen (root)
    startScreen_support.init(root, top)
    root.mainloop()

w = None
def create_startScreen(root, *args, **kwargs):
    '''Starting point when module is imported by another program.'''
    global w, w_win, rt
    openConfig()
    rt = root
    w = tk.Toplevel (root)
    top = startScreen (w)
    startScreen_support.init(w, top, *args, **kwargs)
    return (w, top)

def hideWindow():
    w.withdraw()

def destroy_startScreen():
    global w
    w.destroy()
    w = None

class startScreen:

    def __init__(self, top=None):
        '''This class configures and populates the toplevel window.
           top is the toplevel containing window.'''
        _bgcolor = '#d9d9d9'  # X11 color: 'gray85'
        _fgcolor = '#000000'  # X11 color: 'black'
        _compcolor = '#d9d9d9' # X11 color: 'gray85'
        _ana1color = '#d9d9d9' # X11 color: 'gray85'
        _ana2color = '#d9d9d9' # X11 color: 'gray85'
        font10 = "-family {DejaVu Sans} -size 14 -weight bold -slant "  \
            "roman -underline 0 -overstrike 0"
        font9 = "-family {DejaVu Sans} -size 8 -weight normal -slant "  \
            "italic -underline 0 -overstrike 0"

        top.geometry("600x385")
        top.title("Isaac")
        top.configure(highlightcolor="black")

        self.Title = tk.Label(top)
        self.Title.place(relx=0.333, rely=0.078, height=59, width=196)
        self.Title.configure(activebackground="#f9f9f9")
        self.Title.configure(font=font10)
        self.Title.configure(text='''Isaac''')

        self.Frame1 = tk.Frame(top)
        self.Frame1.place(relx=0.133, rely=0.286, relheight=0.117
                , relwidth=0.725)
        self.Frame1.configure(relief='groove')
        self.Frame1.configure(borderwidth="2")
        self.Frame1.configure(relief='groove')
        self.Frame1.configure(width=435)

        self.Label2 = tk.Label(self.Frame1)
        self.Label2.place(relx=0.046, rely=0.222, height=19, width=402)
        self.Label2.configure(activebackground="#f9f9f9")
        self.Label2.configure(text='''Intelligent calculator and Bitfinex data analyzer''')

        self.Label3 = tk.Label(top)
        self.Label3.place(relx=0.733, rely=0.364, height=17, width=74)
        self.Label3.configure(activebackground="#f9f9f9")
        self.Label3.configure(font=font9)
        self.Label3.configure(text='''version 0.0.1''')

        self.menubar = tk.Menu(top,font="TkMenuFont",bg=_bgcolor,fg=_fgcolor)
        top.configure(menu = self.menubar)

        self.Label4 = tk.Label(top)
        self.Label4.place(relx=0.15, rely=0.571, height=19, width=212)
        self.Label4.configure(activebackground="#f9f9f9")
        self.Label4.configure(text='''isaacData folder connected:''')

        self.Label5 = tk.Label(top)
        self.Label5.place(relx=0.15, rely=0.675, height=19, width=212)
        self.Label5.configure(activebackground="#f9f9f9")
        self.Label5.configure(text='''Months:''')

        self.Button1 = tk.Button(top)
        self.Button1.place(relx=0.433, rely=0.857, height=27, width=87)
        self.Button1.configure(activebackground="#d9d9d9")
        self.Button1.configure(text='''Start''', command=startScreen_support.start)


        self.isaacFolder = tk.Label(top)
        self.isaacFolder.place(relx=0.55, rely=0.571, height=19, width=189)
        self.isaacFolder.configure(activebackground="#f9f9f9")
        if os.path.isdir(config['GENERAL']['isaacDataPath']):
            self.isaacFolder.configure(text='''yes''')
            self.Button1.configure(state='normal')
            folderInit=1
        else:
            self.isaacFolder.configure(text='''no''')
            self.Button1.configure(state='disabled')
            folderInit = 0


        self.isaacFolder.configure(width=69)

        dirNum = 0
        years = [f.path for f in os.scandir(config['GENERAL']['isaacDataPath']) if f.is_dir()]

        for y in years:
            months = [f.path for f in os.scandir(y) if f.is_dir()]
            dirNum += len(months)

        self.Label7 = tk.Label(top)
        self.Label7.place(relx=0.55, rely=0.675, height=19, width=192)
        self.Label7.configure(activebackground="#f9f9f9")
        if folderInit==1:
            self.Label7.configure(text=str(dirNum))
        else:
            self.Label7.configure(text='isaacFolder not found!')
        self.Label7.configure(width=72)

def startStartScreen():
    vp_start_gui()
