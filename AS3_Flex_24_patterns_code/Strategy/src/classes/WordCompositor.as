package classes
{
	import mx.collections.ArrayCollection;
	public class WordCompositor implements Compositor
	{
		public function WordCompositor()
		{
		}
		public function Compose(text:String):String
		{
			/*
				Strip new lines and then add a line break after every nth
				word.
			*/
			var words:int = 4;
			var retval:String = "";
			var wordArray:Array;
			text = text.replace(new RegExp("\r|\n", "ig"), "");
			wordArray = text.split(" ");
			for (var w:int = 0; w < wordArray.length; w++)
			{
				if ((w + 1) % words)
				{
					retval = retval + wordArray[w] + " ";
				}
				else
				{
					retval = retval + wordArray[w] + " \n";
				}
			}
			return retval;
		}
	}
}