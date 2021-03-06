#############################################################################
# Generated by PAGE version 4.18
#  in conjunction with Tcl version 8.6
#  Nov 06, 2018 10:50:13 AM CET  platform: Linux
set vTcl(timestamp) ""


if {!$vTcl(borrow)} {

vTcl:font:add_GUI_font TkDefaultFont \
"-family sans-serif -size -12 -weight normal -slant roman -underline 0 -overstrike 0"
vTcl:font:add_GUI_font TkFixedFont \
"-family monospace -size -12 -weight normal -slant roman -underline 0 -overstrike 0"
vTcl:font:add_GUI_font TkMenuFont \
"-family sans-serif -size -12 -weight normal -slant roman -underline 0 -overstrike 0"
vTcl:font:add_GUI_font TkTextFont \
"-family sans-serif -size -12 -weight normal -slant roman -underline 0 -overstrike 0"
set vTcl(actual_gui_font_dft_name) TkDefaultFont
set vTcl(actual_gui_font_menu_name) TkMenuFont
set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #d9d9d9
set vTcl(analog_color_p) #d9d9d9
set vTcl(analog_color_m) #d9d9d9
set vTcl(active_fg) #000000
set vTcl(actual_gui_menu_active_bg)  #d8d8d8
set vTcl(active_menu_fg) #000000
}

#############################################################################
# vTcl Code to Load User Fonts

vTcl:font:add_font \
    "-family {DejaVu Sans} -size 8 -weight normal -slant italic -underline 0 -overstrike 0" \
    user \
    vTcl:font10
vTcl:font:add_font \
    "-family {DejaVu Sans} -size 14 -weight bold -slant roman -underline 0 -overstrike 0" \
    user \
    vTcl:font9
#################################
#LIBRARY PROCEDURES
#


if {[info exists vTcl(sourcing)]} {

proc vTcl:project:info {} {
    set base .top42
    global vTcl
    set base $vTcl(btop)
    if {$base == ""} {
        set base .top42
    }
    namespace eval ::widgets::$base {
        set dflt,origin 1
        set runvisible 1
    }
    namespace eval ::widgets_bindings {
        set tagslist _TopLevel
    }
    namespace eval ::vTcl::modules::main {
        set procs {
        }
        set compounds {
        }
        set projectType single
    }
}
}

#################################
# GENERATED GUI PROCEDURES
#

proc vTclWindow.top42 {base} {
    if {$base == ""} {
        set base .top42
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -menu "$top.m51" -background {#d9d9d9} -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 600x385
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 1
    wm maxsize $top 1905 1050
    wm minsize $top 1 1
    wm overrideredirect $top 0
    wm resizable $top 0 0
    wm deiconify $top
    wm title $top "Isaac"
    vTcl:DefineAlias "$top" "SelectDatabase" vTcl:Toplevel:WidgetProc "" 1
    label $top.lab43 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -font $::vTcl(fonts,vTcl:font9,object) \
        -foreground {#000000} -highlightcolor black -text Isaac 
    vTcl:DefineAlias "$top.lab43" "Title" vTcl:WidgetProc "SelectDatabase" 1
    frame $top.fra48 \
        -borderwidth 2 -relief groove -background {#d9d9d9} -height 45 \
        -highlightcolor black -width 435 
    vTcl:DefineAlias "$top.fra48" "Frame1" vTcl:WidgetProc "SelectDatabase" 1
    set site_3_0 $top.fra48
    label $site_3_0.lab49 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -foreground {#000000} -highlightcolor black \
        -text {Inteintelligent calculator and Bitfinex data analyzer} 
    vTcl:DefineAlias "$site_3_0.lab49" "Label2" vTcl:WidgetProc "SelectDatabase" 1
    vTcl:copy_lock $site_3_0.lab49
    place $site_3_0.lab49 \
        -in $site_3_0 -x 20 -y 10 -width 402 -relwidth 0 -height 19 \
        -relheight 0 -anchor nw -bordermode ignore 
    label $top.lab50 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -font $::vTcl(fonts,vTcl:font10,object) \
        -foreground {#000000} -highlightcolor black -text {version 0.0.0} 
    vTcl:DefineAlias "$top.lab50" "Label3" vTcl:WidgetProc "SelectDatabase" 1
    set site_3_0 $top.m51
    menu $site_3_0 \
        -activebackground {#d8d8d8} -activeforeground {#000000} \
        -background {#d9d9d9} -font TkMenuFont -foreground {#000000} \
        -tearoff 0 
    label $top.lab54 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -foreground {#000000} -highlightcolor black \
        -text {isaacData folder connected:} 
    vTcl:DefineAlias "$top.lab54" "Label4" vTcl:WidgetProc "SelectDatabase" 1
    label $top.lab55 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -foreground {#000000} -highlightcolor black \
        -text Months: 
    vTcl:DefineAlias "$top.lab55" "Label5" vTcl:WidgetProc "SelectDatabase" 1
    button $top.but56 \
        -activebackground {#d9d9d9} -activeforeground black \
        -background {#d9d9d9} -foreground {#000000} -highlightcolor black \
        -text Start 
    vTcl:DefineAlias "$top.but56" "Button1" vTcl:WidgetProc "SelectDatabase" 1
    label $top.lab57 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -foreground {#000000} -highlightcolor black \
        -text no 
    vTcl:DefineAlias "$top.lab57" "isaacFolder" vTcl:WidgetProc "SelectDatabase" 1
    label $top.lab58 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -foreground {#000000} -highlightcolor black \
        -text 0 
    vTcl:DefineAlias "$top.lab58" "Label7" vTcl:WidgetProc "SelectDatabase" 1
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.lab43 \
        -in $top -x 200 -y 30 -width 196 -relwidth 0 -height 59 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.fra48 \
        -in $top -x 80 -y 110 -width 435 -relwidth 0 -height 45 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.lab50 \
        -in $top -x 440 -y 140 -anchor nw -bordermode ignore 
    place $top.lab54 \
        -in $top -x 90 -y 220 -width 212 -relwidth 0 -height 19 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.lab55 \
        -in $top -x 90 -y 260 -width 212 -relwidth 0 -height 19 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but56 \
        -in $top -x 260 -y 330 -width 87 -relwidth 0 -height 27 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.lab57 \
        -in $top -x 330 -y 220 -width 189 -relwidth 0 -height 19 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.lab58 \
        -in $top -x 330 -y 260 -width 192 -relwidth 0 -height 19 -relheight 0 \
        -anchor nw -bordermode ignore 

    vTcl:FireEvent $base <<Ready>>
}

#############################################################################
## Binding tag:  _TopLevel

bind "_TopLevel" <<Create>> {
    if {![info exists _topcount]} {set _topcount 0}; incr _topcount
}
bind "_TopLevel" <<DeleteWindow>> {
    if {[set ::%W::_modal]} {
                vTcl:Toplevel:WidgetProc %W endmodal
            } else {
                destroy %W; if {$_topcount == 0} {exit}
            }
}
bind "_TopLevel" <Destroy> {
    if {[winfo toplevel %W] == "%W"} {incr _topcount -1}
}

set btop ""
if {$vTcl(borrow)} {
    set btop .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop $vTcl(tops)] != -1} {
        set btop .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop
Window show .
Window show .top42 $btop
if {$vTcl(borrow)} {
    $btop configure -background plum
}

