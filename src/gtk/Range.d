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
 * inFile  = GtkRange.html
 * outPack = gtk
 * outFile = Range
 * strct   = GtkRange
 * realStrct=
 * ctorStrct=
 * clss    = Range
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- BuildableIF
 * prefixes:
 * 	- gtk_range_
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

module gtk.Range;

public  import gtkc.gtktypes;

private import gtkc.gtk;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import gtk.Adjustment;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Value;
private import gtk.Builder;
private import gtk.BuildableIF;
private import gtk.BuildableT;



private import gtk.Widget;

/**
 * Description
 * GtkRange is the common base class for widgets which visualize an
 * adjustment, e.g scales or scrollbars.
 * Apart from signals for monitoring the parameters of the adjustment,
 * GtkRange provides properties and methods for influencing the sensitivity
 * of the "steppers". It also provides properties and methods for setting a
 * "fill level" on range widgets. See gtk_range_set_fill_level().
 */
public class Range : Widget, BuildableIF
{
	
	/** the main Gtk struct */
	protected GtkRange* gtkRange;
	
	
	public GtkRange* getRangeStruct()
	{
		return gtkRange;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkRange;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkRange* gtkRange)
	{
		if(gtkRange is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gtkRange passed to constructor.");
			else return;
		}
		super(cast(GtkWidget*)gtkRange);
		this.gtkRange = gtkRange;
	}
	
	// add the Buildable capabilities
	mixin BuildableT!(GtkRange);
	
	/**
	 */
	int[char[]] connectedSignals;
	
	void delegate(gdouble, Range)[] onAdjustBoundsListeners;
	/**
	 */
	void addOnAdjustBounds(void delegate(gdouble, Range) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("adjust-bounds" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"adjust-bounds",
			cast(GCallback)&callBackAdjustBounds,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["adjust-bounds"] = 1;
		}
		onAdjustBoundsListeners ~= dlg;
	}
	extern(C) static void callBackAdjustBounds(GtkRange* rangeStruct, gdouble arg1, Range range)
	{
		bool consumed = false;
		
		foreach ( void delegate(gdouble, Range) dlg ; range.onAdjustBoundsListeners )
		{
			dlg(arg1, range);
		}
		
		return consumed;
	}
	
	gboolean delegate(GtkScrollType, gdouble, Range)[] onChangeValueListeners;
	/**
	 * The ::change-value signal is emitted when a scroll action is
	 * performed on a range. It allows an application to determine the
	 * type of scroll event that occurred and the resultant new value.
	 * The application can handle the event itself and return TRUE to
	 * prevent further processing. Or, by returning FALSE, it can pass
	 * the event to other handlers until the default GTK+ handler is
	 * reached.
	 * The value parameter is unrounded. An application that overrides
	 * the ::change-value signal is responsible for clamping the value to
	 * the desired number of decimal digits; the default GTK+ handler
	 * clamps the value based on range->round_digits.
	 * It is not possible to use delayed update policies in an overridden
	 * ::change-value handler.
	 * Since 2.6
	 */
	void addOnChangeValue(gboolean delegate(GtkScrollType, gdouble, Range) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("change-value" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"change-value",
			cast(GCallback)&callBackChangeValue,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["change-value"] = 1;
		}
		onChangeValueListeners ~= dlg;
	}
	extern(C) static void callBackChangeValue(GtkRange* rangeStruct, GtkScrollType scroll, gdouble value, Range range)
	{
		bool consumed = false;
		
		foreach ( gboolean delegate(GtkScrollType, gdouble, Range) dlg ; range.onChangeValueListeners )
		{
			dlg(scroll, value, range);
		}
		
		return consumed;
	}
	
	void delegate(GtkScrollType, Range)[] onMoveSliderListeners;
	/**
	 * Virtual function that moves the slider. Used for keybindings.
	 */
	void addOnMoveSlider(void delegate(GtkScrollType, Range) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("move-slider" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"move-slider",
			cast(GCallback)&callBackMoveSlider,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["move-slider"] = 1;
		}
		onMoveSliderListeners ~= dlg;
	}
	extern(C) static void callBackMoveSlider(GtkRange* rangeStruct, GtkScrollType step, Range range)
	{
		bool consumed = false;
		
		foreach ( void delegate(GtkScrollType, Range) dlg ; range.onMoveSliderListeners )
		{
			dlg(step, range);
		}
		
		return consumed;
	}
	
	void delegate(Range)[] onValueChangedListeners;
	/**
	 * Emitted when the range value changes.
	 */
	void addOnValueChanged(void delegate(Range) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("value-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"value-changed",
			cast(GCallback)&callBackValueChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["value-changed"] = 1;
		}
		onValueChangedListeners ~= dlg;
	}
	extern(C) static void callBackValueChanged(GtkRange* rangeStruct, Range range)
	{
		bool consumed = false;
		
		foreach ( void delegate(Range) dlg ; range.onValueChangedListeners )
		{
			dlg(range);
		}
		
		return consumed;
	}
	
	
	/**
	 * Gets the current position of the fill level indicator.
	 * Since 2.12
	 * Returns: The current fill level
	 */
	public double getFillLevel()
	{
		// gdouble gtk_range_get_fill_level (GtkRange *range);
		return gtk_range_get_fill_level(gtkRange);
	}
	
	/**
	 * Gets whether the range is restricted to the fill level.
	 * Since 2.12
	 * Returns: TRUE if range is restricted to the fill level.
	 */
	public int getRestrictToFillLevel()
	{
		// gboolean gtk_range_get_restrict_to_fill_level  (GtkRange *range);
		return gtk_range_get_restrict_to_fill_level(gtkRange);
	}
	
	/**
	 * Gets whether the range displays the fill level graphically.
	 * Since 2.12
	 * Returns: TRUE if range shows the fill level.
	 */
	public int getShowFillLevel()
	{
		// gboolean gtk_range_get_show_fill_level (GtkRange *range);
		return gtk_range_get_show_fill_level(gtkRange);
	}
	
	/**
	 * Set the new position of the fill level indicator.
	 * The "fill level" is probably best described by its most prominent
	 * use case, which is an indicator for the amount of pre-buffering in
	 * a streaming media player. In that use case, the value of the range
	 * would indicate the current play position, and the fill level would
	 * be the position up to which the file/stream has been downloaded.
	 * This amount of prebuffering can be displayed on the range's trough
	 * and is themeable separately from the trough. To enable fill level
	 * display, use gtk_range_set_show_fill_level(). The range defaults
	 * to not showing the fill level.
	 * Additionally, it's possible to restrict the range's slider position
	 * to values which are smaller than the fill level. This is controller
	 * by gtk_range_set_restrict_to_fill_level() and is by default
	 * enabled.
	 * Since 2.12
	 * Params:
	 * fillLevel =  the new position of the fill level indicator
	 */
	public void setFillLevel(double fillLevel)
	{
		// void gtk_range_set_fill_level (GtkRange *range,  gdouble fill_level);
		gtk_range_set_fill_level(gtkRange, fillLevel);
	}
	
	/**
	 * Sets whether the slider is restricted to the fill level. See
	 * gtk_range_set_fill_level() for a general description of the fill
	 * level concept.
	 * Since 2.12
	 * Params:
	 * restrictToFillLevel =  Whether the fill level restricts slider movement.
	 */
	public void setRestrictToFillLevel(int restrictToFillLevel)
	{
		// void gtk_range_set_restrict_to_fill_level  (GtkRange *range,  gboolean restrict_to_fill_level);
		gtk_range_set_restrict_to_fill_level(gtkRange, restrictToFillLevel);
	}
	
	/**
	 * Sets whether a graphical fill level is show on the trough. See
	 * gtk_range_set_fill_level() for a general description of the fill
	 * level concept.
	 * Since 2.12
	 * Params:
	 * showFillLevel =  Whether a fill level indicator graphics is shown.
	 */
	public void setShowFillLevel(int showFillLevel)
	{
		// void gtk_range_set_show_fill_level (GtkRange *range,  gboolean show_fill_level);
		gtk_range_set_show_fill_level(gtkRange, showFillLevel);
	}
	
	/**
	 * Get the GtkAdjustment which is the "model" object for GtkRange.
	 * See gtk_range_set_adjustment() for details.
	 * The return value does not have a reference added, so should not
	 * be unreferenced.
	 * Returns: a GtkAdjustment
	 */
	public Adjustment getAdjustment()
	{
		// GtkAdjustment* gtk_range_get_adjustment (GtkRange *range);
		auto p = gtk_range_get_adjustment(gtkRange);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new Adjustment(cast(GtkAdjustment*) p);
	}
	
	/**
	 * Sets the update policy for the range. GTK_UPDATE_CONTINUOUS means that
	 * anytime the range slider is moved, the range value will change and the
	 * value_changed signal will be emitted. GTK_UPDATE_DELAYED means that
	 * the value will be updated after a brief timeout where no slider motion
	 * occurs, so updates are spaced by a short time rather than
	 * continuous. GTK_UPDATE_DISCONTINUOUS means that the value will only
	 * be updated when the user releases the button and ends the slider
	 * drag operation.
	 * Params:
	 * policy =  update policy
	 */
	public void setUpdatePolicy(GtkUpdateType policy)
	{
		// void gtk_range_set_update_policy (GtkRange *range,  GtkUpdateType policy);
		gtk_range_set_update_policy(gtkRange, policy);
	}
	
	/**
	 * Sets the adjustment to be used as the "model" object for this range
	 * widget. The adjustment indicates the current range value, the
	 * minimum and maximum range values, the step/page increments used
	 * for keybindings and scrolling, and the page size. The page size
	 * is normally 0 for GtkScale and nonzero for GtkScrollbar, and
	 * indicates the size of the visible area of the widget being scrolled.
	 * The page size affects the size of the scrollbar slider.
	 * Params:
	 * adjustment =  a GtkAdjustment
	 */
	public void setAdjustment(Adjustment adjustment)
	{
		// void gtk_range_set_adjustment (GtkRange *range,  GtkAdjustment *adjustment);
		gtk_range_set_adjustment(gtkRange, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
	}
	
	/**
	 * Gets the value set by gtk_range_set_inverted().
	 * Returns: TRUE if the range is inverted
	 */
	public int getInverted()
	{
		// gboolean gtk_range_get_inverted (GtkRange *range);
		return gtk_range_get_inverted(gtkRange);
	}
	
	/**
	 * Ranges normally move from lower to higher values as the
	 * slider moves from top to bottom or left to right. Inverted
	 * ranges have higher values at the top or on the right rather than
	 * on the bottom or left.
	 * Params:
	 * setting =  TRUE to invert the range
	 */
	public void setInverted(int setting)
	{
		// void gtk_range_set_inverted (GtkRange *range,  gboolean setting);
		gtk_range_set_inverted(gtkRange, setting);
	}
	
	/**
	 * Gets the update policy of range. See gtk_range_set_update_policy().
	 * Returns: the current update policy
	 */
	public GtkUpdateType getUpdatePolicy()
	{
		// GtkUpdateType gtk_range_get_update_policy (GtkRange *range);
		return gtk_range_get_update_policy(gtkRange);
	}
	
	/**
	 * Gets the current value of the range.
	 * Returns: current value of the range.
	 */
	public double getValue()
	{
		// gdouble gtk_range_get_value (GtkRange *range);
		return gtk_range_get_value(gtkRange);
	}
	
	/**
	 * Sets the step and page sizes for the range.
	 * The step size is used when the user clicks the GtkScrollbar
	 * arrows or moves GtkScale via arrow keys. The page size
	 * is used for example when moving via Page Up or Page Down keys.
	 * Params:
	 * step =  step size
	 * page =  page size
	 */
	public void setIncrements(double step, double page)
	{
		// void gtk_range_set_increments (GtkRange *range,  gdouble step,  gdouble page);
		gtk_range_set_increments(gtkRange, step, page);
	}
	
	/**
	 * Sets the allowable values in the GtkRange, and clamps the range
	 * value to be between min and max. (If the range has a non-zero
	 * page size, it is clamped between min and max - page-size.)
	 * Params:
	 * min =  minimum range value
	 * max =  maximum range value
	 */
	public void setRange(double min, double max)
	{
		// void gtk_range_set_range (GtkRange *range,  gdouble min,  gdouble max);
		gtk_range_set_range(gtkRange, min, max);
	}
	
	/**
	 * Sets the current value of the range; if the value is outside the
	 * minimum or maximum range values, it will be clamped to fit inside
	 * them. The range emits the "value-changed" signal if the
	 * value changes.
	 * Params:
	 * value =  new value of the range
	 */
	public void setValue(double value)
	{
		// void gtk_range_set_value (GtkRange *range,  gdouble value);
		gtk_range_set_value(gtkRange, value);
	}
	
	/**
	 * Sets the sensitivity policy for the stepper that points to the
	 * 'lower' end of the GtkRange's adjustment.
	 * Since 2.10
	 * Params:
	 * sensitivity =  the lower stepper's sensitivity policy.
	 */
	public void setLowerStepperSensitivity(GtkSensitivityType sensitivity)
	{
		// void gtk_range_set_lower_stepper_sensitivity  (GtkRange *range,  GtkSensitivityType sensitivity);
		gtk_range_set_lower_stepper_sensitivity(gtkRange, sensitivity);
	}
	
	/**
	 * Gets the sensitivity policy for the stepper that points to the
	 * 'lower' end of the GtkRange's adjustment.
	 * Since 2.10
	 * Returns: The lower stepper's sensitivity policy.
	 */
	public GtkSensitivityType getLowerStepperSensitivity()
	{
		// GtkSensitivityType gtk_range_get_lower_stepper_sensitivity  (GtkRange *range);
		return gtk_range_get_lower_stepper_sensitivity(gtkRange);
	}
	
	/**
	 * Sets the sensitivity policy for the stepper that points to the
	 * 'upper' end of the GtkRange's adjustment.
	 * Since 2.10
	 * Params:
	 * sensitivity =  the upper stepper's sensitivity policy.
	 */
	public void setUpperStepperSensitivity(GtkSensitivityType sensitivity)
	{
		// void gtk_range_set_upper_stepper_sensitivity  (GtkRange *range,  GtkSensitivityType sensitivity);
		gtk_range_set_upper_stepper_sensitivity(gtkRange, sensitivity);
	}
	
	/**
	 * Gets the sensitivity policy for the stepper that points to the
	 * 'upper' end of the GtkRange's adjustment.
	 * Since 2.10
	 * Returns: The upper stepper's sensitivity policy.
	 */
	public GtkSensitivityType getUpperStepperSensitivity()
	{
		// GtkSensitivityType gtk_range_get_upper_stepper_sensitivity  (GtkRange *range);
		return gtk_range_get_upper_stepper_sensitivity(gtkRange);
	}
}
