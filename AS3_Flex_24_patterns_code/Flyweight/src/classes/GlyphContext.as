package classes
{
	import mx.collections.ArrayCollection;
	public class GlyphContext
	{
		public var index:int = 0;
		public var styleTree:ArrayCollection = new ArrayCollection();
		public function GlyphContext()
		{
		}
		public function ResetIndex():void
		{
			index = 0;
		}
		public function Next():void
		{
			index++;
		}
		public function SetColor(color:int, length:int):void
		{
			var obj:Object = new Object();
			obj[length] = color;
			styleTree.addItem(obj);
		}
		
		/*
			This method works out what is the color of the character at the
			current index. It does this by looping over the array of styles
			and keeping the start and end position of the current style.
			If the index falls within these positions, it returns the color
			of the current style.
		*/
		public function GetColor():int
		{
			
			var startpos:int = 0;
			var endpos:int = 0;
			for (var i:int = 0; i < styleTree.length; i++)
			{
				for (var j:Object in styleTree[i])
				{
					endpos += j;
					if (startpos <= index && endpos > index)
					{
						return styleTree[i][j]
					}
					startpos += j;
				}
			}
			return 0x000000;
		}
		
	}
}