package classes
{
	public class Adapter extends Target
	{
		public function Adapter()
		{
		}
		override public function Request():String
		{
			/* 
				This is where the magic happens - a call to the Request()
				method is mapped to the SpecificRequest() method.
			*/
			var adaptee:Adaptee = new Adaptee();
			return adaptee.SpecificRequest();
		}
	}
}