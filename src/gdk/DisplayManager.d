/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GdkDisplayManager.html
 * outPack = gdk
 * outFile = DisplayManager
 * strct   = GdkDisplayManager
 * realStrct=
 * ctorStrct=
 * clss    = DisplayManager
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_display_manager_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gdk.DisplayManager
 * 	- gdk.Display
 * 	- glib.ListSG
 * 	- gdk.Device
 * structWrap:
 * 	- GSList* -> ListSG
 * 	- GdkDevice* -> Device
 * 	- GdkDisplay* -> Display
 * 	- GdkDisplayManager* -> DisplayManager
 * module aliases:
 * local aliases:
 */

module gdk.DisplayManager;

public  import gtkc.gdktypes;

private import gtkc.gdk;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import gdk.DisplayManager;
private import gdk.Display;
private import glib.ListSG;
private import gdk.Device;



private import gobject.ObjectG;

/**
 * Description
 * The purpose of the GdkDisplayManager singleton object is to offer
 * notification when displays appear or disappear or the default display
 * changes.
 */
public class DisplayManager : ObjectG
{
	
	/** the main Gtk struct */
	protected GdkDisplayManager* gdkDisplayManager;
	
	
	public GdkDisplayManager* getDisplayManagerStruct()
	{
		return gdkDisplayManager;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkDisplayManager;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkDisplayManager* gdkDisplayManager)
	{
		if(gdkDisplayManager is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gdkDisplayManager passed to constructor.");
			else return;
		}
		super(cast(GObject*)gdkDisplayManager);
		this.gdkDisplayManager = gdkDisplayManager;
	}
	
	/**
	 */
	int[char[]] connectedSignals;
	
	void delegate(Display, DisplayManager)[] onDisplayOpenedListeners;
	/**
	 * The ::display_opened signal is emitted when a display is opened.
	 * Since 2.2
	 */
	void addOnDisplayOpened(void delegate(Display, DisplayManager) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("display-opened" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"display-opened",
			cast(GCallback)&callBackDisplayOpened,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["display-opened"] = 1;
		}
		onDisplayOpenedListeners ~= dlg;
	}
	extern(C) static void callBackDisplayOpened(GdkDisplayManager* displayManagerStruct, GdkDisplay* display, DisplayManager displayManager)
	{
		bool consumed = false;
		
		foreach ( void delegate(Display, DisplayManager) dlg ; displayManager.onDisplayOpenedListeners )
		{
			dlg(new Display(display), displayManager);
		}
		
		return consumed;
	}
	
	
	/**
	 * Returns the global GdkDisplayManager singleton; gdk_parse_pargs(),
	 * gdk_init(), or gdk_init_check() must have been called first.
	 * Since 2.2
	 * Returns: the singleton GdkDisplayManager object.
	 */
	public static DisplayManager get()
	{
		// GdkDisplayManager* gdk_display_manager_get (void);
		auto p = gdk_display_manager_get();
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new DisplayManager(cast(GdkDisplayManager*) p);
	}
	
	/**
	 * Gets the default GdkDisplay.
	 * Since 2.2
	 * Returns: a GdkDisplay, or NULL if there is no default display.
	 */
	public Display getDefaultDisplay()
	{
		// GdkDisplay* gdk_display_manager_get_default_display  (GdkDisplayManager *display_manager);
		auto p = gdk_display_manager_get_default_display(gdkDisplayManager);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new Display(cast(GdkDisplay*) p);
	}
	
	/**
	 * Sets display as the default display.
	 * Since 2.2
	 * Params:
	 * display =  a GdkDisplay
	 */
	public void setDefaultDisplay(Display display)
	{
		// void gdk_display_manager_set_default_display  (GdkDisplayManager *display_manager,  GdkDisplay *display);
		gdk_display_manager_set_default_display(gdkDisplayManager, (display is null) ? null : display.getDisplayStruct());
	}
	
	/**
	 * List all currently open displays.
	 * Since 2.2
	 * Returns: a newly allocated GSList of GdkDisplay objects. Free this list with g_slist_free() when you are done with it.
	 */
	public ListSG listDisplays()
	{
		// GSList* gdk_display_manager_list_displays (GdkDisplayManager *display_manager);
		auto p = gdk_display_manager_list_displays(gdkDisplayManager);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new ListSG(cast(GSList*) p);
	}
	
	/**
	 * Returns the core pointer device for the given display
	 * Since 2.2
	 * Params:
	 * display =  a GdkDisplay
	 * Returns: the core pointer device; this is owned by the display and should not be freed.
	 */
	public static Device gdkDisplayGetCorePointer(Display display)
	{
		// GdkDevice* gdk_display_get_core_pointer (GdkDisplay *display);
		auto p = gdk_display_get_core_pointer((display is null) ? null : display.getDisplayStruct());
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new Device(cast(GdkDevice*) p);
	}
}
