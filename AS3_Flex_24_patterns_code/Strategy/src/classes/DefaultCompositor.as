package classes
{
	public class DefaultCompositor implements Compositor
	{
		public function DefaultCompositor()
		{
		}
		public function Compose(text:String):String
		{
			// Just strip the new-lines and return the text.
			return text.replace(new RegExp("\r|\n", "ig"), "");
		}
	}
}