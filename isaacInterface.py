#! /usr/bin/env python
#  -*- coding: utf-8 -*-
#
# GUI module generated by PAGE version 4.18
#  in conjunction with Tcl version 8.6
#    Nov 06, 2018 05:53:17 PM CET  platform: Linux

import sys
import configparser
import os
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
def openConfig():
    global config
    config = configparser.ConfigParser()
    config.read('config.ini')


class IsaacInterface:


    def btnLoadClick(self):
        currChoice = str(self.TCombobox1.get())
        self.labelMonths.configure(state='normal')
        self.labelSize.configure(state='normal')
        self.labelSelectMonths.configure(state='normal')
        self.inputMonth1.configure(state='normal')
        self.inpuitMonth2.configure(state='normal')
        self.labelMonthsExp.configure(state='normal')
        openConfig()

        years = [f.path for f in os.scandir(config['GENERAL']['isaacDataPath']) if f.is_dir()]

        year ={}

        monthsNum = 0
        size=0
        monthsPrint = ""
        for y in years:
            year[y[-4:]] = [f.path for f in os.scandir(y) if f.is_dir()]

        for key, value in year.items():
            for v in value:
                monthsPrint += v[-2:]+" "+key+" | "
                monthsNum+=1
                size += os.path.getsize(v+"/"+currChoice+v[-2:]+".db")

        monthsPrint=monthsPrint[:-3]
        if(monthsNum==1):
            self.labelMonths.configure(text=str(monthsNum)+ " month of data")
        else:
            self.labelMonths.configure(text=str(monthsNum)+ " months of data")
        sizeInGb = size/1073741824.0
        self.labelSize.configure(text="{0:.2f} GB".format(abs(sizeInGb)))
        self.labelMonthsExp.configure(text=monthsPrint)

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
        self.style = ttk.Style()
        if sys.platform == "win32":
            self.style.theme_use('winnative')
        self.style.configure('.',background=_bgcolor)
        self.style.configure('.',foreground=_fgcolor)
        self.style.configure('.',font="TkDefaultFont")
        self.style.map('.',background=
            [('selected', _compcolor), ('active',_ana2color)])

        top.geometry("1077x941+457+58")
        top.title("Isaac")
        top.configure(background="white")
        top.configure(highlightbackground="#f4f4f4")
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
        self._img0 = tk.PhotoImage(file="/home/pavao/Python Files/Trading 2.0/Isaac/res/img/openfold.gif")
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

        self.Labelframe1 = tk.LabelFrame(top)
        self.Labelframe1.place(relx=0.028, rely=0.021, relheight=0.558
                , relwidth=0.436)
        self.Labelframe1.configure(relief='groove')
        self.Labelframe1.configure(text='''First step''')
        self.Labelframe1.configure(background="white")
        self.Labelframe1.configure(width=470)

        self.Labelframe2 = tk.LabelFrame(self.Labelframe1)
        self.Labelframe2.place(relx=0.064, rely=0.095, relheight=0.524
                , relwidth=0.851, bordermode='ignore')
        self.Labelframe2.configure(relief='groove')
        self.Labelframe2.configure(text='''Select cryptocurrency''')
        self.Labelframe2.configure(background="#ffffff")
        self.Labelframe2.configure(width=400)

        value_list = ["BTCUSD","LTCUSD","ETHUSD","ETCUSD","RRTUSD","ZECUSD","XMRUSD","DSHUSD","XRPUSD", "IOTUSD","EOSUSD","SANUSD","OMGUSD","BCHUSD","NEOUSD","ETPUSD","QTMUSD","AVTUSD","EDOUSD", "BTGUSD","DATUSD","QSHUSD","YYWUSD","GNTUSD","SNTUSD","BATUSD","MNAUSD","FUNUSD","ZRXUSD", "TNBUSD","SPKUSD","TRXUSD","RCNUSD","RLCUSD","AIDUSD","SNGUSD","REPUSD","ELFUSD"]

        self.TCombobox1 = ttk.Combobox(self.Labelframe2)
        self.TCombobox1.place(relx=0.075, rely=0.145, relheight=0.069
                , relwidth=0.643, bordermode='ignore')
        self.TCombobox1.configure(state='readonly')
        self.TCombobox1.configure(textvariable=isaacInterface_support.combobox)
        self.TCombobox1.configure(takefocus="")
        self.TCombobox1.configure(value=value_list)

        self.labelMonths = tk.Label(self.Labelframe2)
        self.labelMonths.place(relx=0.1, rely=0.291, height=29, width=146
                , bordermode='ignore')
        self.labelMonths.configure(activebackground="#f9f9f9")
        self.labelMonths.configure(background="white")
        self.labelMonths.configure(state='disabled')
        self.labelMonths.configure(text='''...''')
        self.labelMonths.configure(width=146)

        self.btnLoad = tk.Button(self.Labelframe2)
        self.btnLoad.place(relx=0.75, rely=0.145, height=17, width=67
                , bordermode='ignore')
        self.btnLoad.configure(activebackground="#f4bcb2")
        self.btnLoad.configure(background="wheat")
        self.btnLoad.configure(command=self.btnLoadClick)
        self.btnLoad.configure(highlightbackground="wheat")
        self.btnLoad.configure(text='''Load''')

        self.labelSize = tk.Label(self.Labelframe2)
        self.labelSize.place(relx=0.525, rely=0.291, height=29, width=146
                , bordermode='ignore')
        self.labelSize.configure(activebackground="#f9f9f9")
        self.labelSize.configure(background="white")
        self.labelSize.configure(state='disabled')
        self.labelSize.configure(text='''...''')

        self.labelSelectMonths = tk.Label(self.Labelframe2)
        self.labelSelectMonths.place(relx=0.15, rely=0.582, height=19, width=105
                , bordermode='ignore')
        self.labelSelectMonths.configure(activebackground="#f9f9f9")
        self.labelSelectMonths.configure(background="white")
        self.labelSelectMonths.configure(state='disabled')
        self.labelSelectMonths.configure(text='''Select months:''')
        self.labelSelectMonths.configure(width=105)

        self.TSeparator1 = ttk.Separator(self.Labelframe2)
        self.TSeparator1.place(relx=0.5, rely=0.273, relheight=0.145
                , bordermode='ignore')
        self.TSeparator1.configure(orient="vertical")

        self.inputMonth1 = tk.Entry(self.Labelframe2)
        self.inputMonth1.place(relx=0.45, rely=0.582, height=21, relwidth=0.365
                , bordermode='ignore')
        self.inputMonth1.configure(background="white")
        self.inputMonth1.configure(font="TkFixedFont")
        self.inputMonth1.configure(selectbackground="#c4c4c4")
        self.inputMonth1.configure(state='disabled')

        self.inpuitMonth2 = tk.Entry(self.Labelframe2)
        self.inpuitMonth2.place(relx=0.45, rely=0.691, height=21, relwidth=0.365
                , bordermode='ignore')
        self.inpuitMonth2.configure(background="white")
        self.inpuitMonth2.configure(font="TkFixedFont")
        self.inpuitMonth2.configure(selectbackground="#c4c4c4")
        self.inpuitMonth2.configure(state='disabled')

        self.labelMonthsExp = tk.Label(self.Labelframe2)
        self.labelMonthsExp.place(relx=0.1, rely=0.473, height=19, width=326
                , bordermode='ignore')
        self.labelMonthsExp.configure(background="#ffffff")
        self.labelMonthsExp.configure(state='disabled')
        self.labelMonthsExp.configure(text='''...''')
        self.labelMonthsExp.configure(width=326)

if __name__ == '__main__':
    vp_start_gui()
