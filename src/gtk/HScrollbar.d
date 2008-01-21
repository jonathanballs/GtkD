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
 * inFile  = GtkHScrollbar.html
 * outPack = gtk
 * outFile = HScrollbar
 * strct   = GtkHScrollbar
 * realStrct=
 * ctorStrct=
 * clss    = HScrollbar
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- BuildableIF
 * prefixes:
 * 	- gtk_hscrollbar_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gtk.Adjustment
 * 	- glib.Str
 * 	- gobject.ObjectG
 * 	- gobject.Value
 * 	- gtk.Builder
 * 	- gtk.BuildableIF
 * 	- gtk.BuildableT
 * structWrap:
 * 	- GtkAdjustment* -> Adjustment
 * module aliases:
 * local aliases:
 */

module gtk.HScrollbar;

public  import gtkc.gtktypes;

private import gtkc.gtk;


private import gtk.Adjustment;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Value;
private import gtk.Builder;
private import gtk.BuildableIF;
private import gtk.BuildableT;



private import gtk.Scrollbar;

/**
 * Description
 * The GtkHScrollbar widget is a widget arranged horizontally creating a
 * scrollbar. See GtkScrollbar for details on
 * scrollbars. GtkAdjustment pointers may be added to handle the
 * adjustment of the scrollbar or it may be left NULL in which case one
 * will be created for you. See GtkAdjustment for details.
 */
public class HScrollbar : Scrollbar, BuildableIF
{
	
	/** the main Gtk struct */
	protected GtkHScrollbar* gtkHScrollbar;
	
	
	public GtkHScrollbar* getHScrollbarStruct()
	{
		return gtkHScrollbar;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkHScrollbar;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkHScrollbar* gtkHScrollbar)
	{
		if(gtkHScrollbar is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gtkHScrollbar passed to constructor.");
			else return;
		}
		super(cast(GtkScrollbar*)gtkHScrollbar);
		this.gtkHScrollbar = gtkHScrollbar;
	}
	
	// add the Buildable capabilities
	mixin BuildableT!(GtkHScrollbar);
	
	/**
	 */
	
	/**
	 * Creates a new horizontal scrollbar.
	 * Params:
	 * adjustment = the GtkAdjustment to use, or NULL to create a new adjustment.
	 */
	public this (Adjustment adjustment)
	{
		// GtkWidget* gtk_hscrollbar_new (GtkAdjustment *adjustment);
		auto p = gtk_hscrollbar_new((adjustment is null) ? null : adjustment.getAdjustmentStruct());
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GtkHScrollbar*) p);
	}
}
