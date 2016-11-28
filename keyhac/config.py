from keyhac import *

def configure(keymap):
	keymap_global = keymap.defineWindowKeymap()

	keymap_global[ "Ctrl-H"  ] = "Left"
	keymap_global[ "Ctrl-J"  ] = "Down"
	keymap_global[ "Ctrl-K"  ] = "Up"
	keymap_global[ "Ctrl-L"  ] = "Right"

	keymap_global[ "Ctrl-Shift-H"  ] = "Shift-Left"
	keymap_global[ "Ctrl-Shift-J"  ] = "Shift-Down"
	keymap_global[ "Ctrl-Shift-K"  ] = "Shift-Up"
	keymap_global[ "Ctrl-Shift-L"  ] = "Shift-Right"

	keymap_global[ "Cmd-Ctrl-H"  ] = "Cmd-Left"
	keymap_global[ "Cmd-Ctrl-J"  ] = "Cmd-Down"
	keymap_global[ "Cmd-Ctrl-K"  ] = "Cmd-Up"
	keymap_global[ "Cmd-Ctrl-L"  ] = "Cmd-Right"

	keymap_global[ "Cmd-Ctrl-Shift-H"  ] = "Cmd-Shift-Left"
	keymap_global[ "Cmd-Ctrl-Shift-J"  ] = "Cmd-Shift-Down"
	keymap_global[ "Cmd-Ctrl-Shift-K"  ] = "Cmd-Shift-Up"
	keymap_global[ "Cmd-Ctrl-Shift-L"  ] = "Cmd-Shift-Right"

	keymap_global[ "Ctrl-F"  ] = "PageDown"
	keymap_global[ "Ctrl-B"  ] = "PageUp"
