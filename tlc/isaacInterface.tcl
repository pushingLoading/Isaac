#############################################################################
# Generated by PAGE version 4.18
#  in conjunction with Tcl version 8.6
#  Nov 06, 2018 07:04:00 PM CET  platform: Linux
set vTcl(timestamp) ""


#############################################################################
## vTcl Code to Load User Images see vTcl:save2 in file.tcl

catch {package require Img}

foreach img {

        {{[file join / home pavao {Python Files} {Trading 2.0} Isaac res img openfold.gif]} {user image} user {}}

            } {
# from vTcl:image:dump_create_image_footer
    eval set _file [lindex $img 0]
    vTcl:image:create_new_image\
        $_file [lindex $img 1] [lindex $img 2] [lindex $img 3]
}

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
set vTcl(actual_gui_bg) wheat
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_menu_bg) wheat
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #b2c9f4
set vTcl(analog_color_p) #eaf4b2
set vTcl(analog_color_m) #f4bcb2
set vTcl(active_fg) #111111
set vTcl(actual_gui_menu_active_bg)  #f4bcb2
set vTcl(active_menu_fg) #000000
}

#############################################################################
# vTcl Code to Load User Fonts

vTcl:font:add_font \
    "-family {DejaVu Sans Mono} -size 12 -weight bold -slant roman -underline 0 -overstrike 0" \
    user \
    vTcl:font10
vTcl:font:add_font \
    "-family RaghuMalayalam -size 12 -weight bold -slant roman -underline 0 -overstrike 0" \
    user \
    vTcl:font9
#################################
#LIBRARY PROCEDURES
#


if {[info exists vTcl(sourcing)]} {

proc vTcl:project:info {} {
    set base .top32
    global vTcl
    set base $vTcl(btop)
    if {$base == ""} {
        set base .top32
    }
    namespace eval ::widgets::$base {
        set dflt,origin 0
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

proc vTclWindow.top32 {base} {
    if {$base == ""} {
        set base .top32
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -menu "$top.m33" -background white -highlightbackground {#f4f4f4} \
        -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 1077x941+457+58
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 1905 1170
    wm minsize $top 1 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    wm title $top "Isaac"
    vTcl:DefineAlias "$top" "IsaacInterface" vTcl:Toplevel:WidgetProc "" 1
    set site_3_0 $top.m33
    menu $site_3_0 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#9b9b9b} -font TkMenuFont -foreground black -tearoff 0 
    $site_3_0 add cascade \
        -menu "$site_3_0.men34" -activebackground {#d9d9d9} \
        -activeforeground {#000000} -background {#990000} -compound left \
        -font [vTcl:font:getFontFromDescr "-family RaghuMalayalam -size 12 -weight bold -slant roman -underline 0 -overstrike 0"] \
        -foreground {#ffff00} -label File 
    menu $site_3_0.men34 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#ff0000} -font TkMenuFont -foreground black -tearoff 0 
    $site_3_0.men34 add command \
        -activebackground {#d9d9d9} -activeforeground {#000000} \
        -background {#ff0000} -command {#save} \
        -font [vTcl:font:getFontFromDescr "-family {DejaVu Sans Mono} -size 12 -weight bold -slant roman -underline 0 -overstrike 0"] \
        -foreground white -label Save 
    $site_3_0.men34 add separator \
        -background {#ff0000} 
    $site_3_0.men34 add command \
        -activebackground {#d9d9d9} -activeforeground {#000000} \
        -background {#ff0000} -command {#quit} -compound top \
        -font [vTcl:font:getFontFromDescr "-family {DejaVu Sans Mono} -size 12 -weight bold -slant roman -underline 0 -overstrike 0"] \
        -foreground white -label Quit 
    $site_3_0 add cascade \
        -menu "$site_3_0.men34" -activebackground {#d9d9d9} \
        -activeforeground {#000000} -background {#990000} -compound left \
        -font [vTcl:font:getFontFromDescr "-family RaghuMalayalam -size 12 -weight bold -slant roman -underline 0 -overstrike 0"] \
        -foreground {#ffff00} -label File -menu "$site_3_0.men32" \
        -activebackground {#d9d9d9} -activeforeground {#000000} \
        -background {#990000} -compound left \
        -font [vTcl:font:getFontFromDescr "-family RaghuMalayalam -size 12 -weight bold -slant roman -underline 0 -overstrike 0"] \
        -foreground {#ffff00} -label Edit 
    menu $site_3_0.men32 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#ff0000} -font TkMenuFont -foreground black -tearoff 0 
    $site_3_0.men32 add command \
        -activebackground {#d9d9d9} -activeforeground black \
        -background {#ff0000} -command {#cut} \
        -font [vTcl:font:getFontFromDescr "-family {DejaVu Sans Mono} -size 12 -weight bold -slant roman -underline 0 -overstrike 0"] \
        -foreground white -label Cut 
    $site_3_0.men32 add command \
        -activebackground {#d9d9d9} -activeforeground black \
        -background {#ff0000} -command {#copy} \
        -font [vTcl:font:getFontFromDescr "-family {DejaVu Sans Mono} -size 12 -weight bold -slant roman -underline 0 -overstrike 0"] \
        -foreground white -label Copy 
    $site_3_0.men32 add separator \
        -background {#ff0000} 
    $site_3_0.men32 add command \
        -activebackground {#d9d9d9} -activeforeground {#000000} \
        -background {#ff0000} -command {#paste} \
        -font [vTcl:font:getFontFromDescr "-family {DejaVu Sans Mono} -size 12 -weight bold -slant roman -underline 0 -overstrike 0"] \
        -foreground white -label Paste 
    $site_3_0.men32 add cascade \
        -menu "$site_3_0.men32.men32" -activebackground white \
        -activeforeground {#000000} -background {#ff0000} \
        -font [vTcl:font:getFontFromDescr "-family {DejaVu Sans Mono} -size 12 -weight bold -slant roman -underline 0 -overstrike 0"] \
        -foreground white -label Other 
    set site_4_0 $site_3_0.men32
    menu $site_4_0.men32 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#ff0000} -font TkMenuFont -foreground black -tearoff 0 
    $site_4_0.men32 add command \
        -background {#ffff00} -command {#post} \
        -font [vTcl:font:getFontFromDescr "-family {DejaVu Sans Mono} -size 12 -weight bold -slant roman -underline 0 -overstrike 0"] \
        -label Post 
    $site_4_0.men32 add command \
        -background {#ffff00} -command {#sync} \
        -font [vTcl:font:getFontFromDescr "-family {DejaVu Sans Mono} -size 12 -weight bold -slant roman -underline 0 -overstrike 0"] \
        -label Sync 
    $site_4_0.men32 add cascade \
        -menu "$site_4_0.men32.men32" -background {#ffff00} \
        -font [vTcl:font:getFontFromDescr "-family {DejaVu Sans Mono} -size 12 -weight bold -slant roman -underline 0 -overstrike 0"] \
        -label Still 
    set site_5_0 $site_4_0.men32
    menu $site_5_0.men32 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#ff0000} -font TkMenuFont -foreground black -tearoff 0 
    $site_5_0.men32 add command \
        -background plum -command {#yes} \
        -font [vTcl:font:getFontFromDescr "-family {DejaVu Sans Mono} -size 12 -weight bold -slant roman -underline 0 -overstrike 0"] \
        -label Yes 
    $site_5_0.men32 add command \
        -background plum -command {#no} \
        -font [vTcl:font:getFontFromDescr "-family {DejaVu Sans Mono} -size 12 -weight bold -slant roman -underline 0 -overstrike 0"] \
        -label No 
    $site_5_0.men32 add checkbutton \
        -variable IRS -background plum \
        -font [vTcl:font:getFontFromDescr "-family {DejaVu Sans Mono} -size 12 -weight bold -slant roman -underline 0 -overstrike 0"] \
        -label IRS 
    $site_5_0.men32 add checkbutton \
        -variable Charity -background plum \
        -font [vTcl:font:getFontFromDescr "-family {DejaVu Sans Mono} -size 12 -weight bold -slant roman -underline 0 -overstrike 0"] \
        -label Charity 
    $site_5_0.men32 add cascade \
        -menu "$site_5_0.men32.men32" -background plum \
        -font [vTcl:font:getFontFromDescr "-family {DejaVu Sans Mono} -size 12 -weight bold -slant roman -underline 0 -overstrike 0"] \
        -label More 
    set site_6_0 $site_5_0.men32
    menu $site_6_0.men32 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#ff0000} -font TkMenuFont -foreground black -tearoff 0 
    $site_6_0.men32 add radiobutton \
        -value Radio_A -activebackground {#d9d9d9} \
        -activeforeground {#000000} -background {#ffff00} -command {#radio_a} \
        -font [vTcl:font:getFontFromDescr "-family sans-serif -size -12 -weight normal -slant roman -underline 0 -overstrike 0"] \
        -foreground {#000000} -label Radio-A 
    $site_6_0.men32 add radiobutton \
        -value Radio_B -activebackground {#d9d9d9} \
        -activeforeground {#000000} -background {#00ff00} -command {#radio_b} \
        -font [vTcl:font:getFontFromDescr "-family sans-serif -size -12 -weight normal -slant roman -underline 0 -overstrike 0"] \
        -foreground {#000000} -label Radio-B 
    $site_6_0.men32 add checkbutton \
        -selectcolor {#990000} -variable Check_1 -activebackground {#d9d9d9} \
        -activeforeground {#000000} -background {#ff0000} -command {#check1} \
        -compound left \
        -font [vTcl:font:getFontFromDescr "-family sans-serif -size -12 -weight normal -slant roman -underline 0 -overstrike 0"] \
        -foreground {#000000} \
        -image [vTcl:image:get_image [file join / home pavao {Python Files} {Trading 2.0} Isaac res img openfold.gif]] \
        -label {Check 1} 
    $site_6_0.men32 add checkbutton \
        -variable Check_2 -activebackground {#d9d9d9} \
        -activeforeground {#000000} -background {#ff0000} -command {#check2} \
        -font [vTcl:font:getFontFromDescr "-family sans-serif -size -12 -weight normal -slant roman -underline 0 -overstrike 0"] \
        -foreground {#000000} -label {Check 2} 
    $site_3_0 add cascade \
        -menu "$site_3_0.men34" -activebackground {#d9d9d9} \
        -activeforeground {#000000} -background {#990000} -compound left \
        -font [vTcl:font:getFontFromDescr "-family RaghuMalayalam -size 12 -weight bold -slant roman -underline 0 -overstrike 0"] \
        -foreground {#ffff00} -label File -menu "$site_3_0.men32" \
        -activebackground {#d9d9d9} -activeforeground {#000000} \
        -background {#990000} -compound left \
        -font [vTcl:font:getFontFromDescr "-family RaghuMalayalam -size 12 -weight bold -slant roman -underline 0 -overstrike 0"] \
        -foreground {#ffff00} -label Edit -menu "$site_3_0.men43" \
        -activebackground {#d9d9d9} -activeforeground {#000000} \
        -background {#990000} -compound left \
        -font [vTcl:font:getFontFromDescr "-family RaghuMalayalam -size 12 -weight bold -slant roman -underline 0 -overstrike 0"] \
        -foreground {#ffff00} -label Info 
    menu $site_3_0.men43 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -font TkMenuFont -foreground black -tearoff 0 
    $site_3_0.men43 add command \
        -activebackground {#d9d9d9} -activeforeground {#000000} \
        -background {#ff0000} -command {#cpuinfo} \
        -font [vTcl:font:getFontFromDescr "-family {DejaVu Sans Mono} -size 12 -weight bold -slant roman -underline 0 -overstrike 0"] \
        -foreground white -label {CPU Info} 
    labelframe $top.lab45 \
        -foreground black -text {First step} -background white -height 525 \
        -highlightcolor black -width 470 
    vTcl:DefineAlias "$top.lab45" "Labelframe1" vTcl:WidgetProc "IsaacInterface" 1
    set site_3_0 $top.lab45
    labelframe $site_3_0.lab46 \
        -foreground black -text {Select cryptocurrency} -background {#ffffff} \
        -height 275 -highlightcolor black -width 400 
    vTcl:DefineAlias "$site_3_0.lab46" "Labelframe2" vTcl:WidgetProc "IsaacInterface" 1
    set site_4_0 $site_3_0.lab46
    ttk::combobox $site_4_0.tCo47 \
        -state readonly -textvariable combobox -foreground {} -background {} \
        -takefocus {} 
    vTcl:DefineAlias "$site_4_0.tCo47" "TCombobox1" vTcl:WidgetProc "IsaacInterface" 1
    label $site_4_0.lab49 \
        -activebackground {#f9f9f9} -activeforeground black -background white \
        -foreground {#000000} -highlightcolor black -state disabled -text ... 
    vTcl:DefineAlias "$site_4_0.lab49" "labelMonths" vTcl:WidgetProc "IsaacInterface" 1
    button $site_4_0.but43 \
        -activebackground {#f4bcb2} -activeforeground black -background wheat \
        -command loadInfo -foreground {#000000} -highlightbackground wheat \
        -highlightcolor black -text Load 
    vTcl:DefineAlias "$site_4_0.but43" "btnLoad" vTcl:WidgetProc "IsaacInterface" 1
    label $site_4_0.lab44 \
        -activebackground {#f9f9f9} -activeforeground black -background white \
        -foreground {#000000} -highlightcolor black -state disabled -text ... 
    vTcl:DefineAlias "$site_4_0.lab44" "labelSize" vTcl:WidgetProc "IsaacInterface" 1
    label $site_4_0.lab45 \
        -activebackground {#f9f9f9} -activeforeground black -background white \
        -foreground {#000000} -highlightcolor black -state disabled \
        -text {Select months:} 
    vTcl:DefineAlias "$site_4_0.lab45" "labelSelectMonths" vTcl:WidgetProc "IsaacInterface" 1
    ttk::separator $site_4_0.tSe47 \
        -orient vertical 
    vTcl:DefineAlias "$site_4_0.tSe47" "TSeparator1" vTcl:WidgetProc "IsaacInterface" 1
    entry $site_4_0.ent49 \
        -background white -font TkFixedFont -foreground {#000000} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black -state disabled 
    vTcl:DefineAlias "$site_4_0.ent49" "inputMonth1" vTcl:WidgetProc "IsaacInterface" 1
    entry $site_4_0.ent50 \
        -background white -font TkFixedFont -foreground {#000000} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black -state disabled 
    vTcl:DefineAlias "$site_4_0.ent50" "inpuitMonth2" vTcl:WidgetProc "IsaacInterface" 1
    label $site_4_0.lab43 \
        -background {#ffffff} -foreground {#000000} -state disabled -text ... 
    vTcl:DefineAlias "$site_4_0.lab43" "labelMonthsExp" vTcl:WidgetProc "IsaacInterface" 1
    place $site_4_0.tCo47 \
        -in $site_4_0 -x 30 -y 40 -width 257 -relwidth 0 -height 19 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.lab49 \
        -in $site_4_0 -x 40 -y 80 -width 146 -relwidth 0 -height 29 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.but43 \
        -in $site_4_0 -x 300 -y 40 -width 67 -relwidth 0 -height 17 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.lab44 \
        -in $site_4_0 -x 210 -y 80 -width 146 -relwidth 0 -height 29 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.lab45 \
        -in $site_4_0 -x 60 -y 160 -width 105 -relwidth 0 -height 19 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.tSe47 \
        -in $site_4_0 -x 200 -y 60 -height 40 -anchor nw -bordermode inside 
    place $site_4_0.ent49 \
        -in $site_4_0 -x 180 -y 160 -anchor nw -bordermode ignore 
    place $site_4_0.ent50 \
        -in $site_4_0 -x 180 -y 190 -anchor nw -bordermode ignore 
    place $site_4_0.lab43 \
        -in $site_4_0 -x 40 -y 130 -width 326 -relwidth 0 -height 19 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab46 \
        -in $site_3_0 -x 30 -y 50 -width 400 -relwidth 0 -height 275 \
        -relheight 0 -anchor nw -bordermode ignore 
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.lab45 \
        -in $top -x 30 -y 20 -width 470 -relwidth 0 -height 525 -relheight 0 \
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
Window show .top32 $btop
if {$vTcl(borrow)} {
    $btop configure -background plum
}

