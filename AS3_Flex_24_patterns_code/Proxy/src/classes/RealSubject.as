package classes
{
	public class RealSubject implements ISubject
	{
		public function RealSubject()
		{
		}
		/*
			If this method is being called, the request has got through the
			proxy so we can say "Hello" to the user.
		*/
		public function Request(name:String, password:String):String
		{
			return "Hello, " + name + ".";
		}
	}
}