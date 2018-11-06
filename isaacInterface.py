#! /usr/bin/env python
#  -*- coding: utf-8 -*-
#
# GUI module generated by PAGE version 4.18
#  in conjunction with Tcl version 8.6
#    Nov 06, 2018 02:20:00 PM CET  platform: Linux

import sys

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

import isaacInterface_support

def vp_start_gui():
    '''Starting point when module is the main routine.'''
    global val, w, root
    root = tk.Tk()
    isaacInterface_support.set_Tk_var()
    top = IsaacInterface (root)
    isaacInterface_support.init(root, top)
    root.mainloop()

w = None
def create_IsaacInterface(root, *args, **kwargs):
    '''Starting point when module is imported by another program.'''
    global w, w_win, rt
    rt = root
    w = tk.Toplevel (root)
    isaacInterface_support.set_Tk_var()
    top = IsaacInterface (w)
    isaacInterface_support.init(w, top, *args, **kwargs)
    return (w, top)

def destroy_IsaacInterface():
    global w
    w.destroy()
    w = None

class IsaacInterface:
    def __init__(self, top=None):
        '''This class configures and populates the toplevel window.
           top is the toplevel containing window.'''
        _bgcolor = 'wheat'  # X11 color: #f5deb3
        _fgcolor = '#000000'  # X11 color: 'black'
        _compcolor = '#d9d9d9' # X11 color: 'gray85'
        _ana1color = '#d9d9d9' # X11 color: 'gray85'
        _ana2color = '#d9d9d9' # X11 color: 'gray85'
        font10 = "-family {DejaVu Sans Mono} -size 12 -weight bold "  \
            "-slant roman -underline 0 -overstrike 0"
        font9 = "-family RaghuMalayalam -size 12 -weight bold -slant "  \
            "roman -underline 0 -overstrike 0"

        top.geometry("1000x500+386+107")
        top.title("Isaac")
        top.configure(background="#f4ecd2")
        top.configure(highlightbackground="wheat")
        top.configure(highlightcolor="black")

        self.menubar = tk.Menu(top,font="TkMenuFont",bg='#9b9b9b',fg=_fgcolor)
        top.configure(menu = self.menubar)

        self.sub_menu = tk.Menu(top,tearoff=0)
        self.menubar.add_cascade(menu=self.sub_menu,
                activebackground="#d9d9d9",
                activeforeground="#000000",
                background="#990000",
                compound="left",
                font=font9,
                foreground="#ffff00",
                label="File")
        self.sub_menu.add_command(
                activebackground="#d9d9d9",
                activeforeground="#000000",
                background="#ff0000",
                command=isaacInterface_support.save,
                font=font10,
                foreground="white",
                label="Save")
        self.sub_menu.add_separator(
                background="#ff0000")
        self.sub_menu.add_command(
                activebackground="#d9d9d9",
                activeforeground="#000000",
                background="#ff0000",
                command=isaacInterface_support.quit,
                compound="top",
                font=font10,
                foreground="white",
                label="Quit")
        self.sub_menu1 = tk.Menu(top,tearoff=0)
        self.menubar.add_cascade(menu=self.sub_menu1,
                activebackground="#d9d9d9",
                activeforeground="#000000",
                background="#990000",
                compound="left",
                font=font9,
                foreground="#ffff00",
                label="Edit")
        self.sub_menu1.add_command(
                activebackground="#d9d9d9",
                activeforeground="black",
                background="#ff0000",
                command=isaacInterface_support.cut,
                font=font10,
                foreground="white",
                label="Cut")
        self.sub_menu1.add_command(
                activebackground="#d9d9d9",
                activeforeground="black",
                background="#ff0000",
                command=isaacInterface_support.copy,
                font=font10,
                foreground="white",
                label="Copy")
        self.sub_menu1.add_separator(
                background="#ff0000")
        self.sub_menu1.add_command(
                activebackground="#d9d9d9",
                activeforeground="#000000",
                background="#ff0000",
                command=isaacInterface_support.paste,
                font=font10,
                foreground="white",
                label="Paste")
        self.sub_menu12 = tk.Menu(top,tearoff=0)
        self.sub_menu1.add_cascade(menu=self.sub_menu12,
                activebackground="white",
                activeforeground="#000000",
                background="#ff0000",
                font=font10,
                foreground="white",
                label="Other")
        self.sub_menu12.add_command(
                background="#ffff00",
                command=isaacInterface_support.post,
                font=font10,
                label="Post")
        self.sub_menu12.add_command(
                background="#ffff00",
                command=isaacInterface_support.sync,
                font=font10,
                label="Sync")
        self.sub_menu123 = tk.Menu(top,tearoff=0)
        self.sub_menu12.add_cascade(menu=self.sub_menu123,
                background="#ffff00",
                font=font10,
                label="Still")
        self.sub_menu123.add_command(
                background="plum",
                command=isaacInterface_support.yes,
                font=font10,
                label="Yes")
        self.sub_menu123.add_command(
                background="plum",
                command=isaacInterface_support.no,
                font=font10,
                label="No")
        self.sub_menu123.add_checkbutton(
                variable=isaacInterface_support.IRS,
                background="plum",
                font=font10,
                label="IRS")
        self.sub_menu123.add_checkbutton(
                variable=isaacInterface_support.Charity,
                background="plum",
                font=font10,
                label="Charity")
        self.sub_menu1234 = tk.Menu(top,tearoff=0)
        self.sub_menu123.add_cascade(menu=self.sub_menu1234,
                background="plum",
                font=font10,
                label="More")
        self.sub_menu1234.add_radiobutton(
                value="Radio_A",
                activebackground="#d9d9d9",
                activeforeground="#000000",
                background="#ffff00",
                command=isaacInterface_support.radio_a,
                font="TkTextFont",
                foreground="#000000",
                label="Radio-A")
        self.sub_menu1234.add_radiobutton(
                value="Radio_B",
                activebackground="#d9d9d9",
                activeforeground="#000000",
                background="#00ff00",
                command=isaacInterface_support.radio_b,
                font="TkTextFont",
                foreground="#000000",
                label="Radio-B")
        self._img0 = tk.PhotoImage(file="res/img/openfold.gif")
        self.sub_menu1234.add_checkbutton(
                selectcolor="#990000",
                variable=isaacInterface_support.Check_1,
                activebackground="#d9d9d9",
                activeforeground="#000000",
                background="#ff0000",
                command=isaacInterface_support.check1,
                compound="left",
                font="TkTextFont",
                foreground="#000000",
                image=self._img0,
                label="Check 1")
        self.sub_menu1234.add_checkbutton(
                variable=isaacInterface_support.Check_2,
                activebackground="#d9d9d9",
                activeforeground="#000000",
                background="#ff0000",
                command=isaacInterface_support.check2,
                font="TkTextFont",
                foreground="#000000",
                label="Check 2")
        self.sub_menu12345 = tk.Menu(top,tearoff=0)
        self.menubar.add_cascade(menu=self.sub_menu12345,
                activebackground="#d9d9d9",
                activeforeground="#000000",
                background="#990000",
                compound="left",
                font=font9,
                foreground="#ffff00",
                label="Info")
        self.sub_menu12345.add_command(
                activebackground="#d9d9d9",
                activeforeground="#000000",
                background="#ff0000",
                command=isaacInterface_support.cpuinfo,
                font=font10,
                foreground="white",
                label="CPU Info")

if __name__ == '__main__':
    vp_start_gui()
