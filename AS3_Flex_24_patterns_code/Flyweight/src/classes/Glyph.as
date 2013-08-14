package classes
{
	import mx.collections.ArrayCollection;
	import mx.containers.HBox;
	import mx.controls.Text;
	public class Glyph extends HBox
	{
		public function Glyph(chars:ArrayCollection, styles:GlyphContext):void
		{
			for (var i:Object in chars)
			{
				var temp:Text = new Text();
				
				/* 
					Get the character from the object pool. Although
					we don't really need to get it from there, this is
					just to demonstrate the pattern.
				*/
				temp.text = chars[i].char;
				
				temp.setStyle("fontSize", 48);
				
				/*
					Get the color from the GlyphContext
					object, according to its index, which knows
					what character we're at in the document
					because it's incremented below.
				*/
				temp.setStyle("color", styles.GetColor());
				
				addChild(temp);
				
				/*
					Increment the index of the GlyphContext object
					so that it can return the color of the current
					character.
				*/
				styles.Next();
			}
		}
	}
}