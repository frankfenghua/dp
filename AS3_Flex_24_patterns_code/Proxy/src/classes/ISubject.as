package classes
{
	/*
		The Proxy and the RealSubject must implement these methods.
	*/
	public interface ISubject
	{
		function ISubject();
		function Request(name:String, password:String):String;
	}
}