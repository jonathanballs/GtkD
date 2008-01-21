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
 * inFile  = 
 * outPack = pango
 * outFile = PgFontsetSimple
 * strct   = PangoFontsetSimple
 * realStrct=
 * ctorStrct=
 * clss    = PgFontsetSimple
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = PangoFontset
 * implements:
 * prefixes:
 * 	- pango_fontset_simple_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- pango.PgLanguage
 * 	- pango.PgFont
 * 	- pango.PgFontset
 * structWrap:
 * 	- PangoFont* -> PgFont
 * 	- PangoLanguage* -> PgLanguage
 * module aliases:
 * local aliases:
 */

module pango.PgFontsetSimple;

public  import gtkc.pangotypes;

private import gtkc.pango;


private import pango.PgLanguage;
private import pango.PgFont;
private import pango.PgFontset;



private import pango.PgFontset;

/**
 * Description
 * Pango supports a flexible architecture where a
 * particular rendering architecture can supply an
 * implementation of fonts. The PangoFont structure
 * represents an abstract rendering-system-independent font.
 * Pango provides routines to list available fonts, and
 * to load a font of a given description.
 */
public class PgFontsetSimple : PgFontset
{
	
	/** the main Gtk struct */
	protected PangoFontsetSimple* pangoFontsetSimple;
	
	
	public PangoFontsetSimple* getPgFontsetSimpleStruct()
	{
		return pangoFontsetSimple;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoFontsetSimple;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (PangoFontsetSimple* pangoFontsetSimple)
	{
		if(pangoFontsetSimple is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null pangoFontsetSimple passed to constructor.");
			else return;
		}
		super(cast(PangoFontset*)pangoFontsetSimple);
		this.pangoFontsetSimple = pangoFontsetSimple;
	}
	
	/**
	 */
	
	/**
	 * Creates a new PangoFontsetSimple for the given language.
	 * Params:
	 * language =  a PangoLanguage tag
	 */
	public this (PgLanguage language)
	{
		// PangoFontsetSimple* pango_fontset_simple_new (PangoLanguage *language);
		auto p = pango_fontset_simple_new((language is null) ? null : language.getPgLanguageStruct());
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(PangoFontsetSimple*) p);
	}
	
	/**
	 * Adds a font to the fontset.
	 * Params:
	 * font =  a PangoFont.
	 */
	public void append(PgFont font)
	{
		// void pango_fontset_simple_append (PangoFontsetSimple *fontset,  PangoFont *font);
		pango_fontset_simple_append(pangoFontsetSimple, (font is null) ? null : font.getPgFontStruct());
	}
	
	/**
	 * Returns the number of fonts in the fontset.
	 * Returns: the size of fontset.
	 */
	public int size()
	{
		// int pango_fontset_simple_size (PangoFontsetSimple *fontset);
		return pango_fontset_simple_size(pangoFontsetSimple);
	}
}
