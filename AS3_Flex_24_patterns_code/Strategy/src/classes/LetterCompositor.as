package classes
{
	public class LetterCompositor implements Compositor
	{
		public function LetterCompositor()
		{
		}
		public function Compose(text:String):String
		{
			/*
				Strip new lines and then add a line break after every nth
				character.
			*/
			var letters:int = 40;
			var retval:String = "";
			text = text.replace(new RegExp("\r|\n", "ig"), "");
			for (var c:int = 0; c < text.length; c++)
			{
				if ((c + 1) % letters)
				{
					retval = retval + text.charAt(c);
				}
				else
				{
					retval = retval + text.charAt(c) + "\n";
				}
			}
			return retval;
		}
	}
}